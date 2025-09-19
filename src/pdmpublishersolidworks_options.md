---
title: PDMPublisher for SOLIDWORKS 3D (Options Tab)
description: Learn how to configure the PDMPublisher in SOLIDWORKS.
---

# Options Tab (Defualt Tab)
<div style="display: flex; center; gap: 1em; margin: 2em 0;">
    <a href="https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher" class="download-button" style="display: inline-block; padding: 10px 20px; background-color: #0078d7; color: white; text-decoration: none; border-radius: 5px; font-weight: bold;">
        📥 Download PDMPublisher (free version)
    </a>
    <a href="https://bluebyte.biz/product/pdmpublisher-solidworks" class="download-button" style="display: inline-block; padding: 10px 20px; background-color:rgb(17, 78, 20); color: white; text-decoration: none; border-radius: 5px; font-weight: bold;">
        🛒 Purchase a License
    </a>
</div>



This section outlines all the options in the **PDMPublisher** home tab:

---

## Export Location

Location where to export generated files. 

  - The location can be in or outside  SOLIDWORKS PDM vault.
  - The Browse button allows the user to specify the destination folder for the exported files, making it easy to direct them to any desired location.
  - The export location can be defined dynamically, allowing the destination folder to be determined by the selected file properties.
  - Must not end with `\`.


![Export Location button](/images/RMBButton.png)

---

## Customize Location
Custom export locations based on file extension.

  - Customize location allows users to define export locations based on file extension, ensuring that each file type is assigned a unique destination path. 
  - The checkboxes indicate which file types will be exported to their specified locations. Any file type whose checkbox is not selected will default to the base export location.

>[!NOTE]
> This feature is available exclusively in the full version of PDMpublisher.

![Custom File Locations](/images/CUSTOMEXPORTLOCATIONSSW.png)

---

## File name

Exported file name(s).

 - The Filename field defines the name assigned to the generated file(s). 
 - This value is determined by the properties selected within the add-in.
 - At least one file property driven value must be applied to create unique file names.
 - Characters can be manually entered between dynamic properties to separate the properties. For example: filename`_`revision (Certain characters are not permitted in filenames due to Windows Explorer restrictions)

>[!NOTE]
> The list of SOLIDWORKS properties available for use in the filename is determined by the active document and the specific properties it contains.


![Filename Properties](/images/FilenameProperties2.png)


---

## File Formats

File formats selected for export.

Multiple file formats can be exported simultaneously by checking the corresponding boxes.

The supported file formats are: 

1. **PDF (Portable Document Format)**: A versatile format for sharing documents that preserves formatting across different devices.
2. **DWG (Drawing)**: A file format used in AutoCAD for creating and editing 2D and 3D drawings.
3. **DXF (Drawing Exchange Format)**: A format designed for interoperability between AutoCAD and other software, facilitating data exchange.
4. **IGS (Initial Graphics Exchange Specification)**: A neutral file format used to exchange 2D and 3D CAD data between different software platforms.
5. **U3D (Universal 3D)**: A file format for 3D models, commonly embedded in documents to provide interactive 3D visualization.
6. **STL (Stereolithography)**: A widely used format for 3D printing that represents the surface geometry of a 3D object.
7. **STEP (Standard for the Exchange of Product Model Data)**: A format that enables compatibility and data exchange between different CAD systems.
8. **EPRT (eDrawings Part File)**: A file format used for 3D model representations in eDrawings software.
9. **EASM (eDrawings Assembly File)**: A format for representing assemblies in eDrawings, allowing visualization of multi-part models.
10. **HTML (HyperText Markup Language)**: The standard markup language for creating web pages, allowing the display of text, images, and links.
11. **X_T (Parasolid Model File)**: A format used for 3D modeling in CAD applications, representing geometric data.

---

## Export document to file formats individually

Export individual files.

When enabled, this exports the document and its referenced documents individually to the selected output folder. This does not affect merging and archiving when it is off.

---

## Merge exported PDFs into one master PDF

Merge all PDFs into a combined document.

When enabled, all exported PDFs of the affected assembly are merged into a single PDF.

---

## Ignore sub-assembly children when condition checks fail

Condition check on parent assemblies will ignore children when failed.

When conditions are applied and this option is enabled, the children of sub-assemblies that fail the condition checks will be ignored (not processed). 

---

## Archive all exported documents (.zip)

Create a zip file of all exported documents.

---

## Convert multiple configurations

Convert all part and assembly configurations. 

When enabled, this option processes each configuration individually and exports them according to the selected criteria.

>[!NOTE]
> Configuration Name is required in the filename field. (shown below)

![Configuration Name](/images/ConfigurationNameRequired.png)

---

## Add table of content to merged PDF

Creates a table of contents for a merged PDF export.

 - When enabled, automatically generates and inserts a table of content into the merged PDF.
 - Users can choose to use the default settings or customize values to suit their specific requirements.
 - Custom values are derived from the SOLIDWORKS file properties of the currently active document.

![Defualt Table Of Contents](/images/TableOfContents1.png)

![Custom Table Of Contents](/images/TableOfContentsCustomize.png)

- The example below shows a custom **PartNumber**,**Status**, and **Qty** column. When a property does not exist in the SOLIDWORKS file(s), the column will be blank.

![Example Custom Table Of Contents](/images/TableOfContentsExample1.png)

---

## Convert sheet metal parts to 1:1 flat pattern DXF

Exports the flat pattern of sheet metal parts as 1:1 DXF.

 - The term 'FlatPattern' will be appended to the filename.
 - This feature will recongize sheet metal parts and export them as a flat pattern.

 >[!NOTE]
> This does not require the DXF file format to be selected for export in the File Formats.

---

## PDF bookmarks

Add bookmarks to merged PDFs.

Define the pattern to use for bookmarks in the merged PDF (e.g., chapter titles, part names).

---

## Publish

Time to export!

The **Publish** button executes the add-in using all applied settings. The process can be canceled at any time by selecting the **Cancel** button in the progress bar.

The **Publish** button also provides the option to select between available SOLIDWORKS PDM Vaults, if installed and configured. Use the down arrow on the right to access the installed vaults.

![Publish Button](/images/PublishButtonWithVault.png)

 >[!WARNING]
  > Linking the **Publish** button to vault is critical to ensure the generated files are able to be checked in/out properly during the export process.

>[!TIP]
  > To unlink the **Publish** button from a vault, click the dropdown arrow and select the active vault name. This action will remove the vault association.