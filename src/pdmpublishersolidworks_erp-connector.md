---
title: Create a Custom ERP Connector | PDMPublisher for SOLIDWORKS
description: Build, install, and test custom C# ERP connectors using PDMPublisher.ERPExtension.dll.
ms.date: 09/31/2026
ms.topic: how-to
---

# Create a Custom ERP Connector

Use the contract in `PDMPublisher.ERPExtension.dll` to create a connector in C#. Reference the DLL from the same PDMPublisher release that will load the connector. Do not copy the contract types into your project, and do not distribute another copy of `PDMPublisher.ERPExtension.dll` with the connector—the host supplies it.

> [!TIP]
> To install a connector supplied by Blue Byte Systems instead of building one, see [ERPNext Connector](pdmpublishersolidworks_erpnext-connector.md) or [Odoo Connector](pdmpublishersolidworks_odoo-connector.md).

## Project requirements

- Create a C# **Class Library (.NET Framework)** project targeting **.NET Framework 4.7.2**.
- Build for **Any CPU** or **x64** and use C# 7.3-compatible syntax.
- Add a reference to `PDMPublisher.ERPExtension.dll`; set **Copy Local** to `False`.
- Put exactly one public, nonabstract connector class with a public parameterless constructor in the DLL.
- Derive from `ErpConnector<TSettings>` for new connectors. Direct `IErpExtension` implementations remain supported for compatibility.
- Keep required third-party dependency DLLs beside the connector DLL.
- Never place production credentials in default settings or include secrets in result messages.

## What you will build

Build the connector in small, testable stages:

1. Create a .NET Framework class library and reference the contract DLL.
2. Define a settings class. PDMPublisher turns its public properties into the connector-settings form.
3. Derive one connector class from `ErpConnector<TSettings>` and give it a stable identity.
4. Validate settings and authenticate in `ConnectAsync`.
5. Add a read-only Push preview, then commit only the reviewed plan.
6. Add a read-only Pull preview, then validate the same snapshot before PDMPublisher writes to SOLIDWORKS.
7. Build the DLL, load it under **ERP connector settings**, test the connection, and test with non-production data.

The host owns the user interface, encrypted settings storage, selection of SOLIDWORKS rows, diff windows, and local property writes. Your connector owns ERP authentication, ERP reads, ERP writes, remote concurrency checks, and clear results.

## Step 1: Create the project

In Visual Studio, create **Class Library (.NET Framework)**—not a .NET or .NET Standard class library. Target **.NET Framework 4.7.2**, select **Any CPU** or **x64**, and set the language version to C# 7.3.

Add a reference to the `PDMPublisher.ERPExtension.dll` installed with the same PDMPublisher release. In the reference properties, set **Copy Local** to `False`. The resulting project file should contain the equivalent of:

```xml
<PropertyGroup>
  <TargetFrameworkVersion>v4.7.2</TargetFrameworkVersion>
  <LangVersion>7.3</LangVersion>
  <PlatformTarget>AnyCPU</PlatformTarget>
</PropertyGroup>
<ItemGroup>
  <Reference Include="PDMPublisher.ERPExtension">
    <HintPath>lib\PDMPublisher.ERPExtension.dll</HintPath>
    <Private>False</Private>
  </Reference>
</ItemGroup>
```

Do not copy the contract source into your project. A copied interface has a different CLR identity even when its C# definition looks identical.

## Step 2: Define editable settings

Use ordinary public properties with default values. The standard component-model attributes control the labels, help text, categories, password masking, and mapping editor shown by PDMPublisher.

```csharp
public sealed class AcmeSettings
{
    [DisplayName("Server URL"), Category("Connection")]
    [Description("HTTPS root address of the ERP service.")]
    public string ServerUrl { get; set; } = "";

    [DisplayName("API token"), Category("Connection")]
    [PasswordPropertyText(true)]
    public string ApiToken { get; set; } = "";

    [DisplayName("Item code column"), Category("Items")]
    [ErpSourceColumn]
    public string ItemCodeProperty { get; set; } = "PartNumber";

    [DisplayName("Property mappings"), Category("Items")]
    [ErpPropertyMappings]
    public List<PropertyMapping> PropertyMappings { get; set; }
        = new List<PropertyMapping>();
}
```

