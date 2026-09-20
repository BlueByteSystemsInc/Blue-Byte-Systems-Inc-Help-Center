---
title: "Veröffentlichung von Einstellungen | PDMPublisher für SOLIDWORKS"
description: "Finden Sie die fokussierte Dokumentation für jede PDMPublisher für SOLIDWORKS Ausgabe- und Verarbeitungsoption."
ms.date: 09/16/2026
ms.topic: how-to
---

# Veröffentlichungseinstellungen

Öffnen Sie **PDMPublisher > Settings > Publish**, um die in einem [Publish-Profil](pdmpublishersolidworks_profiles.md) gespeicherten Ausgabe- und Verarbeitungseinstellungen zu bearbeiten. Wählen Sie **PDMPublisher > Publish**, um das aktive Profil zu konfigurieren und auszuführen.

![Aktuelle Veröffentlichungseinstellungen in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Scrollen Sie nach unten, um PDF Merging, Table-of-Content-Spalten, Lesezeichen, Anmerkungen, Bedingungen und Veröffentlichungsprofile zu konfigurieren.

![Unterer Teil der Einstellungsseite veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
<a id="controls-on-the-publish-page"></a>
## Kontrollen auf der Publish Page

| Abschnitt | Kontrolle | Zweck |
| --- | --- | --- |
| Output | **Export location** | Erstellt den Zielordner aus wörtlichem Text und Platzhaltern. **Browse** wählt einen Ordner aus. |
| Output | **Locations by file format** | Überschreibt das Hauptziel für ausgewählte Ausgabeformate. |
| Output | **Filename** | Erstellt den Output-Dateinamen. Die Erweiterung wird durch das ausgewählte Format bereitgestellt. |
| Output | **File formats** | Wählen Sie ein oder mehrere Ausgabeformate aus und stellen formatspezifische Einstellungen frei, sofern diese unterstützt werden. |
| Output | **Show dialog before processing** | Zeigt den Dialog Veröffentlichen an, damit der Benutzer das aktive Profil vor Beginn des Auftrags überprüfen kann. |
| Output | **Open export location on completion** | Öffnet den Zielordner nach einem erfolgreichen Job. |
| Zeichenblätter | **Sheets to export** | Wählen Sie alle Blätter oder einen anderen unterstützten Blattauswahlmodus aus. |
| Zeichenblätter | **Sheet name** | Filtert das Zeichnen von Blättern nach einem ausgewerteten Namensmuster. |
| Ausfuhren | **Export references to file formats individually** | Veröffentlicht unterstützt Assemblyreferenzen als separate Ausgabedateien. |
| Ausfuhren | **Ignore sub-assembly children when condition checks fail** | Stoppt das Traversal unter einer Unterbaugruppe, die ihre Bedingungen nicht erfüllt. |
| Ausfuhren | **Convert multiple configurations** | Veröffentlicht ausgewählte Konfigurationen separat. **Configuration filter** kontrolliert die Inklusion. |
| Ausfuhren | **Archive all exported documents (.zip)** | Fügt die produzierten Dateien zu einem ZIP-Archiv hinzu. |
| Ausfuhren | **Export sheet metal parts to 1:1 flat pattern DXF** | Produziert fertigungsfertige Flachmuster DXFs. **Sheet metal settings** steuert Schichten und DXF Verhalten. |
| Ausfuhren | **Split bodies** | Exporte unterstützten feste Körper separat. |
| PDF | **Merge exported PDFs into one master PDF** | Kombiniert exportierte PDFs in Verarbeitungsauftrag. |
| PDF | **Add table of content to merged PDF** | Fügt eine generierte Inhaltsseite zum zusammengeführten PDF hinzu und aktiviert die zugehörigen Steuerelemente. |

Scrollen Sie im rechten Bereich, um die verbleibenden PDF-, Annotations-, Zustands- und Profilsteuerelemente zu erreichen. Deaktivierte Steuerelemente hängen von einer anderen Option ab; z. B. die Einstellungen für Tabellen von Inhalten bleiben nicht verfügbar, bis sowohl das Zusammenführen von PDF als auch die Generierung von Tabellen von Inhalten aktiviert sind.

Verwenden Sie die fokussierten Seiten unter **Publishing** im TOC:

| Kategorie | Seiten |
| --- | --- |
| Profile und Presets | [Publish Profiles](pdmpublishersolidworks_profiles.md), [Presets](pdmpublishersolidworks_presets.md) und [Share a Publish Profile Using a PIN](pdmpublishersolidworks_profile_sharing.md) |
| Outputpfade und Namen | [Ausfuhrort](pdmpublisher-options/export-location.md), [Dateiname](pdmpublisher-options/filename.md), [File Formats](pdmpublisher-options/file-formats.md), [Open Export Location](pdmpublishersolidworks-open-export-location.md) und [Exportierte Dokumente archivieren](pdmpublisher-options/archive-all-exported-documents.md) |
| Baugruppe und Referenzen | [Exportreferenzen einzeln](pdmpublisher-options/export-references-individually.md) und [Unterversammlungskinder ignorieren](pdmpublisher-options/ignore-sub-assembly-children-when-condition-checks-fail.md) |
| Konfigurationen | [Mehrere Konfigurationen konvertieren](pdmpublisher-options/convert-multiple-configurations.md) |
| Zeichnungsblätter und PDFs | [Zu exportierende Blätter](pdmpublisher-options/sheets-to-export.md), [Namensmuster](pdmpublisher-options/sheet-name-pattern.md), [Exportiertes PDF)(pdmpublisher-options/merge-exported-pdfs.md), [Inhaltstabelle](pdmpublisher-options/add-table-of-content-to-merged-pdf.md), [Tabellenspalten](pdmpublisher-options/table-columns.md) und [PDF Lesezeichen](pdmpublisher-options/pdf-bookmarks.md) |
| Produktionsleistung | [Flachblechmuster DXF](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md) und [Split Bodies](pdmpublisher-options/split-bodies.md) |
| Ausführung | [Einen Veröffentlichungsauftrag ausführen](pdmpublishersolidworks-publish.md) und [Arbeitsablauf und Ergebnisse veröffentlichen](pdmpublishersolidworks_workflow.md) |

> [!NOTE]
> Nur Task-Einstellungen werden absichtlich aus diesem SOLIDWORKS-Add-in ausgeschlossen. Siehe [PDM Task vs SOLIDWORKS Add-in](pdmpublisher-product-differences.md), wenn eine im PDM-Administrationstool gezeigte Einstellung hier nicht vorhanden ist.

Verwenden Sie [Placeholder Reference](pdmpublisherspecialvariable.md), wenn Sie Ausgabepfade, Dateinamen, Blattmuster, Anmerkungen oder Bedingungen erstellen.
