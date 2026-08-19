---
title: Merge Exported PDFs into One Master PDF | PDMPublisher Options
description: Combine exported PDFs into a single master PDF.
ms.date: 08/09/2026
ms.topic: reference
---

# Merge Exported PDFs into One Master PDF

![Merge exported PDFs setting](/images/pdmpublisher/screenshots/options-022-property-merge-exported-pdfs-into-one-master-pdf.png)

Combines exported PDFs into a single master PDF.

> [!NOTE]
> This setting is available in both the **PDM task** and **SOLIDWORKS add-in**.

This option is for assembly processing. It only works when [Export References to File Formats Individually](export-references-individually.md) is enabled, because PDMPublisher needs the assembly references to create the individual PDFs before it can merge them.

Required setup:

- Select `PDF` in [File Formats](file-formats.md).
- Enable [Export References to File Formats Individually](export-references-individually.md).
- Process an assembly: launch the PDM task on an assembly or open the assembly in SOLIDWORKS before publishing from the add-in.

> [!TIP]
> Enable [PDF Bookmarks](pdf-bookmarks.md) and [Add Table of Content to Merged PDF](add-table-of-content-to-merged-pdf.md) when the merged PDF needs navigation.