`PropertyMapping.Source` is the SOLIDWORKS property or ERP Sync column. `PropertyMapping.Target` is the stable ERP API field name. Keep settings-property names stable after release so saved configurations can still be loaded.

## Step 3: Implement connection and capabilities

Use a vendor-qualified, permanent `Id`. `DisplayName` is the friendly name shown to users. Advertise only capabilities that the class actually implements.

```csharp
public sealed class AcmeConnector : ErpConnector<AcmeSettings>,
    IErpSyncPreview, IErpPullPreview
{
    public override string Id => "com.acme.erp";
    public override string DisplayName => "Acme ERP";

    public override ErpCapabilities Capabilities =>
        ErpCapabilities.SelectiveSync |
        ErpCapabilities.SyncPreview |
        ErpCapabilities.PullPreview;

    public override async Task<ConnectionResult> ConnectAsync(AcmeSettings settings)
    {
        if (!Uri.TryCreate(settings.ServerUrl, UriKind.Absolute, out var uri)
            || uri.Scheme != Uri.UriSchemeHttps)
            return ConnectionResult.Fail("Enter a valid HTTPS server URL.");
        if (string.IsNullOrWhiteSpace(settings.ApiToken))
            return ConnectionResult.Fail("Enter an API token.");

        // Create and authenticate your HTTP client here. Keep it on this instance.
        return await Task.FromResult(ConnectionResult.Ok("Connected to Acme ERP."));
    }
}
```

PDMPublisher calls `ConnectAsync` before Preview, Commit, or Pull on the same connector instance. Return expected configuration and authentication problems as `ConnectionResult.Fail(...)`; do not include tokens, passwords, response headers, or secrets in messages.

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
| Push preview and commit | Implement `IErpSyncPreview` and advertise `ErpCapabilities.SyncPreview`. Preview must be read-only; Commit accepts the same reviewed plan once. |
| Pull with preview | Implement `IErpPullPreview` and advertise `ErpCapabilities.PullPreview`. Return a read-only plan, then revalidate that exact plan before the host writes locally. |
| Source-column picker | Mark a settings property with `[ErpSourceColumn]`. |
| Property-mapping editor | Use `List<PropertyMapping>` and mark it with `[ErpPropertyMappings]`. |
| Cleanup | Override `Dispose()` to release HTTP clients or other connector-owned resources. |

## Add Pull-with-preview support

Pull connectors implement the optional interface below. `PreviewPullAsync` reads ERP values but must not write to ERP, reserve numbers, or change SOLIDWORKS. `ValidatePullAsync` must re-read or otherwise verify the exact issued plan immediately before local changes are applied.

```csharp
public interface IErpPullPreview
{
    Task<ErpPullPlan> PreviewPullAsync(ModelDocData data);
    Task<bool> ValidatePullAsync(ErpPullPlan plan);
}
```

Return one `ErpPullProperty` for each mapped field and input row. Preserve the one-based `ItemNumber` and `SourceIdentity` supplied by the host. Set `IdentityProperty` to the SOLIDWORKS property or supported built-in column used to match the ERP item. Each result identifies the destination `Property`, source `ErpField`, invariant-text `Value`, and optional `SkipReason`.

A missing or null ERP value should be skipped. An explicit empty string can clear a custom property unless the connector's settings say to skip empty values. The host independently rejects built-in or calculated destinations and changes to the item-matching property. Validation must reject stale, foreign, or previously consumed plans and must never write to ERP. The host owns the diff, final local rechecks, SOLIDWORKS property writes, and document save flags.

## Step 4: Study a complete connector

The following learning connector compiles against the contract and demonstrates typed settings, connection validation, reviewed Push, legacy Push compatibility, Pull preview, and stale-data validation. It uses an in-memory dictionary in place of a real ERP so the lifecycle is easy to follow. Replace `DemoErpStore.Read` and `DemoErpStore.Write` with authenticated HTTP calls and retain the same preview/commit boundaries.

