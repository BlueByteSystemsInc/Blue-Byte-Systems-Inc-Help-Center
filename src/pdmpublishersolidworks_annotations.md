---
title: Publishing Annotations
ms.topic: how-to
---

# Publishing Annotations

Annotations belong to the selected publishing profile. Open **PDMPublisher > Annotations** to edit them. The active drawing supplies the positioning background.

![SOLIDWORKS annotation editor with selected watermark and QR preview](/images/pdmpublisher/screenshots/addin-annotations.png)

Select a note to show its properties sidebar. Click empty space to hide the sidebar and use the full preview area.

- Use **A** to add a note. Double-click a note to edit its text or insert a property from the dropdown. Drag the editor edges to resize the editing box.
- Choose the font, point size, bold, italic, and text color on the toolbar. Click the color swatch or type a complete `#RRGGBB` color.
- Set **Position** to percent, millimeters, or inches. X is measured from the left and Y from the bottom; a watermark uses its center as the anchor.
- **Include in export** keeps or omits the note without deleting its definition. **Sheets** selects all sheets, the first sheet, or named sheets.
- **Watermark** rotates text 45 degrees behind the drawing. It starts gray; you can change the color. Clearing Watermark keeps the text styling.
- **QR code** renders the note as an image. Double-click to edit its text. Width is in inches when inch positioning is selected, otherwise millimeters—never percent.
- Press **Ctrl+A** outside text editing to select every note, then **Delete** to remove them.

Property placeholders are evaluated when publishing. The QR preview encodes the template text; the exported QR code encodes the evaluated value.

**Custom properties** lists document and configuration properties from loaded drawings and models. Publishing uses the associated/reference model and its configuration, falling back to file-level properties. The menu does not bind a placeholder to a particular model.

Choose **OK** to save the profile or **Cancel** to discard the edits. Temporary publishing annotations are removed from the source drawing after export.
