---
title: "Optionen | PDMPublisher | SOLIDWORKS PDM"
description: "Kurzreferenz für jede PDMPublisher-Task-Setup-Option in SOLIDWORKS PDM Professional."
ms.date: 08/09/2026
ms.topic: conceptual
---

# Optionen Task Page

Die Aufgabenseite **Options** steuert, wo PDMPublisher exportierte Dateien schreibt, welche Formate erstellt werden, wie PDFs zusammengeführt werden und wie sich die PDM-Task verhält, wenn sie ausgeführt wird.

> [!IMPORTANT]
> Dies ist die **PDM task** Optionsseite. Einstellungen, die mit dem SOLIDWORKS-Add-in geteilt werden, verwenden die gleichen Detailseiten und identifizieren ihr produktspezifisches Verhalten. Siehe [PDM Task vs SOLIDWORKS Add-in](pdmpublisher-product-differences.md).

![PDMPublisher Options task page](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/page-options.png)

Verwenden Sie diese Seite als schnelle Karte. Jede Einstellung verlinkt auf ihre eigene Feature-Seite mit dem passenden Screenshot, der Erklärung und den Notizen.

<a id="recommended-first-setup"></a>
## Empfohlenes erstes Setup

Überprüfen Sie diese Einstellungen, bevor Sie eine neue Aufgabe speichern:

- [Ausfuhrort](pdmpublisher-options/export-location.md)
- [Dateiname](pdmpublisher-options/filename.md)
- [Dateiformate](pdmpublisher-options/file-formats.md)
- [Verwenden Sie diese Version von SOLIDWORKS](pdmpublisher-options/use-this-version-of-solidworks.md)
- [Template](pdmpublisher-options/template.md), bei der Verarbeitung von Baugruppen oder Mengen
- [Vault Activity Logs](pdmpublisher-options/turn-on-activity-tracking.md), beim Testen einer neuen Aufgabe

<a id="output"></a>
## Output

| Einstellung | Zusammenfassung | Einzelheiten |
|---|---|---|
| Ausfuhrort | Zielordner oder dynamisches Pfadmuster für generierte Dateien. | [Offen](pdmpublisher-options/export-location.md) |
| Dateiname | Dateinamenmuster ausgeben. Verwenden Sie Variablen, um exportierte Dateien eindeutig zu halten. | [Offen](pdmpublisher-options/filename.md) |
| Dateiformate | Wählen Sie ein oder mehrere Exportformate wie PDF, DXF, DWG, STEP, eDrawings, 3MF, IFC und andere. | [Offen](pdmpublisher-options/file-formats.md) |
| Verwenden Sie @ Tab, um Pfade zu bewerten | Ermöglicht der Registerkarte `@`-Konfiguration, Variablen aufzulösen, die im Exportpfad oder Dateiname verwendet werden. | [Offen](pdmpublisher-options/use-at-tab-to-evaluate-paths.md) |
| Erstellen Sie eine Referenz von der Zieldatei zur Quelldatei | Erstellt eine PDM-Referenz aus der exportierten Datei zurück in die Quelldatei. | [Offen](pdmpublisher-options/create-reference-from-destination-file-to-source-file.md) |
| Duplikate außerhalb des Zielordners löschen | Entfernen doppelter Ausgabedateien außerhalb des Zielordners. | [Offen](pdmpublisher-options/delete-duplicates-outside-destination-folder.md) |
| Kartenvariablen zwischen Quell- und Zieldatei | Kopiert abgebildete Metadaten aus der Quelldatei in die generierte Ausgabedatei. | [Offen](pdmpublisher-options/map-variables-between-source-and-destination-file.md) |

<a id="export-behavior"></a>
## Ausfuhrverhalten

| Einstellung | Zusammenfassung | Einzelheiten |
|---|---|---|
| Betroffenes Ausfuhrdokument | Exportiert die Top-Level-Datei, die die Aufgabe ausgelöst hat. | [Offen](pdmpublisher-options/export-active-document.md) |
| Referenzen einzeln in Dateiformate exportieren | Exportiert referenzierte Dokumente als separate Ausgabedateien. | [Offen](pdmpublisher-options/export-references-individually.md) |
| Konvertieren mehrerer Konfigurationen | Verarbeitet jede Teile- und Montagekonfiguration anstelle von nur einer Konfiguration. | [Offen](pdmpublisher-options/convert-multiple-configurations.md) |
| Bitten Sie den Benutzer, die Konfiguration beim Start auszuwählen | Fordert den Benutzer zur Konfiguration auf, wenn die Aufgabe gestartet wird. | [Offen](pdmpublisher-options/ask-user-to-select-configuration-on-startup.md) |
| Bitten Sie den Benutzer, Dateien zum Starten von Aufgaben anzugeben | Fordert den Benutzer auf, Dateien, Referenzen und Formate beim Start auszuwählen. | [Offen](pdmpublisher-options/ask-user-to-specify-files-on-task-launch.md) |
| Archivieren Sie alle exportierten Dokumente (.zip) | Erstellt ein ZIP-Paket, das die exportierten Dateien enthält. | [Offen](pdmpublisher-options/archive-all-exported-documents.md) |
| Exportieren Sie Blechteile auf 1:1 flaches Muster DXF | Exportiert flache Blechmuster als 1:1 DXF-Dateien. | [Offen](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md) |
| Gespaltene Körper | Speichert Mehrkörperteile als separate Körperdateien. | [Offen](pdmpublisher-options/split-bodies.md) |
| Verwenden Sie Microsoft Print To PDF, um PDFs zu speichern | Verwendet den Druckerpfad Windows PDF für die Erstellung von PDF. | [Offen](pdmpublisher-options/use-microsoft-print-to-pdf.md) |

