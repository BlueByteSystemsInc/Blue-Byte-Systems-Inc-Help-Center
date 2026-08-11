---
title: Options | PDMPublisher | SOLIDWORKS PDM
description: Short reference for every PDMPublisher task setup option available in SOLIDWORKS PDM Professional.
ms.date: 08/09/2026
ms.topic: conceptual
---

# Options Task Page

The **Options** task page controls where PDMPublisher writes exported files, which formats are created, how PDFs are merged, and how the PDM task behaves when it runs.

![PDMPublisher Options task page](/images/pdmpublisher/screenshots/page-options.png)

Use this page as a quick map. Each setting links to its own feature page with the matching screenshot, explanation, and notes.

## Recommended First Setup

Review these settings before saving a new task:

- [Export Location](pdmpublisher-options/export-location.md)
- [Filename](pdmpublisher-options/filename.md)
- [File Formats](pdmpublisher-options/file-formats.md)
- [Use this version of SOLIDWORKS](pdmpublisher-options/use-this-version-of-solidworks.md)
- [Template](pdmpublisher-options/template.md), when processing assemblies or quantities
- [Vault Activity Logs](pdmpublisher-options/turn-on-activity-tracking.md), when testing a new task

## Output

| Setting | Summary | Details |
|---|---|---|
| Export Location | Destination folder or dynamic path pattern for generated files. | [Open](pdmpublisher-options/export-location.md) |
| Filename | Output filename pattern. Use variables to keep exported files unique. | [Open](pdmpublisher-options/filename.md) |
| File Formats | Select one or more export formats such as PDF, DXF, DWG, STEP, eDrawings, 3MF, IFC, and others. | [Open](pdmpublisher-options/file-formats.md) |
| Use @ Tab to Evaluate Paths | Allows the `@` configuration tab to resolve variables used in the export path or filename. | [Open](pdmpublisher-options/use-at-tab-to-evaluate-paths.md) |
| Create Reference from Destination File to Source File | Creates a PDM reference from the exported file back to the source file. | [Open](pdmpublisher-options/create-reference-from-destination-file-to-source-file.md) |
| Delete Duplicates Outside the Destination Folder | Removes duplicate output files outside the destination folder. | [Open](pdmpublisher-options/delete-duplicates-outside-destination-folder.md) |
| Map Variables Between Source and Destination File | Copies mapped metadata from the source file to the generated output file. | [Open](pdmpublisher-options/map-variables-between-source-and-destination-file.md) |

## Export Behavior

| Setting | Summary | Details |
|---|---|---|
| Export affected document | Exports the top-level file that triggered the task. | [Open](pdmpublisher-options/export-active-document.md) |
| Export references to file formats individually | Exports referenced documents as separate output files. | [Open](pdmpublisher-options/export-references-individually.md) |
| Convert multiple configurations | Processes every part and assembly configuration instead of only one configuration. | [Open](pdmpublisher-options/convert-multiple-configurations.md) |
| Ask user to select configuration on startup | Prompts the user for the configuration when the task starts. | [Open](pdmpublisher-options/ask-user-to-select-configuration-on-startup.md) |
| Ask user to specify files on task launch | Prompts the user to choose files, references, and formats at launch. | [Open](pdmpublisher-options/ask-user-to-specify-files-on-task-launch.md) |
| Archive all exported documents (.zip) | Creates a ZIP package containing the exported files. | [Open](pdmpublisher-options/archive-all-exported-documents.md) |
| Export sheet metal parts to 1:1 flat pattern DXF | Exports sheet metal flat patterns as 1:1 DXF files. | [Open](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md) |
| Split Bodies | Saves multi-body parts as separate body files. | [Open](pdmpublisher-options/split-bodies.md) |
| Use Microsoft Print To PDF to save PDFs | Uses the Windows PDF printer path for PDF creation. | [Open](pdmpublisher-options/use-microsoft-print-to-pdf.md) |

## PDF

| Setting | Summary | Details |
|---|---|---|
| Merge exported PDFs into one master PDF | Combines PDF outputs into one master PDF. | [Open](pdmpublisher-options/merge-exported-pdfs.md) |
| Add table of content to merged PDF | Inserts a generated table of contents into the merged PDF. | [Open](pdmpublisher-options/add-table-of-content-to-merged-pdf.md) |
| Table columns | Controls the columns shown on the generated PDF table of contents. | [Open](pdmpublisher-options/table-columns.md) |
| PDF bookmarks | Defines bookmark text for merged PDFs. | [Open](pdmpublisher-options/pdf-bookmarks.md) |

## Drawing Sheets

| Setting | Summary | Details |
|---|---|---|
| Sheets to export | Choose all drawing sheets or only sheets matching a pattern. | [Open](pdmpublisher-options/sheets-to-export.md) |
| Sheet name pattern | Wildcard pattern used when exporting matching sheets only. | [Open](pdmpublisher-options/sheet-name-pattern.md) |

## PDM and SOLIDWORKS

| Setting | Summary | Details |
|---|---|---|
| Work with latest version | Forces PDM to get the latest file version before publishing. | [Open](pdmpublisher-options/work-with-latest-version.md) |
| Quick view mode (Drawings Only) | Opens drawings in quick view mode where supported. | [Open](pdmpublisher-options/quick-view-mode.md) |
| Use search to locate drawings | Uses PDM search behavior when drawings are not beside the model. | [Open](pdmpublisher-options/use-pdm-search-to-locate-drawings.md) |
| Use this version of SOLIDWORKS | Selects which installed SOLIDWORKS version should run the task. | [Open](pdmpublisher-options/use-this-version-of-solidworks.md) |
| Hide Task in File Explorer | Hides the task command from the PDM File Explorer right-click menu. | [Open](pdmpublisher-options/hide-task-in-file-explorer.md) |

## BOM, Activity Logs, and Advanced

| Setting | Summary | Details |
|---|---|---|
| Template | Selects the BOM template/layout used for quantity-aware output. | [Open](pdmpublisher-options/template.md) |
| Calculation method | Chooses how references are calculated for BOM and quantity evaluation. | [Open](pdmpublisher-options/calculation-method.md) |
| Vault Activity Logs | Creates detailed logs in the configured vault folder when publishing starts. | [Open](pdmpublisher-options/turn-on-activity-tracking.md) |
| Server-Synced Activity Logs | Sends activity logs to the server for future support review. | [Open](pdmpublisher-options/server-synced-activity-logs.md) |
| Log Folder (Vault Only) | PDM vault folder where logs are stored. | [Open](pdmpublisher-options/log-folder-vault-only.md) |
| Ignore sub-assemblies children when condition checks fail | Prevents children of failed sub-assemblies from being processed. | [Open](pdmpublisher-options/ignore-sub-assembly-children-when-condition-checks-fail.md) |

## Related Pages

- [Annotations Task Page](annotations.md)
- [Conditions Task Page](conditions.md)
- [Scheduled Items Task Page](scheduleditems.md)
