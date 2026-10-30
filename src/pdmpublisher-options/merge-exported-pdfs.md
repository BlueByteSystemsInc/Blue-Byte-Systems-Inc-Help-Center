---
title: Merge Exported PDFs into One Master PDF | PDMPublisher Options
description: Combine exported PDFs into a single master PDF.
ms.date: 08/09/2026
ms.topic: reference
---

# Merge Exported PDFs into One Master PDF

![Merge exported PDFs setting in PDMPublisher for SOLIDWORKS](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox9_Merge_exported_PDFs_into_one_master_PDF_Light_100.png)

Combines exported PDFs into a single master PDF.

> [!NOTE]
> This setting is available in both the **PDM task** and **SOLIDWORKS add-in**.

This option is for assembly processing. When a PDM task has multiple selected inputs, each input produces its own master PDF; inputs are not merged together. In the PDM task, merging and saving individual reference outputs are separate settings. Disabling **Export references to file formats individually** does not disable merging. To prevent a master PDF, turn off **Merge exported PDFs into one master PDF**.

Required setup:

- Select `PDF` in [File Formats](file-formats.md).
- Enable **Merge exported PDFs into one master PDF**. Enable individual reference exports separately if you also want those files saved.
- Process an assembly: launch the PDM task on an assembly or open the assembly in SOLIDWORKS before publishing from the add-in.

> [!TIP]
> Enable [PDF Bookmarks](pdf-bookmarks.md) and [Add Table of Content to Merged PDF](add-table-of-content-to-merged-pdf.md) when the merged PDF needs navigation.

## Check a task's merge setting

Save **Merge exported PDFs into one master PDF** in PDM Administration, then launch a new task instance. Already queued tasks can retain their previous settings. The log entry **Merge exported PDFs: False** confirms that merging is disabled.

Saving an individual drawing PDF does not mean PDFs were merged.
