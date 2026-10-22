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

This option is for assembly processing. In the PDM task, merging and saving individual reference outputs are separate settings. Disabling **Export references to file formats individually** does not disable merging. To prevent a master PDF, turn off **Merge exported PDFs into one master PDF**.

Required setup:

- Select `PDF` in [File Formats](file-formats.md).
- Enable **Merge exported PDFs into one master PDF**. Enable individual reference exports separately if you also want those files saved.
- Process an assembly: launch the PDM task on an assembly or open the assembly in SOLIDWORKS before publishing from the add-in.

> [!TIP]
> Enable [PDF Bookmarks](pdf-bookmarks.md) and [Add Table of Content to Merged PDF](add-table-of-content-to-merged-pdf.md) when the merged PDF needs navigation.

## PDM Task 20261029: merge setting differs from the run

Version **20261029** makes the settings editor and task runner prefer the same saved settings and updates the legacy settings entry when saving. This prevents a stale legacy merge value from overriding the newly saved value.

After updating the task add-in:

1. Open the task in PDM Administration.
2. Clear **Merge exported PDFs into one master PDF** and click **OK**.
3. Launch a fresh task instance. Previously queued instances may contain older settings.
4. Check the log for **Merge exported PDFs: False**. The same entry identifies the settings source and whether individual reference exports are enabled.

**Began merging PDFs...** followed by **Launching: PDMPublisher.Merge.exe...** confirms that the run entered PDF merging. A message that an individual drawing PDF was saved does not indicate merging.