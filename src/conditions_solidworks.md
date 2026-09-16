---
title: Conditions | PDMPublisher for SOLIDWORKS
description: Find the focused documentation for building, evaluating, reviewing, importing, and exporting condition rules.
ms.date: 09/15/2026
ms.topic: how-to
---

# Publishing Conditions

Conditions decide which assembly files are included in a publish job. The selected [profile](pdmpublishersolidworks_profiles.md) stores the condition tree.

> [!IMPORTANT]
> Enable [Export References Individually](pdmpublisher-options/export-references-individually.md) when conditions must filter the active assembly and its referenced files.

Select **PDMPublisher > Conditions** to edit the active Publish profile, or use the command arrow to open a named profile. Use the focused pages beneath **Publishing Conditions** in the TOC:

![Choose the Publish profile whose conditions you want to edit](/images/pdmpublisher/solidworks/conditions-profile-menu-20260908.png)

![Condition editor and its controls](/images/pdmpublisher/solidworks/conditions-editor-controls-20260908.png)

## Condition Editor Controls

| Control | What it does |
| --- | --- |
| Enable check box | Enables the root, group, or condition row. Disabled items remain in the profile but are not evaluated. |
| Expand/collapse arrow | Shows or hides the children of a condition group. |
| **AND / OR** | Defines whether every child must pass (**AND**) or whether any child may pass (**OR**). |
| **+ (AND/OR)** | Adds a nested condition group. |
| **+ (Condition)** | Adds a condition row to the selected group. |
| **Variable** | Selects the property, file value, or special variable to evaluate. |
| **Comparison** | Selects the test applied to the variable. A new row remains **Undefined** until a comparison is chosen. |
| **Value** | Supplies the comparison value. |
| **Configuration** | Limits property evaluation to the named SOLIDWORKS configuration when applicable. |
| Delete (×) | Removes the corresponding group or condition. |
| **OK** / **Cancel** | Saves the condition tree or closes the editor without saving it. |

Build from the root downward. Use nested groups when one part of the rule needs different AND/OR behavior from its parent.

| Category | Pages |
| --- | --- |
| Build rules | [Add Conditions and Groups](pdmpublisher-conditions/add-conditions-and-groups.md) and [Condition Fields](pdmpublisher-conditions/condition-fields.md) |
| Values and comparisons | [Special Variables](pdmpublisher-conditions/special-variables.md) and [Condition Types](pdmpublisher-conditions/condition-types.md) |
| Processing | [Evaluation Rules](pdmpublisher-conditions/evaluation-rules.md), [Review Condition Results Before Export](pdmpublishersolidworks-condition-output.md), and [Import and Export Conditions](pdmpublishersolidworks-condition-files.md) |
