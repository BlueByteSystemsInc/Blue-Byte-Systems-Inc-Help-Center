---
title: Advanced Formulas | PDMPublisher for SOLIDWORKS
description: Create reusable named expressions for PDMPublisher filenames, folders, and properties.
ms.date: 10/15/2026
ms.topic: how-to
---

# Advanced Formulas

Open **PDMPublisher > Settings > Advanced Formulas** to maintain named expressions shared by supported filename, folder, and property menus.

![Advanced Formulas settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)

Select **Add** or **Edit** to open the formula editor and build the named expression.

![Advanced Formula editor](/images/pdmpublisher/solidworks/ui-preview/Formulas/Formulas_Formula_editor_Default_Light_100.png)

| Command | Behavior |
| --- | --- |
| **Add** | Creates a named formula. |
| **Edit** | Opens the selected formula for changes. |
| **Delete** | Removes the selected formula after confirmation. Existing profiles that refer to it should be reviewed. |

Give each formula a name that describes its result, such as `Released filename` or `Customer output folder`. Build and test formulas with documents that contain values, missing values, configuration-specific values, and characters that are invalid in Windows filenames.

Formulas are definitions, not copied results. PDMPublisher evaluates a formula in the context of the document and configuration being processed. If the formula uses a property or external source, confirm that resource is available on every computer that imports the settings.

Defaults, external sources, and formulas are saved separately from the other utility settings.

## Arithmetic with Properties

Starting with **2026.10.45**, the shared advanced-formula engine supports addition, subtraction, multiplication, and division. These operators work wherever supported workflows evaluate an advanced formula, including named formulas used by filename, folder, and property menus.

For example, multiply two custom properties to calculate a total:

```text
=Property("UnitCost") * Property("Quantity")
```

With `UnitCost` set to `6.87` and `Quantity` set to `3`, the result is `20.61`. Use the actual names of your custom properties. `Property("Quantity")` reads that property; it does not automatically use an assembly occurrence count.

| Operator | Example | Result |
| --- | --- | --- |
| `+` Add | `=2 + 3` | `5` |
| `-` Subtract | `=10 - 4` | `6` |
| `*` Multiply | `=6.87 * 3` | `20.61` |
| `/` Divide | `=20 / 4` | `5` |

Multiplication and division run before addition and subtraction. Operators at the same precedence run left to right. Parentheses override that order:

```text
=2 + 3 * 4
```

returns `14`, while `=(2 + 3) * 4` returns `20`. Unary signs are supported, for example `=-Property("Adjustment")`.

### Combine Arithmetic with Other Formula Features

Use `&` to join text; `+` performs numeric addition:

```text
="Total: " & (Property("UnitCost") * Property("Quantity"))
```

Arithmetic can also be nested inside functions and comparisons:

```text
=IIf(Property("Quantity") > 10, Property("UnitCost") * 0.9, Property("UnitCost"))
```

Numeric SQL-source results can participate in arithmetic through `SQL("SourceName")`. Both synchronous and asynchronous evaluation use the shared arithmetic engine.

### Numeric Values and Errors

- Use a decimal point, such as `6.87`. Currency symbols, units, thousands separators, and decimal commas are not accepted as numeric operands.
- For a property containing `$6.87`, remove `$` first using [Property Doctor Find and Replace](pdmpublishersolidworks_property-doctor.md#find-and-replace-property-values), or use a separate numeric property.
- Empty or nonnumeric operands, division by zero, and results outside the supported decimal range produce an error rather than a numeric result.
- `IIf` evaluates both branches. Do not use `IIf` to hide a division by zero in an unused branch.
- Results use a decimal point and do not automatically add currency symbols or round to two decimal places.

Enter these expressions in the advanced-formula editor. Ordinary property text remains literal; typing an equation into a plain property value is not the same as assigning an advanced formula.

> [!TIP]
> Export all settings before making a broad formula change. One shared formula can affect several profiles and utility workflows.
