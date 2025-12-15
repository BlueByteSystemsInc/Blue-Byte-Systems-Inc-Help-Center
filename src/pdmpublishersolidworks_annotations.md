---
title: PDMPublisher for SOLIDWORKS 3D (Annotations)
description: How to configure and use the annotations tab.
---

# Annotations Tab
<div style="display: flex; center; gap: 1em; margin: 2em 0;">
    <a href="https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher" class="download-button" style="display: inline-block; padding: 10px 20px; background-color: #0078d7; color: white; text-decoration: none; border-radius: 5px; font-weight: bold;">
        📥 Download PDMPublisher (free version)
    </a>
    <a href="https://bluebyte.biz/product/pdmpublisher-solidworks" class="download-button" style="display: inline-block; padding: 10px 20px; background-color:rgb(17, 78, 20); color: white; text-decoration: none; border-radius: 5px; font-weight: bold;">
        🛒 Purchase a License
    </a>
</div>

This section provides an overview of the **Annotations tab** and explains the available options for customizing exported annotations.

---

## Creating Custom Annotations and/or Watermarks

 - Select the  **"A"** button (Add annotation) in the top right corner. A new annotation box will appear in the window below.

![Adding an Annotation](/images/AddingAnnotations1.png)

---
## Adding Annotation Text
 - From the newly created annotation box, you can enter custom text and/or link the annotation to properties contained within the file.

>[!NOTE]
> The list of SOLIDWORKS properties available for use in the annotation is determined by the active document and the specific properties it contains.

![Adding an Annotation](/images/AddingAnnotations2.png)

---
## Formating the Annotation Text
- Once the annotation text is added, you can adjust its formatting, including font, size, bold, or italicize.

>[!NOTE]
>Each annotation can use a different font type and size, and they can be controlled independently. The active annotation being edited is highlighted with a blue shadow for easy identification.

![Adding an Annotation](/images/AddingAnnotations3.png)

---

## Watermarks

- Selecting the **Watermark** checkbox will rotate the active annotation 45 degrees during publishing. The text will also be made semi-transparent to avoid obscuring the content of the published file.

![Watermark Example](/images/WaterMark1.png)

---

## Active Checkbox
- The **Active** checkbox determines whether the selected annotation will be included in the published output.
>[!NOTE]
>New annotations are active by default.

---

## QR Code
- This option converts the active annotation into a QR code that can be scanned using any smart device equipped with a camera. The same as any other annotation, the QR code can be placed anywhere on the drawing.

![Adding an Annotation](/images/QRcodeCheckbox.png)
![QR Code Example](/images/QRcodeExample.png)

>[!NOTE]
>The size of the QR code is controlled by the **Width** setting located to the right of the QR Code checkbox.

---

## Annotation Position

- Each annotation can be repositioned manually by clicking and dragging from its bottom-left corner to the desired location.

![Adding an Annotation](/images/AddingAnnotations5.png)

- Alternately, Each annotation can be set using the X and Y coordinates. X is a percentage relative to the width and Y is a percentage relative to the height of the sheet.

- It is also possible to copy the position of existing annotations. This is done by following the steps below.

    1. In PDMpublisher, navigate to the Annotations tab.

    2. Select the PDMpublisher annotation that you want to position on the drawing.

    3. In the active SOLIDWORKS drawing, select an existing note that will be used as a reference for positioning.

    4. Return to the Annotations tab in PDMpublisher and click **Copy XY from Note**.

    5. The X and Y coordinates of the selected SOLIDWORKS note are copied.

    6. The PDMpublisher annotation is automatically positioned at the same location.

    7. Once positioning is complete, delete the temporary SOLIDWORKS note from the drawing sheet.

    8. Click Publish to generate the output.


![Adding an Annotation](/images/AddingAnnotations6.png)

![Adding an Annotation](/images/AddingAnnotations4.png)

---

## Sheets

 - **Sheets** specifies which page where the annotation(s) will be placed on multiple page drawings. Each annotation is individually controlled by the **Sheets** feature.

![Sheets Options](/images/AnnotationSheets1.png)