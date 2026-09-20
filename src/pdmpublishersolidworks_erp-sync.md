---
title: ERP Sync | PDMPublisher for SOLIDWORKS
description: Configure ERP Sync, push SOLIDWORKS items, properties, and BOMs, and build custom ERP connectors with PDMPublisher.ERPExtension.dll.
ms.date: 09/20/2026
ms.topic: conceptual
---

# ERP Sync

ERP Sync is enabled in PDMPublisher for SOLIDWORKS. It sends selected SOLIDWORKS document, component, property, and BOM data to an ERP system through an installed ERP connector.

Open **PDMPublisher > ERP Sync** to review and push the active document. Open **PDMPublisher > Settings > ERP Sync** to choose the connector and configure the default BOM view.

> [!NOTE]
> ERP Sync currently supports **Push**. **Pull** is visible in the window but remains disabled until a pull contract is implemented.

## Configure ERP Sync

![ERP Sync settings in PDMPublisher for SOLIDWORKS](/images/pdmpublisher/solidworks/erp-sync-settings-20260920.png)

The settings page contains:

| Setting | Description |
| --- | --- |
| ERP connector | Selects the connector used by ERP Sync. Open the connector settings from the adjacent connector command. |
| Default column template | Selects the BOM Manager column template used when the ERP Sync window opens. The selected columns also provide available values to the connector. |
| Default BOM display type | Selects the initial **Parts only**, **Top-level only**, or indented BOM view. |
| Group by | Groups displayed rows by text, a property, or a supported placeholder. Leave it empty for a flat list. |
| Ignore Components | Opens conditions that exclude matching components from the ERP Sync view. |
| Find text | Filters the displayed rows by text. |
| Item types | Limits the kinds of rows included in the view. |

Select **OK** to save the defaults. These settings are independent from BOM Manager settings.

## Install and configure a connector

![ERP connector catalog and settings](/images/pdmpublisher/solidworks/erp-connector-settings-20260920.png)

1. Open **Settings > ERP Sync**, and open **ERP connector settings**.
2. Select an official connector and choose **Download**, or choose **Add new...** to browse to a custom connector DLL.
3. Select the installed connector. Its settings appear in the lower property grid.
4. Enter the server URL, credentials, mappings, and other connector-specific values.
5. Choose **Test connection**. Correct any reported authentication, URL, or mapping problem.
6. Choose **Save** to make that connector active.

Connector settings are saved separately for each connector and encrypted for the current Windows user. Restart SOLIDWORKS before replacing a connector DLL that has already been loaded.

## Push document data

![ERP Sync window with selected assembly rows](/images/pdmpublisher/solidworks/erp-sync-window-20260920.png)

1. Open or activate a saved SOLIDWORKS part, assembly, or drawing.
2. Select **PDMPublisher > ERP Sync**.
3. Select a BOM type and column template. Use **Columns**, **Group by**, **Find**, **Ignore Components**, and **Refresh** to prepare the view.
4. Select the checkbox beside every row to include. Only checked, currently displayed rows are sent. Expand collapsed branches before pushing an indented BOM.
5. Select the active connector at the bottom of the window.
6. Open the arrow beside **Push** and select the required operations.
7. Select **Push**, review the result, and correct any failed item or BOM reported by the connector.

![ERP Sync Push operation choices](/images/pdmpublisher/solidworks/erp-sync-options-20260920.png)

| Operation | Result |
| --- | --- |
| Properties | Updates mapped properties for existing ERP items. |
| Create items + properties | Creates missing ERP items and sends their mapped properties. Item creation includes property synchronization. |
| BOM | Sends the explicitly selected parent-and-direct-child BOM relationships. The connector must advertise BOM support. |
| Include cut-list items | Includes supported cut-list rows in the snapshot. |

The snapshot contains plain data captured from SOLIDWORKS; a connector does not receive SOLIDWORKS COM objects. Root custom properties are merged with active-configuration properties, and configuration values take precedence. Mass is supplied in kilograms.

## Create a custom ERP connector

Use the contract in `PDMPublisher.ERPExtension.dll` to create a connector in C#. Reference the DLL from the same PDMPublisher release that will load the connector. Do not copy the contract types into your project, and do not distribute another copy of `PDMPublisher.ERPExtension.dll` with the connector—the host supplies it.

### Project requirements

- Create a C# **Class Library (.NET Framework)** project targeting **.NET Framework 4.7.2**.
- Build for **Any CPU** or **x64** and use C# 7.3-compatible syntax.
- Add a reference to `PDMPublisher.ERPExtension.dll`; set **Copy Local** to `False`.
- Put exactly one public, nonabstract connector class with a public parameterless constructor in the DLL.
- Derive from `ErpConnector<TSettings>` for new connectors. Direct `IErpExtension` implementations remain supported for compatibility.
- Keep required third-party dependency DLLs beside the connector DLL.
- Never place production credentials in default settings or include secrets in result messages.

### Recommended typed connector

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

### Contract interface

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

### Data supplied to the connector

`ModelDocData` is a detached snapshot. Important members include:

- `Title`, `PathName`, `ActiveConfiguration`, `DocumentType`, `Mass`, and `Material`.
- `CustomProperties`, containing document properties merged with active-configuration properties.
- `Components`, containing only checked rows in the requested synchronization scope. Each `ComponentData` includes its source identity, file path, optional PNG thumbnail, item number, hierarchy level, name, configuration, integer quantity, and available column/property values.
- `Boms`, containing checked parent assemblies and their checked direct children. BOM line quantities are decimal values and are independent from the aggregated row quantity.

Push operations run on a worker thread after the host captures SOLIDWORKS data on the UI thread. Do not access SOLIDWORKS COM objects, assume a synchronization context, infer unchecked children, or block the UI.

### Build and load the DLL

1. Build the connector in **Release** configuration.
2. Place its dependency DLLs and optional connector metadata beside the main connector DLL. Do not include `PDMPublisher.ERPExtension.dll`.
3. In SOLIDWORKS, open **PDMPublisher > Settings > ERP Sync > ERP connector settings**.
4. Select **Add new...**, choose the connector DLL, and confirm that its name appears under **Custom**.
5. Enter its settings, select **Test connection**, and then select **Save**.
6. Open ERP Sync and test a small, non-production document before enabling item creation or BOM synchronization on production data.

Loading a connector executes third-party code inside the SOLIDWORKS process. Install connectors only from a trusted source.
