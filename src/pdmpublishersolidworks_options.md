---
title: Publish Settings | PDMPublisher for SOLIDWORKS
description: Find the focused documentation for every PDMPublisher for SOLIDWORKS output and processing option.
ms.date: 09/16/2026
ms.topic: how-to
---

# Publish Settings

Open **PDMPublisher > Settings > Publish** to edit the output and processing settings stored in a [Publish profile](pdmpublishersolidworks_profiles.md). Select **PDMPublisher > Publish** to configure and run the active profile.

![Current Publish settings in PDMPublisher for SOLIDWORKS](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

Scroll down to configure PDF merging, table-of-content columns, bookmarks, annotations, conditions, and Publish profiles.

![Lower portion of the Publish settings page](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)

## Controls on the Publish Page

| Section | Control | Purpose |
| --- | --- | --- |
| Output | **Export location** | Builds the destination folder from literal text and placeholders. **Browse** selects a folder. |
| Output | **Locations by file format** | Overrides the main destination for selected output formats. |
| Output | **Filename** | Builds the output filename. The extension is supplied by the selected format. |
| Output | **File formats** | Selects one or more output formats and exposes format-specific settings where supported. |
| Output | **Show dialog before processing** | Displays the Publish dialog so the user can review the active profile before the job starts. |
| Output | **Open export location on completion** | Opens the destination folder after a successful job. |
| Drawing sheets | **Sheets to export** | Chooses all sheets or another supported sheet-selection mode. |
| Drawing sheets | **Sheet name** | Filters drawing sheets by an evaluated name pattern. |
| Export | **Export references to file formats individually** | Publishes supported assembly references as separate output files. |
| Export | **Ignore sub-assembly children when condition checks fail** | Stops traversal below a subassembly that does not satisfy its conditions. |
| Export | **Convert multiple configurations** | Publishes selected configurations separately. **Configuration filter** controls inclusion. |
| Export | **Archive all exported documents (.zip)** | Adds the produced files to a ZIP archive. |
| Export | **Export sheet metal parts to 1:1 flat pattern DXF** | Produces manufacturing-ready flat-pattern DXFs. **Sheet metal settings** controls layers and DXF behavior. |
| Export | **Split bodies** | Exports supported solid bodies separately. |
| PDF | **Merge exported PDFs into one master PDF** | Combines exported PDFs in processing order. |
| PDF | **Add table of content to merged PDF** | Adds a generated contents page to the merged PDF and enables its related controls. |

Scroll the right pane to reach the remaining PDF, annotation, condition, and profile controls. Disabled controls depend on another option; for example, table-of-contents settings remain unavailable until both PDF merging and table-of-contents generation are enabled.

Use the focused pages beneath **Publishing** in the TOC:

| Category | Pages |
| --- | --- |
| Profiles and presets | [Publish Profiles](pdmpublishersolidworks_profiles.md), [Presets](pdmpublishersolidworks_presets.md), and [Share a Publish Profile Using a PIN](pdmpublishersolidworks_profile_sharing.md) |
| Output paths and names | [Export Location](pdmpublisher-options/export-location.md), [Filename](pdmpublisher-options/filename.md), [File Formats](pdmpublisher-options/file-formats.md), [Open Export Location](pdmpublishersolidworks-open-export-location.md), and [Archive Exported Documents](pdmpublisher-options/archive-all-exported-documents.md) |
| Assembly and references | [Export References Individually](pdmpublisher-options/export-references-individually.md) and [Ignore Sub-Assembly Children](pdmpublisher-options/ignore-sub-assembly-children-when-condition-checks-fail.md) |
| Configurations | [Convert Multiple Configurations](pdmpublisher-options/convert-multiple-configurations.md) |
| Drawing sheets and PDFs | [Sheets to Export](pdmpublisher-options/sheets-to-export.md), [Sheet Name Pattern](pdmpublisher-options/sheet-name-pattern.md), [Merge Exported PDFs](pdmpublisher-options/merge-exported-pdfs.md), [Table of Content](pdmpublisher-options/add-table-of-content-to-merged-pdf.md), [Table Columns](pdmpublisher-options/table-columns.md), and [PDF Bookmarks](pdmpublisher-options/pdf-bookmarks.md) |
| Manufacturing outputs | [Sheet Metal Flat Pattern DXF](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md) and [Split Bodies](pdmpublisher-options/split-bodies.md) |
| Execution | [Run a Publish Job](pdmpublishersolidworks-publish.md) and [Publishing Workflow and Results](pdmpublishersolidworks_workflow.md) |

> [!NOTE]
> Task-only settings are intentionally excluded from this SOLIDWORKS add-in section. See [PDM Task vs SOLIDWORKS Add-in](pdmpublisher-product-differences.md) when a setting shown in the PDM Administration tool is not present here.

Use the [Placeholder Reference](pdmpublisherspecialvariable.md) when constructing output paths, filenames, sheet patterns, annotations, or conditions.
