---
title: PDMPublisher for SOLIDWORKS 3D (Options)
description: Learn how to configure the PDMPublisher in SOLIDWORKS.
---

# PDMPublisher for SOLIDWORKS 

  <img src="../images/pdmpublishersolidworks.png"  alt="Tabs" width="800">

<div style="display: flex; gap: 1em; margin: 2em 0;">
    <a href="https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher" class="download-button" style="display: inline-block; padding: 10px 20px; background-color: #0078d7; color: white; text-decoration: none; border-radius: 5px; font-weight: bold;">
        📥 Download PDMPublisher>
    </a>
    <a href="https://bluebyte.biz/product/pdmpublisher-solidworks" class="download-button" style="display: inline-block; padding: 10px 20px; background-color:rgb(17, 78, 20); color: white; text-decoration: none; border-radius: 5px; font-weight: bold;">
        🛒 PDMPublisher License
    </a>
</div>

---
# PDMPublisher for SOLIDWORKS Options

This section outlines all the options in the PDMPublisher tab:

---

## Export Location

Location where to export the files. The location can be in or outside the vault. Must not end with `\`.

---

## File name (must include extension)

Name of the file. You need to include extension.

---

## File Formats

File formats to export. For example: PDF, DWG, DXF. You can select multiple formats.

---

## Export document and its references to file formats individually

When enabled, this exports the document and its referenced documents individually to the selected output folder. This does not affect merging and archiving when it is off.

---

## Merge exported PDFs into one master PDF

When enabled, all exported PDFs of the affected assembly are merged into a single PDF.

---

## Ignore sub-assemblies children when condition checks fail

When enabled, the children of sub-assemblies that fail condition checks will be ignored (not processed).

---

## Archive all exported documents (.zip)

Create a zip file of all exported documents.

---

## Print top-level assembly document

Adds the top-level assembly to the processing queue.

---

## Work with latest version

When enabled, the task will always work with the latest version of the file in PDM.

---

## Quick view mode (Drawings Only)

Open drawings in quick view mode (for faster performance when drawings are large or linked to multiple references).

---

## Convert multiple configurations

Convert all part and assembly configurations. Make sure to include the configuration name in the file name.

---

## Add table of content to merged PDF

Automatically generates and inserts a table of content into the merged PDF.

---

## Use Microsoft Print To PDF to save PDFs

Uses the built-in Microsoft Print To PDF feature to generate PDF files.

---

## Convert sheet metal parts to 1:1 flat pattern DXF

Exports the flat pattern of sheet metal parts as 1:1 DXF. The term 'FlatPattern' will be appended to the filename.

---

## Use PDM search to locate drawings

Locate drawings using PDM’s "Where Used" tab when they cannot be found in the same folder. The file names must match.


---

## Table type

Table of content or simple BOM table to include in the merged PDF.

---

## Paper size

Select the paper size used for the generated table of content or BOM document (e.g., A4, Letter, Tabloid).

---

## Watermark

The watermark text to apply to the exported files.

---

## PDF bookmarks

Define the pattern to use for bookmarks in the merged PDF (e.g., chapter titles, part names).
