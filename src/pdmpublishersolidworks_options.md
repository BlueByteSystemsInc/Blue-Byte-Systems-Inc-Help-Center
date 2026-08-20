---
title: Options | PDMPublisher for SOLIDWORKS
description: Configure output paths, filenames, formats, drawing sheets, references, configurations, flat patterns, and PDF output.
ms.date: 08/19/2026
ms.topic: how-to
---

# PDMPublisher Options

The PDMPublisher tab contains the output and processing settings for the selected [profile](pdmpublishersolidworks_profiles.md).

> [!NOTE]
> This is the SOLIDWORKS add-in Options page. The TOC below it mirrors the PDM task categories, but task-only options are intentionally omitted. See [PDM Task vs SOLIDWORKS Add-in](pdmpublisher-product-differences.md).

![PDMPublisher for SOLIDWORKS Options page](/images/pdmpublisher/solidworks/overview-20260808.png)

## Output

### Export Location

Enter the folder where generated files will be written, or select **Browse...** to choose a fixed folder. Use the `>...` menu to build a dynamic path from file properties and built-in values.

Select **Customize Location...** when individual formats need different folders. An enabled format-specific location overrides the main Export Location for that format.

See [Export Location](pdmpublisher-options/export-location.md) and the [Placeholder Reference](pdmpublisherspecialvariable.md) for path examples and add-in-specific behavior.

### Filename

The Filename field controls the output name without its final file extension. Combine text with values from the `>...` menu. Include a configuration-specific value when one source file can create several outputs.

See [Filename](pdmpublisher-options/filename.md).

### File Formats

Open the format selector and check every output format required by the profile. Multiple formats can be generated in one publish job.

![Selecting multiple output file formats](/images/pdmpublisher/solidworks/file-formats.png)

The selector uses descriptive names and file-type icons. Format availability depends on the source document, SOLIDWORKS version, and installed eDrawings capabilities. See [File Formats](pdmpublisher-options/file-formats.md) for the complete list and source-file behavior.

### Open Export Location on Completion

Enable this option to open the output folder after a successful publish job. See [Open Export Location on Completion](pdmpublishersolidworks-open-export-location.md).

## Drawing Sheets

Use **Sheets to export** to choose all drawing sheets or only sheets whose names match a pattern.

![Drawing sheet selection and configuration-name pattern](/images/pdmpublisher/solidworks/drawing-sheets.png)

- **All sheets** exports every sheet in the drawing.
- **Sheets matching name** evaluates **Sheet name pattern** and exports matching sheets.

The pattern supports `*`, `?`, and placeholders such as `(ConfigurationName)`. See [Sheet Name Pattern](pdmpublisher-options/sheet-name-pattern.md) for examples.

> [!NOTE]
> A drawing with one sheet exports its only sheet without evaluating the pattern. For a multi-sheet drawing, PDMPublisher exports the matching sheets; if no sheet names match, it falls back to exporting all sheets and records the fallback in the Logs tab.

## Export Processing

| Option | Behavior |
| --- | --- |
| **Export references to file formats individually** | Processes the active assembly and its referenced files as individual outputs. |
| **Ignore sub-assemblies children when condition checks fail** | Skips the children of a subassembly when that subassembly fails its condition checks. |
| **Convert multiple configurations** | Exports multiple configurations. Include `(ConfigurationName)` or another configuration-specific value in Filename. |
| **Archive all exported documents (.zip)** | Creates a ZIP package containing the exported documents. |
| **Export sheet metal parts to 1:1 flat pattern DXF** | Creates manufacturing flat-pattern DXFs for sheet metal parts. Use **Flat Pattern Settings** to configure the result. |
| **Split Bodies** | Exports bodies from a multibody part as separate files. This does not apply to sheet metal flat patterns. |

Use **Configuration Filter** to include or exclude configurations by pattern when multiple-configuration export is enabled.

The add-in obtains references directly from the active SOLIDWORKS assembly. It does not require the PDM task BOM Template setting.

> [!IMPORTANT]
> Reference processing, conditions, BOM quantities, PDF merging, and assembly-level outputs depend on the active assembly and the references SOLIDWORKS can resolve.

## PDF Options

The PDF section contains merged-PDF, bookmarks, table-of-contents, and related PDF behavior. Options that depend on PDF references become relevant when PDF is selected and assembly references are processed.

Use the categorized pages in the TOC for the same detailed option references used by the PDM task documentation. Each page identifies where the add-in workflow differs.

## Publish

Select **PUBLISH** at the bottom of the task pane to process the active SOLIDWORKS document with the current profile.

If SOLIDWORKS PDM vaults are installed and configured, the arrow beside **PUBLISH** can associate publishing with a vault. Use the correct vault when generated files must be added, checked out, or checked in through PDM.

The Logs tab records progress, successful steps, warnings, and failures. See [Logs](pdmpublishersolidworks_logs.md).
