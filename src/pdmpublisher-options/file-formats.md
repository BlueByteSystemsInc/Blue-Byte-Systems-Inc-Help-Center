---
title: File Formats | PDMPublisher Options
description: Select the file formats exported by the PDMPublisher PDM task or SOLIDWORKS add-in.
ms.date: 10/08/2026
ms.topic: reference
---

# File Formats

![File Formats setting in PDMPublisher for SOLIDWORKS](/images/pdmpublisher/solidworks/settings-publish-20261007.png)

Selects the output formats created during publishing. Both products can generate multiple formats in one job.

> [!NOTE]
> This setting is shared by the **PDM task** and **SOLIDWORKS add-in**. The task can process selected PDM files, including supported Office documents. The add-in exports the SOLIDWORKS document currently open and its resolved references.

![File Formats dropdown in PDMPublisher for SOLIDWORKS](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Dropdown13_Light_100.png)

## Format Names and Icons

Select one or more formats using the dropdown checkboxes. Each entry shows its name, extension, and icon.

## Supported Outputs

| Group | Formats |
| --- | --- |
| PDF and MBD | Adobe PDF (`pdf`), 3D PDF - MBD (`_3dpdf`) |
| Drawings | DWG (`dwg`), DXF (`dxf`) |
| [eDrawings](edrawings-export-settings.md) | eDrawings Part (`eprt`), eDrawings Assembly (`easm`), eDrawings Drawing (`edrw`) |
| CAD and interchange | STEP (`step`), IGES (`igs`), STL (`stl`), Parasolid Text (`x_t`), Parasolid Binary (`x_b`), ACIS (`sat`), 3D XML (`3dxml`), 3MF (`3mf`), IFC (`ifc`), Universal 3D (`u3d`), VRML (`wrl`), VDAFS (`vda`), CATIA Graphics (`cgr`), HCG (`hcg`), HOOPS HSF (`hsf`) |
| Web and images | HTML (`html`), Microsoft XAML (`xaml`), PNG (`png`), JPEG (`jpg`), TIF (`tif`), Bitmap (`bmp`), Adobe Illustrator (`ai`), Adobe Photoshop (`psd`) |

> [!NOTE]
> PDMPublisher removes formats that are not valid for the source document type. Some formats also depend on the SOLIDWORKS version and export capabilities installed on the computer. The task uses its configured SOLIDWORKS version; the add-in uses the currently running version.

## eDrawings Output

Configure measurement and property export in [eDrawings Export Settings](edrawings-export-settings.md).


## PDF Output

For a part or assembly, PDF output uses its associated drawing. The task first looks for a drawing with the same filename in the same folder; [Use PDM Search to Locate Drawings](use-pdm-search-to-locate-drawings.md) enables a wider vault search.

For a task launched on a drawing, choose its outputs under **File Formats**. Choose outputs for its referenced model separately under [Referenced model formats](../options.md#export-referenced-models-from-drawings).
