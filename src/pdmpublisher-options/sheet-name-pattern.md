---
title: Sheet Name Pattern | PDMPublisher Options
description: Filter drawing sheets by name.
ms.date: 08/09/2026
ms.topic: reference
---

# Sheet Name Pattern

![Sheet name pattern setting](/images/pdmpublisher/screenshots/options-026-property-sheet-name-pattern.png)

Wildcard pattern used when **Sheets to export** is set to matching sheet names.

Use `*` to match any text and `?` to match one character.

Examples:

- `*` matches every sheet.
- `Sheet*` matches `Sheet1`, `Sheet2`, and `Sheet-Main`.
- `REV?` matches `REV1` or `REVA`.
- `DXF*` matches sheets whose names start with `DXF`.

This setting is used by [Sheets to Export](sheets-to-export.md) when that option is set to `Sheets matching name`.
