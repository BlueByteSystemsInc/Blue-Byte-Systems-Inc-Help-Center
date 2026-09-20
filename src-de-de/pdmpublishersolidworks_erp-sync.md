---
title: "ERP Sync | PDMPublisher für SOLIDWORKS"
description: "Konfigurieren Sie ERP Sync, übertragen Sie SOLIDWORKS-Artikel, Eigenschaften und Stücklisten und erstellen Sie benutzerdefinierte ERP-Konnektoren mit PDMPublisher.ERPExtension.dll."
ms.date: 09/20/2026
ms.topic: conceptual
---

# ERP Sync

ERP Sync ist in PDMPublisher für SOLIDWORKS aktiviert. Die Funktion sendet ausgewählte SOLIDWORKS-Dokument-, Komponenten-, Eigenschafts- und Stücklistendaten über einen installierten ERP-Konnektor an ein ERP-System.

Öffnen Sie **PDMPublisher > ERP Sync**, um das aktive Dokument zu prüfen und zu übertragen. Öffnen Sie **PDMPublisher > Settings > ERP Sync**, um den Konnektor auszuwählen und die Standard-Stücklistenansicht zu konfigurieren.

> [!NOTE]
> ERP Sync unterstützt derzeit **Push**. **Pull** ist im Fenster sichtbar, bleibt jedoch deaktiviert, bis ein Pull-Vertrag implementiert ist.

<a id="configure-erp-sync"></a>
## ERP Sync konfigurieren

![ERP Sync-Einstellungen in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-settings-20260920.png)

Die Einstellungsseite enthält:

| Einstellung | Beschreibung |
| --- | --- |
| ERP connector | Wählt den von ERP Sync verwendeten Konnektor aus. Öffnen Sie die Konnektoreinstellungen über den benachbarten Konnektorbefehl. |
| Default column template | Wählt die BOM Manager-Spaltenvorlage aus, die beim Öffnen des ERP Sync-Fensters verwendet wird. Die ausgewählten Spalten stellen dem Konnektor außerdem verfügbare Werte bereit. |
| Default BOM display type | Wählt die anfängliche Ansicht **Parts only**, **Top-level only** oder eine eingerückte Stücklistenansicht aus. |
| Group by | Gruppiert die angezeigten Zeilen nach Text, einer Eigenschaft oder einem unterstützten Platzhalter. Lassen Sie das Feld für eine flache Liste leer. |
| Ignore Components | Öffnet Bedingungen, die übereinstimmende Komponenten aus der ERP Sync-Ansicht ausschließen. |
| Find text | Filtert die angezeigten Zeilen nach Text. |
| Item types | Begrenzt die in der Ansicht enthaltenen Zeilentypen. |

Wählen Sie **OK**, um die Standardwerte zu speichern. Diese Einstellungen sind von den BOM Manager-Einstellungen unabhängig.

<a id="install-and-configure-a-connector"></a>
## Konnektor installieren und konfigurieren

![ERP-Konnektorkatalog und Einstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-connector-settings-20260920.png)

1. Öffnen Sie **Settings > ERP Sync** und anschließend **ERP connector settings**.
2. Wählen Sie einen offiziellen Konnektor und dann **Download**, oder wählen Sie **Add new...**, um eine benutzerdefinierte Konnektor-DLL auszuwählen.
3. Wählen Sie den installierten Konnektor aus. Seine Einstellungen werden im unteren Eigenschaftenraster angezeigt.
4. Geben Sie Server-URL, Anmeldeinformationen, Zuordnungen und weitere konnektorspezifische Werte ein.
5. Wählen Sie **Test connection**. Beheben Sie alle gemeldeten Authentifizierungs-, URL- oder Zuordnungsprobleme.
6. Wählen Sie **Save**, um diesen Konnektor zu aktivieren.

Konnektoreinstellungen werden für jeden Konnektor getrennt gespeichert und für den aktuellen Windows-Benutzer verschlüsselt. Starten Sie SOLIDWORKS neu, bevor Sie eine bereits geladene Konnektor-DLL ersetzen.

<a id="push-document-data"></a>
## Dokumentdaten übertragen

![ERP Sync-Fenster mit ausgewählten Baugruppenzeilen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-window-20260920.png)

1. Öffnen oder aktivieren Sie ein gespeichertes SOLIDWORKS-Teil, eine Baugruppe oder eine Zeichnung.
2. Wählen Sie **PDMPublisher > ERP Sync**.
3. Wählen Sie einen Stücklistentyp und eine Spaltenvorlage. Bereiten Sie die Ansicht mit **Columns**, **Group by**, **Find**, **Ignore Components** und **Refresh** vor.
4. Aktivieren Sie das Kontrollkästchen neben jeder einzuschließenden Zeile. Nur aktivierte, aktuell angezeigte Zeilen werden gesendet. Erweitern Sie reduzierte Zweige, bevor Sie eine eingerückte Stückliste übertragen.
5. Wählen Sie den aktiven Konnektor am unteren Fensterrand aus.
6. Öffnen Sie den Pfeil neben **Push** und wählen Sie die erforderlichen Vorgänge aus.
7. Wählen Sie **Push**, prüfen Sie das Ergebnis und korrigieren Sie alle vom Konnektor gemeldeten fehlgeschlagenen Artikel oder Stücklisten.

![ERP Sync-Auswahl der Push-Vorgänge](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-options-20260920.png)

