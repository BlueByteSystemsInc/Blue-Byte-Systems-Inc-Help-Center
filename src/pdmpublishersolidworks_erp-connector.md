---
title: Create a Custom ERP Connector | PDMPublisher for SOLIDWORKS
description: Build, install, and test custom C# ERP connectors using PDMPublisher.ERPExtension.dll.
ms.date: 09/20/2026
ms.topic: how-to
---

# Create a Custom ERP Connector

Use the contract in `PDMPublisher.ERPExtension.dll` to create a connector in C#. Reference the DLL from the same PDMPublisher release that will load the connector. Do not copy the contract types into your project, and do not distribute another copy of `PDMPublisher.ERPExtension.dll` with the connector—the host supplies it.

> [!TIP]
> To install the connector supplied by Blue Byte Systems instead of building one, see [ERPNext Connector](pdmpublishersolidworks_erpnext-connector.md).

## Project requirements

- Create a C# **Class Library (.NET Framework)** project targeting **.NET Framework 4.7.2**.
- Build for **Any CPU** or **x64** and use C# 7.3-compatible syntax.
- Add a reference to `PDMPublisher.ERPExtension.dll`; set **Copy Local** to `False`.
- Put exactly one public, nonabstract connector class with a public parameterless constructor in the DLL.
- Derive from `ErpConnector<TSettings>` for new connectors. Direct `IErpExtension` implementations remain supported for compatibility.
- Keep required third-party dependency DLLs beside the connector DLL.
- Never place production credentials in default settings or include secrets in result messages.

## Recommended typed connector

The typed base class builds the settings editor from a public settings class and adapts the lower-level interfaces automatically.

```csharp
using System.Collections.Generic;
using System.ComponentModel;
using System.Threading.Tasks;
using PDMPublisher.ERPExtension;

public sealed class AcmeErpSettings
{
    [DisplayName("Server URL"), Category("Connection")]
    public string ServerUrl { get; set; } = "";

    [DisplayName("API token"), Category("Connection"), PasswordPropertyText(true)]
    public string ApiToken { get; set; } = "";

    [DisplayName("Timeout (seconds)"), Category("Connection")]
    public int TimeoutSeconds { get; set; } = 60;

    [DisplayName("Property mappings"), Category("Items"), ErpPropertyMappings]
    public List<PropertyMapping> PropertyMappings { get; set; }
        = new List<PropertyMapping>();
}

public sealed class AcmeErpConnector : ErpConnector<AcmeErpSettings>
{
    public override string Id => "com.acme.erp";
    public override string DisplayName => "Acme ERP";

    public override ErpCapabilities Capabilities =>
        ErpCapabilities.SelectiveSync | ErpCapabilities.BomSync;

    public override async Task<ConnectionResult> ConnectAsync(
        AcmeErpSettings settings)
    {
        bool connected = await ConnectToServerAsync(settings);
        return connected
            ? ConnectionResult.Ok()
            : ConnectionResult.Fail("The ERP connection could not be established.");
    }

    public override async Task<PushResult> SyncAsync(
        ModelDocData data, ErpSyncOptions options)
    {
        // Operate only on data.Components and data.Boms supplied by the host.
        // Respect options.SyncProperties, options.CreateItems, and options.SyncBom.
        await SendSelectedRowsAsync(data, options);
        return PushResult.Ok();
    }

    private Task<bool> ConnectToServerAsync(AcmeErpSettings settings)
        => Task.FromResult(true); // Replace with the ERP API call.

    private Task SendSelectedRowsAsync(ModelDocData data, ErpSyncOptions options)
        => Task.CompletedTask; // Replace with item, property, and BOM API calls.
}
```

`ConnectAsync` is called before synchronization on the same connector instance. Return `ConnectionResult.Fail(...)` for expected authentication or configuration failures. The host does not automatically retry or roll back ERP operations, so `PushResult.Message` must identify partial changes clearly.

## Contract interface

`ErpConnector<TSettings>` implements the core interface for you. A legacy connector can implement it directly:

```csharp
public interface IErpExtension
{
    string Id { get; }
    string DisplayName { get; }
    Dictionary<string, object> GetDefaultSettings();
    Task<ConnectionResult> ConnectAsync(Dictionary<string, object> settings);
    Task<PushResult> PushToErpAsync(ModelDocData modelData);
}
```

The recommended base class also supports these optional capabilities:

| Capability | Implementation |
| --- | --- |
| Field discovery | Advertise `ErpCapabilities.FieldDiscovery` and override `GetFieldsAsync`. Return stable ERP API field names for the mapping editor without modifying ERP data. |
| ERP-generated numbers | Advertise `ErpCapabilities.PartNumberGeneration`, override `GetGeneratedPartNumberProperty`, and return confirmed `GeneratedPartNumber` entries in `PushResult`. |
| Selective synchronization | Advertise `ErpCapabilities.SelectiveSync` and respect `ErpSyncOptions.SyncProperties` and `CreateItems`. |
| BOM synchronization | Advertise `ErpCapabilities.BomSync` and process only the explicit relationships in `ModelDocData.Boms` when `SyncBom` is selected. |
| Source-column picker | Mark a settings property with `[ErpSourceColumn]`. |
| Property-mapping editor | Use `List<PropertyMapping>` and mark it with `[ErpPropertyMappings]`. |
| Cleanup | Override `Dispose()` to release HTTP clients or other connector-owned resources. |

## Data supplied to the connector

`ModelDocData` is a detached snapshot. Important members include:

- `Title`, `PathName`, `ActiveConfiguration`, `DocumentType`, `Mass`, and `Material`.
- `CustomProperties`, containing document properties merged with active-configuration properties.
- `Components`, containing only checked rows in the requested synchronization scope. Each `ComponentData` includes its source identity, file path, optional PNG thumbnail, item number, hierarchy level, name, configuration, integer quantity, and available column/property values.
- `Boms`, containing checked parent assemblies and their checked direct children. BOM line quantities are decimal values and are independent from the aggregated row quantity.

Push operations run on a worker thread after the host captures SOLIDWORKS data on the UI thread. Do not access SOLIDWORKS COM objects, assume a synchronization context, infer unchecked children, or block the UI.

## Build and load the DLL

1. Build the connector in **Release** configuration.
2. Place its dependency DLLs and optional connector metadata beside the main connector DLL. Do not include `PDMPublisher.ERPExtension.dll`.
3. In SOLIDWORKS, open **PDMPublisher > Settings > ERP Sync > ERP connector settings**.
4. Select **Add new...**, choose the connector DLL, and confirm that its name appears under **Custom**.
5. Enter its settings, select **Test connection**, and then select **Save**.
6. Open ERP Sync and test a small, non-production document before enabling item creation or BOM synchronization on production data.

Loading a connector executes third-party code inside the SOLIDWORKS process. Install connectors only from a trusted source.
