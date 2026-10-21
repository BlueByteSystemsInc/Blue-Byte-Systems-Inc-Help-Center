---
title: Options | PDMPublisher | SOLIDWORKS PDM
description: Short reference for every PDMPublisher task setup option available in SOLIDWORKS PDM Professional.
ms.date: 10/20/2026
ms.topic: conceptual
---

# Options Task Page

The **Options** task page controls where PDMPublisher writes exported files, which formats are created, how PDFs are merged, and how the PDM task behaves when it runs.

> [!IMPORTANT]
> This is the **PDM task** Options page. Settings shared with the SOLIDWORKS add-in use the same detail pages and identify their product-specific behavior. See [PDM Task vs SOLIDWORKS Add-in](pdmpublisher-product-differences.md).

![Updated PDMPublisher Options task page](/images/pdmpublisher/screenshots/task-options-20261009.png)

Use this page as a quick map. Each setting links to its own feature page with the matching screenshot, explanation, and notes.

Select **Pop out...** when you want to edit the complete page in a separate resizable window. The **Additional settings** commands show how many annotations, conditions, and scheduled items are currently configured. Summary counts also appear beside dialogs such as configuration filters, variable mappings, extension-specific locations, and flat-pattern settings.

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

### Export referenced models from drawings

In **Drawing processing**, enable **Export referenced models from drawings** to publish 3D files from models referenced by a drawing. The checkbox includes an explanation beneath it and is off by default.

For example, run a task on `Bracket.SLDDRW` with PDF and STEP selected and flat-pattern export enabled:

| Output | Source |
|---|---|
| PDF | The drawing |
| STEP | The referenced part or assembly |
| Flat-pattern DXF | A directly referenced sheet-metal part, using the existing flat-pattern settings |

The task uses each model's configuration recorded in the drawing's PDM reference tree. Repeated views of the same model/configuration produce one export per drawing; distinct models and configurations are processed separately. This option does not recursively export every component inside a referenced assembly. Missing models or unspecified reference configurations are reported rather than guessed.

Folder templates are evaluated against the drawing, including extension-specific locations. Filename templates are evaluated against the model. Include configuration and body placeholders where needed to prevent output filenames from overlapping. Existing body-export and flat-pattern settings apply. Selecting PDF/DXF/DWG alone does not request 3D model conversion; flat-pattern export is controlled by its separate option.

With **Use latest released versions only**, references come from the selected Released drawing version, and the referenced models also undergo Released-version verification before publishing.

This setting is included in the latest task source/build; an older installed task or CEX must be updated before it appears.

### Sheet selection

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
| Use drawing-derived BOM | Uses the first named BOM saved on the associated assembly drawing, with the configured calculated BOM as a fallback. | [Open](pdmpublisher-options/use-drawing-derived-bom.md) |
| Vault Activity Logs | Creates detailed logs in the configured vault folder when publishing starts. | [Open](pdmpublisher-options/turn-on-activity-tracking.md) |
| Server-Synced Activity Logs | Sends activity logs to the server for future support review. | [Open](pdmpublisher-options/server-synced-activity-logs.md) |
| Log Folder (Vault Only) | PDM vault folder where logs are stored. | [Open](pdmpublisher-options/log-folder-vault-only.md) |
| Ignore sub-assemblies children when condition checks fail | Prevents children of failed sub-assemblies from being processed. | [Open](pdmpublisher-options/ignore-sub-assembly-children-when-condition-checks-fail.md) |

## Related Pages

- [Annotations Task Page](annotations.md)
- [Conditions Task Page](conditions.md)
- [Scheduled Items Task Page](scheduleditems.md)
- [Integrations Task Page](task-integrations.md)

## Task input file types

At the bottom of **Publish**, use **Run this task on these file types** to choose which input files the task processes.

