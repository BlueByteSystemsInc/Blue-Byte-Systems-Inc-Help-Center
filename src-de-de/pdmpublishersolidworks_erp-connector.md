---
title: "Benutzerdefinierten ERP-Konnektor erstellen | PDMPublisher für SOLIDWORKS"
description: "Erstellen, installieren und testen Sie benutzerdefinierte C#-ERP-Konnektoren mit PDMPublisher.ERPExtension.dll."
ms.date: 09/20/2026
ms.topic: how-to
---

# Benutzerdefinierten ERP-Konnektor erstellen

Verwenden Sie den Vertrag in `PDMPublisher.ERPExtension.dll`, um einen Konnektor in C# zu erstellen. Referenzieren Sie die DLL aus derselben PDMPublisher-Version, die den Konnektor laden wird. Kopieren Sie die Vertragstypen nicht in Ihr Projekt und verteilen Sie keine weitere Kopie von `PDMPublisher.ERPExtension.dll` mit dem Konnektor. Der Host stellt sie bereit.

<a id="project-requirements"></a>
## Projektanforderungen

- Erstellen Sie ein C#-Projekt vom Typ **Class Library (.NET Framework)** für **.NET Framework 4.7.2**.
- Erstellen Sie das Projekt für **Any CPU** oder **x64** und verwenden Sie mit C# 7.3 kompatible Syntax.
- Fügen Sie einen Verweis auf `PDMPublisher.ERPExtension.dll` hinzu und setzen Sie **Copy Local** auf `False`.
- Die DLL muss genau eine öffentliche, nicht abstrakte Konnektorklasse mit einem öffentlichen parameterlosen Konstruktor enthalten.
- Leiten Sie neue Konnektoren von `ErpConnector<TSettings>` ab. Direkte Implementierungen von `IErpExtension` werden aus Kompatibilitätsgründen weiterhin unterstützt.
- Legen Sie erforderliche DLLs von Drittanbieterabhängigkeiten neben der Konnektor-DLL ab.
- Speichern Sie niemals Produktionsanmeldeinformationen in Standardeinstellungen und geben Sie keine Geheimnisse in Ergebnismeldungen aus.

<a id="recommended-typed-connector"></a>
## Empfohlener typisierter Konnektor

Die typisierte Basisklasse erstellt den Einstellungseditor aus einer öffentlichen Einstellungsklasse und passt die untergeordneten Schnittstellen automatisch an.

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

`ConnectAsync` wird vor der Synchronisierung für dieselbe Konnektorinstanz aufgerufen. Geben Sie bei erwarteten Authentifizierungs- oder Konfigurationsfehlern `ConnectionResult.Fail(...)` zurück. Der Host wiederholt ERP-Vorgänge nicht automatisch und macht sie nicht rückgängig. `PushResult.Message` muss daher Teiländerungen eindeutig benennen.

<a id="contract-interface"></a>
## Vertragsschnittstelle

`ErpConnector<TSettings>` implementiert die Kernschnittstelle. Ein älterer Konnektor kann sie direkt implementieren:

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

Die empfohlene Basisklasse unterstützt außerdem folgende optionale Funktionen:

| Funktion | Implementierung |
| --- | --- |
| Felderkennung | Geben Sie `ErpCapabilities.FieldDiscovery` an und überschreiben Sie `GetFieldsAsync`. Geben Sie stabile ERP-API-Feldnamen für den Zuordnungseditor zurück, ohne ERP-Daten zu ändern. |
| ERP-generierte Nummern | Geben Sie `ErpCapabilities.PartNumberGeneration` an, überschreiben Sie `GetGeneratedPartNumberProperty` und geben Sie bestätigte `GeneratedPartNumber`-Einträge in `PushResult` zurück. |
| Selektive Synchronisierung | Geben Sie `ErpCapabilities.SelectiveSync` an und beachten Sie `ErpSyncOptions.SyncProperties` und `CreateItems`. |
| Stücklistensynchronisierung | Geben Sie `ErpCapabilities.BomSync` an und verarbeiten Sie nur die ausdrücklichen Beziehungen in `ModelDocData.Boms`, wenn `SyncBom` ausgewählt ist. |
| Auswahl der Quellspalte | Kennzeichnen Sie eine Einstellungseigenschaft mit `[ErpSourceColumn]`. |
| Editor für Eigenschaftszuordnungen | Verwenden Sie `List<PropertyMapping>` und kennzeichnen Sie sie mit `[ErpPropertyMappings]`. |
| Bereinigung | Überschreiben Sie `Dispose()`, um HTTP-Clients oder andere dem Konnektor gehörende Ressourcen freizugeben. |

<a id="data-supplied-to-the-connector"></a>
## Dem Konnektor bereitgestellte Daten

`ModelDocData` ist eine getrennte Momentaufnahme. Wichtige Elemente sind:

- `Title`, `PathName`, `ActiveConfiguration`, `DocumentType`, `Mass` und `Material`.
- `CustomProperties` enthält Dokumenteigenschaften, die mit den Eigenschaften der aktiven Konfiguration zusammengeführt wurden.
- `Components` enthält nur aktivierte Zeilen im angeforderten Synchronisierungsbereich. Jedes `ComponentData` enthält Quellidentität, Dateipfad, optionale PNG-Miniaturansicht, Artikelnummer, Hierarchieebene, Name, Konfiguration, ganzzahlige Menge und verfügbare Spalten- oder Eigenschaftswerte.
- `Boms` enthält aktivierte übergeordnete Baugruppen und deren aktivierte direkte untergeordnete Elemente. Stücklistenzeilenmengen sind Dezimalwerte und unabhängig von der aggregierten Zeilenmenge.

Push-Vorgänge werden in einem Arbeitsthread ausgeführt, nachdem der Host die SOLIDWORKS-Daten im UI-Thread erfasst hat. Greifen Sie nicht auf SOLIDWORKS-COM-Objekte zu, setzen Sie keinen Synchronisierungskontext voraus, leiten Sie keine nicht aktivierten untergeordneten Elemente ab und blockieren Sie die Benutzeroberfläche nicht.

<a id="build-and-load-the-dll"></a>
## DLL erstellen und laden

1. Erstellen Sie den Konnektor in der Konfiguration **Release**.
2. Legen Sie Abhängigkeits-DLLs und optionale Konnektormetadaten neben der Haupt-DLL des Konnektors ab. Schließen Sie `PDMPublisher.ERPExtension.dll` nicht ein.
3. Öffnen Sie in SOLIDWORKS **PDMPublisher > Settings > ERP Sync > ERP connector settings**.
4. Wählen Sie **Add new...**, wählen Sie die Konnektor-DLL aus und prüfen Sie, ob ihr Name unter **Custom** angezeigt wird.
5. Geben Sie die Einstellungen ein, wählen Sie **Test connection** und anschließend **Save**.
6. Öffnen Sie ERP Sync und testen Sie ein kleines Dokument außerhalb der Produktion, bevor Sie Artikelerstellung oder Stücklistensynchronisierung für Produktionsdaten aktivieren.

Beim Laden eines Konnektors wird Drittanbietercode im SOLIDWORKS-Prozess ausgeführt. Installieren Sie nur Konnektoren aus vertrauenswürdigen Quellen.