```csharp
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;
using PDMPublisher.ERPExtension;

public sealed class DemoSettings
{
    [DisplayName("Tenant"), Category("Connection")]
    public string Tenant { get; set; } = "training";

    [DisplayName("API token"), Category("Connection"), PasswordPropertyText(true)]
    public string ApiToken { get; set; } = "";

    [DisplayName("Item code column"), Category("Items"), ErpSourceColumn]
    public string ItemCodeProperty { get; set; } = "PartNumber";

    [DisplayName("Property mappings"), Category("Items"), ErpPropertyMappings]
    public List<PropertyMapping> PropertyMappings { get; set; }
        = new List<PropertyMapping>
        {
            new PropertyMapping { Source = "Description", Target = "description" },
            new PropertyMapping { Source = "Material", Target = "material" }
        };
}

public sealed class DemoConnector : ErpConnector<DemoSettings>,
    IErpSyncPreview, IErpPullPreview
{
    private DemoSettings settings;
    private ErpSyncPlan pendingPush;
    private List<PendingWrite> pendingWrites;
    private ErpPullPlan pendingPull;
    private Dictionary<string, string> pendingPullReads;

    public override string Id => "com.example.training";
    public override string DisplayName => "Training ERP connector";
    public override ErpCapabilities Capabilities =>
        ErpCapabilities.SelectiveSync |
        ErpCapabilities.SyncPreview |
        ErpCapabilities.PullPreview;

    public override Task<ConnectionResult> ConnectAsync(DemoSettings value)
    {
        if (string.IsNullOrWhiteSpace(value.Tenant))
            return Task.FromResult(ConnectionResult.Fail("Enter a tenant."));
        if (string.IsNullOrWhiteSpace(value.ApiToken))
            return Task.FromResult(ConnectionResult.Fail("Enter an API token."));
        settings = value;
        return Task.FromResult(ConnectionResult.Ok("Connected."));
    }

    // Compatibility for API clients that still call SyncAsync directly.
    public override async Task<PushResult> SyncAsync(
        ModelDocData data, ErpSyncOptions options)
    {
        var plan = await PreviewSyncAsync(data, options);
        return await CommitSyncAsync(plan);
    }

    public Task<ErpSyncPlan> PreviewSyncAsync(
        ModelDocData data, ErpSyncOptions options)
    {
        RequireConnection();
        if (options.SyncBom)
            throw new NotSupportedException("This training connector does not support BOM sync.");
        var changes = new List<ErpSyncChange>();
        var writes = new List<PendingWrite>();

        foreach (var row in data.Components)
        {
            var itemCode = Value(row, settings.ItemCodeProperty);
            if (string.IsNullOrWhiteSpace(itemCode))
            {
                changes.Add(new ErpSyncChange("Items", row.Name2, "item_code",
                    "Skipped", null, "Missing item code."));
                continue;
            }

            foreach (var map in settings.PropertyMappings)
            {
                var proposed = Value(row, map.Source);
                var current = DemoErpStore.Read(settings.Tenant, itemCode, map.Target);
                var action = current == proposed ? "Unchanged"
                    : current == null ? "Create" : "Update";
                changes.Add(new ErpSyncChange("Properties", itemCode,
                    map.Target, action, current, proposed));
                if (action != "Unchanged" && options.SyncProperties)
                    writes.Add(new PendingWrite(itemCode, map.Target, proposed));
            }
        }

        pendingWrites = writes;
        pendingPush = new ErpSyncPlan(Guid.NewGuid().ToString("N"), changes);
        return Task.FromResult(pendingPush);
    }

    public Task<PushResult> CommitSyncAsync(ErpSyncPlan plan)
    {
        if (!ReferenceEquals(plan, pendingPush) || pendingWrites == null)
            return Task.FromResult(PushResult.Fail("The reviewed plan is stale."));

        var writes = pendingWrites;
        pendingPush = null;       // Consume before the first write.
        pendingWrites = null;
        foreach (var write in writes)
            DemoErpStore.Write(settings.Tenant, write.Item, write.Field, write.Value);
        return Task.FromResult(PushResult.Ok(writes.Count + " values written."));
    }

    public Task<ErpPullPlan> PreviewPullAsync(ModelDocData data)
    {
        RequireConnection();
        var values = new List<ErpPullProperty>();
        var reads = new Dictionary<string, string>();

        foreach (var row in data.Components)
        {
            var itemCode = Value(row, settings.ItemCodeProperty);
            foreach (var map in settings.PropertyMappings)
            {
                var key = Key(itemCode, map.Target);
                var value = string.IsNullOrWhiteSpace(itemCode)
                    ? null : DemoErpStore.Read(settings.Tenant, itemCode, map.Target);
                var reason = string.IsNullOrWhiteSpace(itemCode) ? "Missing item code."
                    : value == null ? "ERP field is missing; local value retained." : null;
                reads[key] = value;
                values.Add(new ErpPullProperty(row.ItemNumber, row.SourceIdentity,
                    itemCode, map.Source, map.Target, value, reason));
            }
        }

        pendingPullReads = reads;
        pendingPull = new ErpPullPlan(Guid.NewGuid().ToString("N"),
            settings.ItemCodeProperty, values);
        return Task.FromResult(pendingPull);
    }

    public Task<bool> ValidatePullAsync(ErpPullPlan plan)
    {
        if (!ReferenceEquals(plan, pendingPull) || pendingPullReads == null)
            return Task.FromResult(false);
        var reads = pendingPullReads;
        pendingPull = null;       // A plan is single-use, even if validation fails.
        pendingPullReads = null;
        var valid = reads.All(pair =>
        {
            var parts = pair.Key.Split('\0');
            return DemoErpStore.Read(settings.Tenant, parts[0], parts[1]) == pair.Value;
        });
        return Task.FromResult(valid);
    }

    private void RequireConnection()
    {
        if (settings == null) throw new InvalidOperationException("Connect first.");
    }

    private static string Value(ComponentData row, string name)
    {
        return row.CustomProperties.TryGetValue(name ?? "", out var value)
            ? value : null;
    }

    private static string Key(string item, string field) =>
        (item ?? "") + "\0" + (field ?? "");

    private sealed class PendingWrite
    {
        public string Item, Field, Value;
        public PendingWrite(string item, string field, string value)
        { Item = item; Field = field; Value = value; }
    }
}

internal static class DemoErpStore
{
    private static readonly ConcurrentDictionary<string, string> Values
        = new ConcurrentDictionary<string, string>();

    public static string Read(string tenant, string item, string field)
    {
        Values.TryGetValue(tenant + "|" + item + "|" + field, out var value);
        return value;
    }

    public static void Write(string tenant, string item, string field, string value)
    {
        Values[tenant + "|" + item + "|" + field] = value ?? "";
    }
}
```

