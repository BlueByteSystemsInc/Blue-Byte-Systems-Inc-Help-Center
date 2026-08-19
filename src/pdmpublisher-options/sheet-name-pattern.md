---
title: Sheet Name Pattern | PDMPublisher Options
description: Filter drawing sheets by name.
ms.date: 08/13/2026
ms.topic: reference
---

# Sheet Name Pattern

![Sheet name pattern setting](/images/pdmpublisher/screenshots/options-026-property-sheet-name-pattern.png)

Wildcard pattern used when **Sheets to export** is set to matching sheet names.

> [!NOTE]
> This setting is available in both the **PDM task** and **SOLIDWORKS add-in**.

> [!NOTE]
> Sheet-name matching applies only when a drawing contains two or more sheets. If a drawing contains one sheet, PDMPublisher ignores the pattern and exports that sheet.

Use `*` to match any text and `?` to match one character.

Examples:

- `*` matches every sheet.
- `Sheet*` matches `Sheet1`, `Sheet2`, and `Sheet-Main`.
- `REV?` matches `REV1` or `REVA`.
- `DXF*` matches sheets whose names start with `DXF`.

## Match the Configuration Name

Use `(ConfigurationName)` when a drawing sheet is named after the configuration being exported. PDMPublisher evaluates the placeholder before matching the sheet name.

For example, if the selected configuration is `Machined`:

| Sheet name pattern | Evaluated pattern | Matches | Does not match |
| --- | --- | --- | --- |
| `(ConfigurationName)` | `Machined` | `Machined` | `Default`, `Machined-DXF` |
| `(ConfigurationName)*` | `Machined*` | `Machined`, `Machined-DXF` | `Default` |
| `*(ConfigurationName)*` | `*Machined*` | `Machined`, `DXF-Machined`, `Machined-REV-A` | `Default` |

As another example, suppose a drawing contains sheets named `Default`, `Machined`, and `Welded`. When the selected configuration is `Welded` and the pattern is `(ConfigurationName)`, only the `Welded` sheet is exported.

This setting is used by [Sheets to Export](sheets-to-export.md) when that option is set to `Sheets matching name`.
