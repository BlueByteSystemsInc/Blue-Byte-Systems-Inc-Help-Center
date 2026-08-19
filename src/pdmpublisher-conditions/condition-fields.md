---
title: Condition Fields | PDMPublisher Conditions
description: Understand the variable, condition type, value, and configuration fields.
ms.date: 08/09/2026
ms.topic: reference
---

# Condition Fields

Each condition compares a file value against the rule you define.

> [!NOTE]
> The fields are shared by the **PDM task** and **SOLIDWORKS add-in**, but the available variables and configuration source depend on the product.

![Condition row](/images/pdmpublisher/screenshots/conditions-(2)-000-condition-conditionleaf.png)

| Field | Meaning |
|---|---|
| Variable | Variable or built-in value to check. |
| Condition Type | The comparison rule to apply. |
| Value | The value to compare against. |
| Configuration | Configuration to read the value from. In the PDM task, use `@` for values stored on the file's `@` tab. In the add-in, leave it empty to use the referenced or active SOLIDWORKS configuration where supported. |

Text comparisons are not case sensitive.
