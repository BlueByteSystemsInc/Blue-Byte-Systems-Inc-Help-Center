---
title: Annotations | PDMPublisher for SOLIDWORKS
description: Find the focused documentation for annotation content, appearance, placement, and settings transfer.
ms.date: 09/15/2026
ms.topic: how-to
---

# Publishing Annotations

Annotations place text, SOLIDWORKS property values, watermarks, or QR codes on exported drawing sheets and PDFs. The selected [profile](pdmpublishersolidworks_profiles.md) stores the annotation collection.

Select **PDMPublisher > Annotations** to edit the active Publish profile, or use the command arrow to open a named profile. Use the focused pages beneath **Publishing Annotations** in the TOC:

![Choose the Publish profile whose annotations you want to edit](/images/pdmpublisher/solidworks/annotations-profile-menu-20260908.png)

![Annotation editor and its controls](/images/pdmpublisher/solidworks/annotations-editor-controls-20260908.png)

## Annotation Editor Controls

| Control | What it does |
| --- | --- |
| **Add annotation** | Adds a new annotation row to the selected profile. |
| Annotation text | Sets literal text and placeholders evaluated during publishing. |
| Font and size | Selects the typeface and point size. |
| **Bold** / **Italic** | Applies emphasis to the annotation text. |
| **Watermark** | Renders the annotation as a watermark. |
| **Show annotation** | Includes the annotation during export. Clear it to keep the definition without publishing it. |
| **QR code** | Renders the evaluated annotation value as a QR code. |
| **Width (mm)** | Sets the QR code or annotation width in millimetres. |
| **Drawing background** | Controls the drawing background used by the positioning preview. |
| **Show placeholders** | Shows placeholder names in the preview instead of evaluated values. |
| **Copy X,Y** | Copies the position of the selected SOLIDWORKS drawing note into the annotation's X and Y fields. |
| **Position X / Y (%)** | Positions the annotation as a percentage of the sheet width and height. |
| **Sheets** | Chooses which drawing sheets receive the annotation. |
| Names separated by comma | Limits a named-sheet selection to the comma-separated sheet names. |
| **OK** / **Cancel** | Saves the profile changes or closes the editor without saving them. |

The drawing area is a positioning preview. Adding or moving an item there does not add a SOLIDWORKS note to the source drawing.

| Category | Pages |
| --- | --- |
| Content | [Add Annotation](pdmpublisher-annotations/add-annotation.md), [Annotation Text](pdmpublisher-annotations/annotation-text.md), and [SQL Query Placeholders](pdmpublisher-annotations/sql-query-placeholders.md) |
| Appearance | [Text Formatting](pdmpublisher-annotations/text-formatting.md), [Watermark](pdmpublisher-annotations/watermark.md), and [Active](pdmpublisher-annotations/active.md) |
| Placement | [Position](pdmpublisher-annotations/position.md) and [Sheets](pdmpublisher-annotations/sheets.md) |
| Settings transfer | [Import and Export Annotations](pdmpublishersolidworks-annotation-files.md) |

> [!NOTE]
> Annotation controls are shared with the PDM task, but the SOLIDWORKS add-in obtains properties from the active document and saves annotations in the selected Publish profile.
