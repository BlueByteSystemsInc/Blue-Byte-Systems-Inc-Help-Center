---
title: Annotations | PDMPublisher for SOLIDWORKS
description: Add and position text, property values, watermarks, and QR codes on exported drawing sheets.
ms.date: 08/18/2026
ms.topic: how-to
---

# Annotations

Annotations place text, SOLIDWORKS property values, watermarks, or QR codes on exported drawing sheets and PDFs. Annotation settings are stored with the selected profile.

![PDMPublisher for SOLIDWORKS Annotations page](/images/pdmpublisher/solidworks/annotations.png)

## Annotation Settings

The detail pages below are shared with the PDM task because the controls behave the same. Each page identifies where its available values come from in the add-in.

| Setting | Summary | Details |
| --- | --- | --- |
| Add Annotation | Create a new annotation box in the selected profile. | [Open](pdmpublisher-annotations/add-annotation.md) |
| Annotation Text | Enter fixed text or values from the active SOLIDWORKS document. | [Open](pdmpublisher-annotations/annotation-text.md) |
| SQL Query Placeholders | Retrieve text from SQL using the file being published. | [Open](pdmpublisher-annotations/sql-query-placeholders.md) |
| Text Formatting | Set font, size, bold, italic, and color. | [Open](pdmpublisher-annotations/text-formatting.md) |
| Watermark | Rotate and fade an annotation. | [Open](pdmpublisher-annotations/watermark.md) |
| Active | Include or skip an annotation without deleting it. | [Open](pdmpublisher-annotations/active.md) |
| Position | Set approximate visual or exact X/Y placement. | [Open](pdmpublisher-annotations/position.md) |
| Sheets | Select the drawing sheets that receive an annotation. | [Open](pdmpublisher-annotations/sheets.md) |

## Add Annotation Content

1. Select **A+** to add an annotation.
2. Enter fixed text in the annotation box.
3. Use `>...` to insert file properties or supported placeholders.
4. Select the annotation to format or position it.

The properties offered by the menu depend on the active SOLIDWORKS document and its available custom properties.

## Formatting Controls

Use the toolbar to set the font, size, bold, italic, watermark, visibility, and QR-code behavior for the selected annotation.

- **Watermark** rotates the annotation and makes it partially transparent.
- The active/visibility control determines whether the annotation is included.
- QR-code mode renders the annotation value as a scannable code.
- The color selector controls the annotation color.

Each annotation can have independent text and formatting.

## Position

Drag an annotation in the preview for an approximate visual position. Use the **X** and **Y** percentage fields for an exact location relative to the sheet width and height.

**Copy X/Y** copies a position from a selected SOLIDWORKS drawing note when that workflow is available. The copied coordinates can then be reused by the PDMPublisher annotation.

> [!NOTE]
> The preview is approximate. Use X and Y when repeatable placement is required across drawing sizes.

## Sheets

Use **Sheets** to control where the selected annotation appears in a multi-sheet drawing. Sheet selection is configured independently for each annotation.

## Remove an Annotation

Select the red delete control on the annotation to remove it from the profile.

## Pop Out

Select **Popout in separate window** when the task-pane width is too narrow for detailed annotation editing.

For the PDM task version of this workspace, see [Annotations Task Page](annotations.md).