| Vorgang | Ergebnis |
| --- | --- |
| Properties | Aktualisiert zugeordnete Eigenschaften vorhandener ERP-Artikel. |
| Create items + properties | Erstellt fehlende ERP-Artikel und sendet deren zugeordnete Eigenschaften. Die Artikelerstellung schließt die Eigenschaftssynchronisierung ein. |
| BOM | Sendet die ausdrücklich ausgewählten Eltern-Kind-Stücklistenbeziehungen. Der Konnektor muss Stücklisten unterstützen. |
| Include cut-list items | Bezieht unterstützte Schnittlistenzeilen in die Momentaufnahme ein. |

Die Momentaufnahme enthält einfache, aus SOLIDWORKS erfasste Daten. Ein Konnektor erhält keine SOLIDWORKS-COM-Objekte. Benutzerdefinierte Eigenschaften des Stammdokuments werden mit den Eigenschaften der aktiven Konfiguration zusammengeführt; Konfigurationswerte haben Vorrang. Die Masse wird in Kilogramm bereitgestellt.

<a id="create-a-custom-erp-connector"></a>
## Benutzerdefinierten ERP-Konnektor erstellen

Verwenden Sie den Vertrag in `PDMPublisher.ERPExtension.dll`, um einen Konnektor in C# zu erstellen. Referenzieren Sie die DLL aus derselben PDMPublisher-Version, die den Konnektor laden wird. Kopieren Sie die Vertragstypen nicht in Ihr Projekt und verteilen Sie keine weitere Kopie von `PDMPublisher.ERPExtension.dll` mit dem Konnektor. Der Host stellt sie bereit.

<a id="project-requirements"></a>
### Projektanforderungen

- Erstellen Sie ein C#-Projekt vom Typ **Class Library (.NET Framework)** für **.NET Framework 4.7.2**.
- Erstellen Sie das Projekt für **Any CPU** oder **x64** und verwenden Sie mit C# 7.3 kompatible Syntax.
- Fügen Sie einen Verweis auf `PDMPublisher.ERPExtension.dll` hinzu und setzen Sie **Copy Local** auf `False`.
- Die DLL muss genau eine öffentliche, nicht abstrakte Konnektorklasse mit einem öffentlichen parameterlosen Konstruktor enthalten.
- Leiten Sie neue Konnektoren von `ErpConnector<TSettings>` ab. Direkte Implementierungen von `IErpExtension` werden aus Kompatibilitätsgründen weiterhin unterstützt.
- Legen Sie erforderliche DLLs von Drittanbieterabhängigkeiten neben der Konnektor-DLL ab.
- Speichern Sie niemals Produktionsanmeldeinformationen in Standardeinstellungen und geben Sie keine Geheimnisse in Ergebnismeldungen aus.

<a id="recommended-typed-connector"></a>
### Empfohlener typisierter Konnektor

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
### Vertragsschnittstelle

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
### Dem Konnektor bereitgestellte Daten

`ModelDocData` ist eine getrennte Momentaufnahme. Wichtige Elemente sind:

- `Title`, `PathName`, `ActiveConfiguration`, `DocumentType`, `Mass` und `Material`.
- `CustomProperties` enthält Dokumenteigenschaften, die mit den Eigenschaften der aktiven Konfiguration zusammengeführt wurden.
- `Components` enthält nur aktivierte Zeilen im angeforderten Synchronisierungsbereich. Jedes `ComponentData` enthält Quellidentität, Dateipfad, optionale PNG-Miniaturansicht, Artikelnummer, Hierarchieebene, Name, Konfiguration, ganzzahlige Menge und verfügbare Spalten- oder Eigenschaftswerte.
- `Boms` enthält aktivierte übergeordnete Baugruppen und deren aktivierte direkte untergeordnete Elemente. Stücklistenzeilenmengen sind Dezimalwerte und unabhängig von der aggregierten Zeilenmenge.

Push-Vorgänge werden in einem Arbeitsthread ausgeführt, nachdem der Host die SOLIDWORKS-Daten im UI-Thread erfasst hat. Greifen Sie nicht auf SOLIDWORKS-COM-Objekte zu, setzen Sie keinen Synchronisierungskontext voraus, leiten Sie keine nicht aktivierten untergeordneten Elemente ab und blockieren Sie die Benutzeroberfläche nicht.

<a id="build-and-load-the-dll"></a>
### DLL erstellen und laden

1. Erstellen Sie den Konnektor in der Konfiguration **Release**.
2. Legen Sie Abhängigkeits-DLLs und optionale Konnektormetadaten neben der Haupt-DLL des Konnektors ab. Schließen Sie `PDMPublisher.ERPExtension.dll` nicht ein.
3. Öffnen Sie in SOLIDWORKS **PDMPublisher > Settings > ERP Sync > ERP connector settings**.
4. Wählen Sie **Add new...**, wählen Sie die Konnektor-DLL aus und prüfen Sie, ob ihr Name unter **Custom** angezeigt wird.
5. Geben Sie die Einstellungen ein, wählen Sie **Test connection** und anschließend **Save**.
6. Öffnen Sie ERP Sync und testen Sie ein kleines Dokument außerhalb der Produktion, bevor Sie Artikelerstellung oder Stücklistensynchronisierung für Produktionsdaten aktivieren.

Beim Laden eines Konnektors wird Drittanbietercode im SOLIDWORKS-Prozess ausgeführt. Installieren Sie nur Konnektoren aus vertrauenswürdigen Quellen.