This example deliberately omits item creation, BOM synchronization, field discovery, generated part numbers, retries, and real authentication. Do not advertise those capabilities until you implement and test them. For a production REST connector, retain an authenticated `HttpClient` on the connector instance, use cancellation/timeouts in every request, keep authoritative preview data private, and dispose owned resources in `Dispose()`.

## Step 5: Replace the demo store with your ERP API

Work outward from the complete example:

1. Replace `DemoErpStore.Read` with a GET or query that returns one stable ERP value.
2. Replace `DemoErpStore.Write` with the smallest supported create/update request.
3. Capture record versions, timestamps, ETags, or canonical response values during preview.
4. Re-read those preconditions before Commit or Pull validation. Reject a stale plan before the first write.
5. Return an `ErpItemResult` for every checked row and explain partial success in `PushResult.Message`.
6. Add one capability at a time and test it before advertising its flag.

Never make writes in `PreviewSyncAsync` or `PreviewPullAsync`. Never reuse a plan after Commit or validation. Do not retry an uncertain write automatically; the ERP may have accepted it even when the response was lost.

## Data supplied to the connector

`ModelDocData` is a detached snapshot. Important members include:

- `Title`, `PathName`, `ActiveConfiguration`, `DocumentType`, `Mass`, and `Material`.
- `CustomProperties`, containing document properties merged with active-configuration properties.
- `Components`, containing only checked rows in the requested synchronization scope. Each `ComponentData` includes its source identity, file path, optional PNG thumbnail, item number, hierarchy level, name, configuration, integer quantity, and available column/property values.
- `Boms`, containing checked parent assemblies and their checked direct children. BOM line quantities are decimal values and are independent from the aggregated row quantity.

