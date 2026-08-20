---
title: Sheets to Export | PDMPublisher Options
description: Choose which drawing sheets are exported and understand the all-sheets fallback when no names match.
ms.date: 08/19/2026
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
- `Sheets matching name` exports sheets that match [Sheet Name Pattern](sheet-name-pattern.md). If no sheets match, PDMPublisher exports all sheets.

## Matching Fallback

- A drawing with one sheet always exports its only sheet without evaluating the pattern.
- A drawing with two or more sheets exports only the matching sheets when one or more names match.
- If a drawing with two or more sheets has no matching sheet names, PDMPublisher exports every sheet and records the fallback in the log.

> [!IMPORTANT]
> A pattern that matches nothing no longer produces an empty sheet selection. Review the task log or add-in Logs tab if all sheets were exported unexpectedly.

Use `Sheets matching name` when drawings contain manufacturing, reference, or internal sheets that should not be exported.
