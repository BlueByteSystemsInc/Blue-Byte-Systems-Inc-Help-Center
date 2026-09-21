---
title: "ERPNext-Konnektor | PDMPublisher für SOLIDWORKS"
description: "Installieren und konfigurieren Sie den offiziellen ERPNext-Konnektor zur Synchronisierung von SOLIDWORKS-Artikeln, Eigenschaften, Dateien, generierten Teilenummern und Entwurfsstücklisten."
ms.date: 09/27/2026
ms.topic: how-to
---

# ERPNext-Konnektor

Der ERPNext-Konnektor ist ein offizieller Blue Byte Systems-Konnektor im PDMPublisher-Konnektorkatalog. Er überträgt aktivierte SOLIDWORKS-Zeilen als Items an ERPNext, aktualisiert zugeordnete Item-Felder, kann von ERPNext erzeugte Teilenummern anfordern, lädt optionale Dateien und Vorschauen hoch und synchronisiert ausgewählte Beziehungen in verwaltete Entwurfsstücklisten.

![Offizieller ERPNext-Konnektor und seine Einstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-connector-settings-20260920.png)

> [!NOTE]
> Der Konnektor arbeitet nur in eine Richtung. **Pull** ist nicht verfügbar. Er erstellt keine Lagerbewegungen, Bestellungen, benutzerdefinierten Felddefinitionen, übermittelten Stücklisten oder aktiven Standardstücklisten.

## ERPNext vorbereiten

Vor der Konfiguration von PDMPublisher:

- Erstellen Sie einen ERPNext-Integrationsbenutzer und generieren Sie API-Schlüssel und API-Geheimnis.
- Gewähren Sie dem Benutzer Lese-, Erstellungs- und Schreibzugriff auf **Item**-Datensätze im vorgesehenen Synchronisierungsbereich.
- Gewähren Sie für Datei-Uploads die Erstellung von **File** und Schreibzugriff auf Item.
- Gewähren Sie für die Stücklistensynchronisierung Zugriff auf das konfigurierte Unternehmen sowie Berechtigungen zum Lesen, Erstellen und Aktualisieren von **BOM**-Datensätzen.
- Prüfen Sie, ob die konfigurierte Item Group und die Lagereinheit bereits vorhanden sind.
- Erstellen Sie erforderliche `custom_*`-Felder im ERPNext-DocType **Item**. Der Konnektor ordnet Werte vorhandenen Feldern zu; er definiert keine Felder.
- Konfigurieren Sie zum Anfordern fehlender Teilenummern die ERPNext-Lagereinstellungen für die Item-Benennung nach **Naming Series** und bereiten Sie die gewünschte Serie vor.

Verwenden Sie zum Prüfen von Berechtigungen, Pflichtfeldern, Workflows und Serverskripten eine ERPNext-Testsite oder ein Unternehmen außerhalb der Produktion.

## Konnektor installieren

1. Öffnen Sie **PDMPublisher > Settings > ERP Sync**.
2. Öffnen Sie **ERP connector settings** und wählen Sie **Refresh**.
3. Wählen Sie **ERPNext** unter **Official Blue Byte Systems Inc**.
4. Wählen Sie **Download**, wenn der Konnektor nicht installiert ist oder eine neuere Serverversion verfügbar ist.
5. Wählen Sie die installierte ERPNext-Zeile aus, um die Einstellungen anzuzeigen.
6. Geben Sie die Verbindungs- und Synchronisierungseinstellungen ein und wählen Sie **Test connection**.
7. Wählen Sie **Save** und starten Sie SOLIDWORKS neu, wenn ein bereits geladener Konnektor ersetzt wurde.

**Test connection** prüft die Authentifizierung und den Item-Lesezugriff, ohne ERPNext-Datensätze zu erstellen oder zu ändern. Erstellungs- und Schreibberechtigungen werden bei einem Push-Vorgang erzwungen.

## Konnektoreinstellungen