Push operations run on a worker thread after the host captures SOLIDWORKS data on the UI thread. Do not access SOLIDWORKS COM objects, assume a synchronization context, infer unchecked children, or block the UI.

## Step 6: Build and load the DLL

1. Select **Release** and build the project. Resolve every compiler warning that affects null values, asynchronous calls, or undisposed network resources.
2. Open the output folder and confirm that it contains your connector DLL and required third-party dependency DLLs.
3. Remove `PDMPublisher.ERPExtension.dll` from the package. The host supplies the correct contract assembly.
4. Close and reopen SOLIDWORKS before replacing any connector DLL that was previously loaded.
5. Open **PDMPublisher > Settings > ERP Sync > ERP connector settings**.
6. Select **Add new...**, choose the main connector DLL, and confirm that its name appears under **Custom**.
7. Enter settings and select **Test connection**. Fix connection errors before continuing.
8. Select **Save**, open ERP Sync, and choose a small non-production document.
9. Test preview and **Cancel** first. Confirm that neither ERP nor SOLIDWORKS changed.
10. Test Commit or **Apply to SOLIDWORKS**, verify every reported result in both systems, and save changed documents when required.

## Step 7: Production-readiness checklist

Before distributing the connector, confirm all of the following:

- The DLL contains exactly one public, nonabstract connector class with a public parameterless constructor.
- Every advertised capability has automated tests and a working user flow.
- Preview methods perform no writes and do not reserve numbers.
- Plans are bound to one connected instance, single-use, and rejected when stale or foreign.
- Commit validates remote preconditions before the first write and never silently broadens the reviewed scope.
- The connector operates only on `data.Components`, `data.Boms`, and the requested `ErpSyncOptions`; it never infers unchecked rows.
- Timeouts, authentication failures, rate limits, duplicate records, missing fields, and partial failures produce useful messages without secrets.
- Uncertain writes are not retried automatically.
- `Dispose()` releases owned HTTP clients, streams, and other resources.
- The connector works on a clean test computer with only the packaged dependency DLLs beside it.

## Troubleshooting

| Symptom | Likely cause and correction |
| --- | --- |
| Connector does not appear under **Custom** | Confirm .NET Framework 4.7.2, Any CPU/x64, one public connector class, a public parameterless constructor, and all dependency DLLs. |
| Type-load or contract error | Remove any copied interface code and packaged `PDMPublisher.ERPExtension.dll`; rebuild against the contract from the installed host version. |
| **Test connection** fails | Validate the URL, credentials, TLS certificate, proxy, firewall, permissions, and timeout. Return a safe, specific failure message. |
| Mapping editor is missing | Use `List<PropertyMapping>` and apply `[ErpPropertyMappings]` to that public settings property. |
| Push or Pull button is unavailable | Implement the corresponding preview interface and advertise the matching capability flag. |
| Commit reports a stale plan | ERP data changed after preview, the connector instance changed, or the plan was already consumed. Preview again. |
| Pull skips a property | Check the skip reason. Identity, built-in, calculated, read-only, missing, null, aggregate, phantom, and unloaded targets are protected. |
| Updated DLL remains locked | Close SOLIDWORKS before replacing the connector and its dependencies. |

Loading a connector executes third-party code inside the SOLIDWORKS process. Install connectors only from a trusted source.