- Select **Part (.sldprt)**, **Assembly (.sldasm)**, and **Drawing (.slddrw)** using their checkboxes. All three are selected by default.
- Choose **Add more extensions…** to enter additional extensions, such as `.docx` or `.xlsx`. The count appears beneath the button. Apply saves the list; Cancel keeps the previous list.
- Leave all three checkboxes unchecked and remove all additional extensions to allow **all file types**. This removes the input filter; it does not add support for new converters.

The filter applies to selected or scheduled task input files. It does not select output formats or restrict which referenced documents are exported. Input-extension choices are included when task settings are exported and imported.

For an interactive launch, if no selected files match the configured extensions, the task is canceled before it enters the queue. The execution host also checks the filter when processing inputs, including scheduled items. Canceling the file-selection dialog cancels the launch.

## Use latest released versions only

Enable **Use latest released versions only** to select the most recent version that entered the **Released** state for each normal file reference. The state-name comparison ignores capitalization. This overrides **Work with latest version** and the BOM version selection; it does not fall back to a newer work-in-progress version.

A referenced component that has never entered Released is omitted from the publishing copies and recorded in the log. If the affected document itself has no Released version, the task stops.

Starting with task **2026.10.23** (`20261023`), the reference check uses the type reported by PDM:

| Reference type | Handling |
| --- | --- |
| Normal file | Check its Released history and cache the selected version. Missing or invalid PDM file/folder IDs stop the task. |
| Cut-list item | Skip independent release-history checks and caching; the item belongs to its parent file. |
| Internal/virtual part or assembly | Skip independent release-history checks and caching; the component is embedded in its parent. Its branch is not processed as a separate file dependency. |
| Unknown or unreadable type | Stop and report the reference details. |

Skipping an embedded entry does not delete it from the parent document. Names such as `Sheet<1>` or `Cut-List-Item1` do not determine whether it is skipped; PDM's reference type does.

### References that cannot be cached

Starting with task **2026.10.24** (`20261024`), a referenced file that cannot be cached or whose local version cannot be verified is reported as **Omitted**. This includes a Released version that PDM cannot retrieve from cold storage. Publishing continues with the remaining components.

The omitted component is suppressed in the temporary publishing copy and excluded from separate exports. Its exclusive subassembly branch is omitted too; a shared component remains eligible when another retained branch references it. Retained BOM quantities are recalculated. The report records the file, selected Released version, and failure reason.

An explicitly selected input document must still cache successfully. Failure to cache a main input, inspect reference history, or safely prepare the publishing copy can still stop the task. The original vault documents are not modified to suppress omitted components.

### Troubleshooting reference checks

**Cannot safely identify released reference** means the SOLIDWORKS dependency could not be matched uniquely to a child of the current parent. The task first checks full paths and historical PDM reference paths. For references without an extension, it can match a unique child filename without its extension. Omitted children remain available for this lookup. If both `Bracket.SLDPRT` and `Bracket.SLDASM` match, the task stops and lists the parent and candidate paths/IDs instead of guessing. A part and assembly sharing a base name are valid when the reference includes its extension.

A message such as **Cannot inspect a child reference for released-only publishing** does not mean that the named parent file is unreleased. Read the child details in the task log: name, referenced-as value, found path, file/folder IDs, referenced version, and PDM file type. The log also identifies the parent and the selected Released version.

When requesting support, include this complete diagnostic and the task version from the beginning of the log. Versions before `20261023` used different handling for embedded entries; update the task add-in and rerun before comparing results.
The task uses the vault's error lookup to translate HRESULT values into readable PDM messages and keeps the hexadecimal code for support. Error messages show only the source-code filename and line number, such as `ReleasedVersionPlan.cs:297`, instead of a stack trace or full source path. Source locations require the matching `PDMPublisher.pdb` from the deployment package; if symbols are unavailable, the error is shown without a source location.

See [Task log filenames and retries](pdmpublisher-options/log-folder-vault-only.md#task-log-filenames-and-retries) for log naming and how repeated runs replace previous log contents.