| Einstellung | Zweck |
| --- | --- |
| Server URL | HTTPS-Stamm-URL der ERPNext-Site ohne `/api`, Anmeldeinformationen, Abfrage oder Fragment. |
| API key / API secret | Anmeldeinformationen des ERPNext-Integrationsbenutzers. Beide Werte werden maskiert und verschlüsselt für den aktuellen Windows-Benutzer gespeichert. |
| Timeout (seconds) | Zeitlimit je Anfrage von 1 bis 300 Sekunden. Der Standardwert ist 60. |
| Item code column | ERP Sync-Spalte oder benutzerdefinierte Eigenschaft für `item_code`. Standard ist `PartNumber`; es gibt keinen Rückgriff auf den Dateinamen. |
| Item group | Vorhandene ERPNext Item Group für neue Items. Standard ist `Products`. |
| Stock unit of measure | Vorhandene ERPNext-Lagereinheit für neue Items. Standard ist `Nos`. |
| Skip empty values | Behält vorhandene ERPNext-Werte bei, wenn zugeordnete Quellwerte leer sind. Fehlende Quelleigenschaften werden immer ausgelassen. |
| Request missing part numbers | Fordert einen Item-Code von ERPNext an, wenn die ausgewählte schreibbare benutzerdefinierte Eigenschaft leer ist, und schreibt die bestätigte Nummer in SOLIDWORKS zurück. |
| Item naming series | ERPNext Item-Namensserie zum Anfordern fehlender Teilenummern. |
| Property mappings | Ordnet SOLIDWORKS-Eigenschaften oder -Spalten unterstützten ERPNext Item-Feldern zu. Standardmäßig wird `Description` zu `description` zugeordnet. |
| Maintain stock | Standardwert `is_stock_item` für neu erstellte Items. |
| Allow sales | Standardwert `is_sales_item` für neu erstellte Items. |
| Allow purchase | Standardwert `is_purchase_item` für neu erstellte Items. |
| BOM company | ERPNext-Unternehmen für die Synchronisierung verwalteter Entwurfsstücklisten. |
| Upload thumbnail | Hängt die erfasste SOLIDWORKS-Vorschau an und legt sie als ERPNext Item-Bild fest. |
| Upload exported files | Lädt vorhandene Dateien mit demselben Basisdateinamen wie das Quellmodell hoch. Es werden keine Exporte erzeugt. |
| File extensions | Kommagetrennte Anhangserweiterungen. Standard ist `step,stp,dxf,pdf`. |
| Export folder | Ordner mit exportierten Dateien. Leer lassen, um den Ordner jedes Quellmodells zu verwenden; Unterordner werden nicht durchsucht. |

## Eigenschaften zuordnen

1. Geben Sie Server-URL und API-Anmeldeinformationen ein.
2. Öffnen Sie **Property mappings > ...** und wählen Sie **Load ERP fields**.
3. Wählen Sie eine SOLIDWORKS-Eigenschaft oder verfügbare ERP Sync-Spalte als Quelle aus.
4. Wählen Sie das ERPNext-Feld aus und speichern Sie die Konnektoreinstellungen.

Die Felderkennung liest Item-Metadaten, aber keine Item-Werte und schreibt keine Datensätze. Unterstützt werden `item_name`, `description`, `is_stock_item`, `is_sales_item`, `is_purchase_item` und schreibbare skalare `custom_*`-Felder. Tabellen sowie ausgeblendete, schreibgeschützte und nicht unterstützte Felder werden ausgeschlossen.

Verwenden Sie ERPNext-Feldnamen statt Beschriftungen. Boolesche Zuordnungen akzeptieren `True/False`, `Yes/No` oder `1/0`. Numerische Felder erfordern invarianten numerischen Text wie `12.5`. Eigenschaftsnamen werden ohne Beachtung der Groß-/Kleinschreibung verglichen, Item-Codes dagegen exakt.

## Items und Eigenschaften übertragen

1. Öffnen Sie [ERP Sync](pdmpublishersolidworks_erp-sync.md) für ein gespeichertes SOLIDWORKS-Dokument.
2. Bereiten Sie die Zeilen vor und aktivieren Sie nur die zu sendenden Items.
3. Wählen Sie den ERPNext-Konnektor.
4. Öffnen Sie den Pfeil neben **Push** und wählen Sie **Properties**, **Create items + properties**, **BOM** oder eine unterstützte Kombination.
5. Wählen Sie **Push** und prüfen Sie jedes Zeilenergebnis und die Zusammenfassung.

**Properties** setzt voraus, dass alle aktivierten Items vorhanden sind. **Create items + properties** erstellt fehlende Items und aktualisiert zugeordnete Felder. Vorhandene Items behalten Identität, Item Group, Lagereinheit und nicht zugehörige ERP-Felder. Wiederholte Zeilen mit demselben Item-Code und denselben Werten werden einmal gesendet; widersprüchliche Werte stoppen den Stapel vor dem Schreiben.

## Synchronisierung überwachen und Bericht prüfen

Nach Auswahl von **Push** sperrt PDMPublisher das Prüffenster und zeigt den Fortschritt an, während die aktivierten Items synchronisiert werden. Lassen Sie SOLIDWORKS geöffnet, bis der Vorgang abgeschlossen ist.

