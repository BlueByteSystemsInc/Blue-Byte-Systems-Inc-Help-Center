---
title: Conditions Task Page | PDMPublisher | SOLIDWORKS PDM
description: Use conditions to include or exclude files before exporting.
ms.date: 08/09/2026
ms.topic: conceptual
---

# Conditions Task Page

Use the Conditions task page to decide which files should be processed by the task.

> [!IMPORTANT]
> This is the **PDM task** Conditions page. The condition editor is also used by the SOLIDWORKS add-in, but its values come from the active SOLIDWORKS document and references. See [SOLIDWORKS Add-in Conditions](conditions_solidworks.md).

![PDMPublisher Conditions page](/images/pdmpublisher/screenshots/task-setup-conditions.png)

Conditions are checked before export. Files that do not match the condition rules are skipped.

## Condition Settings

| Setting | Summary | Details |
|---|---|---|
| Add Conditions and Groups | Build simple or nested AND/OR condition rules. | [Open](pdmpublisher-conditions/add-conditions-and-groups.md) |
| Condition Fields | Choose the variable, comparison type, value, and configuration. | [Open](pdmpublisher-conditions/condition-fields.md) |
| Special Variables | Use built-in values such as file name, state, revision, and workflow. | [Open](pdmpublisher-conditions/special-variables.md) |
| Condition Types | Select text, number, date, or yes/no comparisons. | [Open](pdmpublisher-conditions/condition-types.md) |
| Evaluation Rules | Understand how configurations and condition groups are evaluated. | [Open](pdmpublisher-conditions/evaluation-rules.md) |
