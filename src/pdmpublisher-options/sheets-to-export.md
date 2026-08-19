---
title: Sheets to Export | PDMPublisher Options
description: Choose which drawing sheets are exported.
ms.date: 08/13/2026
ms.topic: reference
---

# Sheets to Export

![Sheets to export setting](/images/pdmpublisher/screenshots/options-027-property-sheets-to-export.png)

Controls whether drawing PDF exports include all sheets or only sheets whose names match a pattern.

> [!NOTE]
> This setting is available in both the **PDM task** and **SOLIDWORKS add-in**.

![Sheets to export dropdown](/images/pdmpublisher/screenshots/options-dropdown-001-sheets-to-export.png)

Options:

- `All sheets` exports every sheet in the drawing.
- `Sheets matching name` exports only sheets that match [Sheet Name Pattern](sheet-name-pattern.md).

> [!NOTE]
> `Sheets matching name` is applied only to drawings with two or more sheets. A drawing with one sheet always exports its only sheet; PDMPublisher does not evaluate the sheet-name pattern for that file.

Use `Sheets matching name` when drawings contain manufacturing, reference, or internal sheets that should not be exported.