![Laufende ERPNext-Synchronisierung](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-progress-20260927.png)

Nach Abschluss der Synchronisierung zeigt der **ERP Sync report** die Zusammenfassung und eine Zeile für jedes aktivierte Item an.

![Abgeschlossener ERPNext-Synchronisierungsbericht](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-report-20260927.png)

Version `2026.09.27` vereinheitlicht die Zeilenergebnisse:

- **Success**: Das Item wurde erfolgreich verarbeitet.
- **No sync needed**: ERPNext enthielt bereits die angeforderten Werte; keine Änderung war erforderlich.
- **Failure**: Das Item ist fehlgeschlagen, war unvollständig oder wurde nach Abbruch des Laufs nicht verarbeitet.

Erfolgreiche Läufe ohne einzelne Item-Ergebnisse markieren die betroffenen Zeilen jetzt als **Success** und erklären, dass der Konnektor keine Änderungen pro Item geliefert hat. Die Zusammenfassung zeigt erstellte, aktualisierte, unveränderte, hochgeladene und übersprungene Einträge sowie Stücklistenzahlen. Das Suchfeld filtert die Zeilen; **Copy report** kopiert den vollständigen Bericht und **Save report...** speichert ihn als Datei.

## Fehlende Teilenummern anfordern

Aktivieren Sie **Request missing part numbers**, wählen Sie eine schreibbare benutzerdefinierte Eigenschaft als **Item code column** und geben Sie die ERPNext-Namensserie ein. Bei leeren Werten weist ERPNext einen Item-Code zu; bestätigte Nummern werden in die entsprechenden Modell- oder Schnittlistenzeilen zurückgeschrieben.

Die SOLIDWORKS-Dokumente werden als geändert markiert, aber nicht automatisch gespeichert. Speichern Sie sie, um die Nummern zu behalten. Vorhandene Nummern werden nicht ersetzt. Gruppierte, aggregierte oder Phantomzeilen können keine generierten Nummern erhalten.

## Vorschauen und exportierte Dateien hochladen

Uploads sind private ERPNext-Anhänge. Exportierte Dateien müssen bereits denselben Basisdateinamen wie das Quellmodell haben, zum Beispiel `Bracket.SLDPRT` und `Bracket.step`. Fehlende Dateien und Vorschauen werden übersprungen und gezählt. Eine Datei über 20 MB stoppt den Vorgang vor dem Schreiben von Items.

Wiederholte Instanzen werden während eines Push einmal je Item hochgeladen. Spätere Push-Vorgänge können zusätzliche File-Datensätze erstellen; vorhandene Anhänge werden nicht entfernt.

## Entwurfsstücklisten synchronisieren

Die Stücklistensynchronisierung erfordert eine **Indented** ERP Sync-Ansicht ohne Gruppierung und eine konfigurierte **BOM company**. Aktivieren Sie jede übergeordnete Baugruppe und die einzuschließenden direkten untergeordneten Elemente. Eine aktivierte Baugruppe ohne aktivierte Kinder wird übersprungen.

Der Konnektor erstellt oder aktualisiert seine eigene markierte Entwurfsstückliste für Quelldatei, Konfiguration und Unternehmen. Jede erfolgreiche Synchronisierung ersetzt die Materialliste dieses Entwurfs durch die Momentaufnahme der aktivierten Kinder. Der Konnektor übermittelt oder aktiviert die Stückliste nicht und legt sie nicht als Standard fest. Übermittelte Stücklisten und nicht zugehörige Entwürfe bleiben unverändert.

## Fehler sicher behandeln

Der Konnektor stoppt beim ersten API-Fehler und wiederholt abgeschlossene Änderungen nicht automatisch oder macht sie rückgängig. Bei einem Zeitlimit oder einer nicht bestätigten Antwort kann der Schreibvorgang ERPNext dennoch erreicht haben. Prüfen Sie das gemeldete Item, den Anhang oder die Stückliste in ERPNext, bevor Sie den Vorgang wiederholen.

Wenn generierte Nummern vor einem späteren Fehler bestätigt wurden, gibt PDMPublisher sie für das lokale Zurückschreiben zurück. Schlägt das lokale Schreiben fehl, verwenden Sie die gemeldeten Werte zur Wiederherstellung, statt Ersatznummern anzufordern.

## Verwandte Seiten

- [ERP Sync](pdmpublishersolidworks_erp-sync.md)
- [Benutzerdefinierten ERP-Konnektor erstellen](pdmpublishersolidworks_erp-connector.md)
