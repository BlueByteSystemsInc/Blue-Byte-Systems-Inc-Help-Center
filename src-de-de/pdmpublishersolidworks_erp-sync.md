---
title: "ERP Sync | PDMPublisher für SOLIDWORKS"
description: "Konfigurieren Sie ERP Sync und übertragen Sie SOLIDWORKS-Artikel, Eigenschaften und Stücklisten über einen installierten ERP-Konnektor."
ms.date: 09/28/2026
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

Informationen zum von Blue Byte Systems bereitgestellten Konnektor finden Sie unter [ERPNext-Konnektor](pdmpublishersolidworks_erpnext-connector.md).

<a id="choose-the-synchronization-source"></a>
## Synchronisierungsquelle auswählen

Mit der Quellenauswahl oben links in ERP Sync legen Sie fest, woher Zeilen, Spalten, Mengen und die Stücklistenhierarchie stammen.

![ERP Sync-Quellenauswahl mit Feature tree, SOLIDWORKS-Stücklistentabelle und CSV-Datei](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-source-selector-20260928.png)

| Quelle | Von ERP Sync verwendete Daten | Wichtiges Verhalten |
| --- | --- | --- |
| Feature tree | Das aktive SOLIDWORKS-Dokument und seine aufgelöste Komponentenstruktur. | Dies ist die Standardquelle. Stücklistentyp, Spaltenvorlagen, Gruppierung, Komponentenfilter, Schnittlisteneinträge und Phantomzeilen bleiben verfügbar. Für einen Stücklisten-Push ist die Ansicht **Indented** ohne Gruppierung erforderlich. |
| SOLIDWORKS-Stücklistentabelle | Eine Stücklistentabelle in einer Baugruppe oder Zeichnung einschließlich der für die Tabelle gewählten Konfiguration. | Sichtbare Tabellenzeilen, sichtbare Spalten und angezeigte Mengen werden verwendet. Item- und Eigenschafts-Push stehen für jede gültige Tabelle zur Verfügung. Der Stücklisten-Push erfordert zusätzlich eine eingerückte Tabelle mit detaillierten numerischen Positionsnummern wie `1`, `1.1` und `1.2`, sichtbaren übergeordneten Zeilen und einer eindeutigen Hierarchie. |
| CSV-Datei | Eine auf dem Datenträger ausgewählte UTF-8-CSV-Datei. | Jede CSV-Spalte wird zu einer Quelleneigenschaft für den Konnektor. Item- und Eigenschafts-Push stehen nach erfolgreicher Prüfung der Datei zur Verfügung. Der Stücklisten-Push wird aktiviert, wenn Item- und übergeordnete Spalten eine gültige Hierarchie definieren. |

Die ausgewählte Quelle wird für das gespeicherte SOLIDWORKS-Dokument beibehalten.

### Feature tree

Wählen Sie **Feature tree**, um Zeilen aus dem aktiven Teil, der Baugruppe oder der Zeichnung zu erstellen. Bereiten Sie die Ansicht mit **BOM type**, **Column template**, **Group by**, **Ignore Components** und den Item-Filtern vor. Je nach Auswahl können aufgelöste Komponenten, Schnittlisteneinträge und Phantomzeilen enthalten sein.

### SOLIDWORKS-Stücklistentabelle

Öffnen Sie das Dokument-Untermenü in der Quellenauswahl und wählen Sie eine bestimmte Stücklistentabelle und Konfiguration. ERP Sync liest die Tabelle so, wie sie angezeigt wird:

- Ausgeblendete Zeilen und Spalten werden ausgelassen.
- Spaltentitel und Spalten für benutzerdefinierte Eigenschaften werden zu Quelleneigenschaften, die ein Konnektor zuordnen kann.
- Die angezeigte Menge muss numerisch sein.
- Eine flache Tabelle kann für die Item- und Eigenschaftssynchronisierung verwendet werden. Die Stücklistensynchronisierung erfordert eine eingerückte Hierarchie mit detaillierter numerischer Positionsnummerierung und sichtbaren übergeordneten Zeilen.

Wenn aus einer Tabelle keine eindeutige Hierarchie erstellt werden kann, bleiben Item- und Eigenschaftsvorgänge verfügbar, während ERP Sync den Stücklistenvorgang deaktiviert.

### CSV-Datei

Wählen Sie **CSV file...**, um Daten unabhängig von der SOLIDWORKS-Komponentenstruktur zu verwenden. Die Datei muss folgende Anforderungen erfüllen:

- UTF-8-Text mit oder ohne Byte-Reihenfolge-Markierung (BOM).
- Maximal 20 MB und höchstens 50.000 nicht leere Datenzeilen.
- Nicht leere, eindeutige Überschriften und dieselbe Feldanzahl in jeder Datenzeile.
- Positive ganzzahlige Mengen. Fehlt eine Mengenspalte, verwendet ERP Sync `1`.

ERP Sync erkennt die folgenden üblichen Überschriften:

| Zweck | Erkannte Überschriften |
| --- | --- |
| Itemcode | `Item code`, `item_code`, `PartNumber`, `Part Number` oder `Item` |
| Menge | `Quantity` oder `Qty` |
| Übergeordnetes Item | `Parent`, `Parent item` oder `parent_item` |
| Beschreibung | `Description` |
| Material | `Material` |

Für einen Stücklisten-Push aus einer CSV-Datei müssen erkannte Spalten für Itemcode und übergeordnetes Item vorhanden sein. Jeder Itemcode darf nur einmal vorkommen, jedes referenzierte übergeordnete Item muss vorhanden sein und die Beziehungen dürfen keinen Zyklus enthalten. Eine gültige Hierarchie benötigt mindestens ein übergeordnetes Item mit untergeordneten Items.

<a id="push-document-data"></a>
## Dokumentdaten übertragen

1. Öffnen oder aktivieren Sie ein gespeichertes SOLIDWORKS-Teil, eine Baugruppe oder eine Zeichnung.
2. Wählen Sie **PDMPublisher > ERP Sync**.
3. Wählen Sie **Feature tree**, eine SOLIDWORKS-Stücklistentabelle oder **CSV file...** als Quelle. Bereiten Sie die Ansicht mit den für diese Quelle verfügbaren Steuerelementen vor.
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

## Konnektorentwicklung

Informationen zum Erstellen und Laden einer eigenen C#-Integration finden Sie unter [Benutzerdefinierten ERP-Konnektor erstellen](pdmpublishersolidworks_erp-connector.md).