<a id="pdf"></a>
## PDF

| Einstellung | Zusammenfassung | Einzelheiten |
|---|---|---|
| Exportierte PDFs zu einem Master PDF zusammenführen | Kombiniert PDF-Ausgänge in einen Master PDF. | [Offen](pdmpublisher-options/merge-exported-pdfs.md) |
| Hinzufügen einer Inhaltstabelle zu PDF | Legt ein generiertes Inhaltsverzeichnis in das zusammengeführte PDF ein. | [Offen](pdmpublisher-options/add-table-of-content-to-merged-pdf.md) |
| Tabellenspalten | Steuert die Spalten, die im generierten Inhaltsverzeichnis von PDF angezeigt werden. | [Offen](pdmpublisher-options/table-columns.md) |
| PDF-Lesezeichen | Definiert Lesezeichentext für zusammengeführte PDFs. | [Offen](pdmpublisher-options/pdf-bookmarks.md) |

<a id="drawing-sheets"></a>
## Zeichnungsblätter

| Einstellung | Zusammenfassung | Einzelheiten |
|---|---|---|
| Blätter zur Ausfuhr | Wählen Sie alle Zeichenblätter oder nur Blätter, die einem Muster entsprechen. | [Offen](pdmpublisher-options/sheets-to-export.md) |
| Blattbezeichnungsmuster | Wildcard-Muster, das nur beim Export übereinstimmender Blätter verwendet wird. | [Offen](pdmpublisher-options/sheet-name-pattern.md) |

<a id="pdm-and-solidworks"></a>
## PDM und SOLIDWORKS

| Einstellung | Zusammenfassung | Einzelheiten |
|---|---|---|
| Arbeiten mit der neuesten Version | Erzwingt PDM, vor der Veröffentlichung die neueste Dateiversion zu erhalten. | [Offen](pdmpublisher-options/work-with-latest-version.md) |
| Schnellansichtsmodus (nur Zeichnungen) | Öffnet Zeichnungen im Schnellansichtsmodus, sofern unterstützt. | [Offen](pdmpublisher-options/quick-view-mode.md) |
| Verwenden Sie die Suche, um Zeichnungen zu finden | Verwendet PDM-Suchverhalten, wenn sich Zeichnungen nicht neben dem Modell befinden. | [Offen](pdmpublisher-options/use-pdm-search-to-locate-drawings.md) |
| Verwenden Sie diese Version von SOLIDWORKS | Wählen Sie aus, welche installierte SOLIDWORKS-Version die Aufgabe ausführen soll. | [Offen](pdmpublisher-options/use-this-version-of-solidworks.md) |
| Hide Task im Datei-Explorer | Versteckt den Task-Befehl aus dem PDM File Explorer Rechtsklick-Menü. | [Offen](pdmpublisher-options/hide-task-in-file-explorer.md) |

<a id="bom-activity-logs-and-advanced"></a>
## BOM, Activity Logs und Advanced

| Einstellung | Zusammenfassung | Einzelheiten |
|---|---|---|
| Meldebogen | Wählen Sie die Stücklistenvorlage/das Layout aus, die für die mengenbewusste Ausgabe verwendet wird. | [Offen](pdmpublisher-options/template.md) |
| Berechnungsmethode | Wählen Sie aus, wie Referenzen für die Stückliste und die Mengenauswertung berechnet werden. | [Offen](pdmpublisher-options/calculation-method.md) |
| Verwendung von Stücklisten | Verwendet die zuerst genannte Stückliste, die in der zugehörigen Montagezeichnung gespeichert ist, wobei die konfigurierte berechnete Stückliste als Fallback verwendet wird. | [Offen](pdmpublisher-options/use-drawing-derived-bom.md) |
| Vault Activity Logs | Erstellt detaillierte Protokolle im konfigurierten Vault-Ordner, wenn die Veröffentlichung gestartet wird. | [Offen](pdmpublisher-options/turn-on-activity-tracking.md) |
| Server-Synced Activity Logs | Sendet Aktivitätsprotokolle an den Server für die zukünftige Support-Überprüfung. | [Offen](pdmpublisher-options/server-synced-activity-logs.md) |
| Log-Ordner (nur Vault) | PDM-Vault-Ordner, in dem Protokolle gespeichert sind. | [Offen](pdmpublisher-options/log-folder-vault-only.md) |
| Ignorieren Sie Unterbaugruppen von Kindern, wenn die Zustandskontrollen fehlschlagen | Verhindert, dass Kinder ausgefallener Unterbaugruppen bearbeitet werden. | [Offen](pdmpublisher-options/ignore-sub-assembly-children-when-condition-checks-fail.md) |

<a id="related-pages"></a>
## Verwandte Seiten

- [Anmerkungen Task Page](annotations.md)
- [Bedingungen Task Page](conditions.md)
- [Scheduled Items Task Page](scheduleditems.md)
