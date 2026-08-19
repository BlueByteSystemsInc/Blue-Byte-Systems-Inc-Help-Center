---
title: Conditions | PDMPublisher for SOLIDWORKS
description: Filter the active document and assembly references with property conditions and nested AND/OR groups.
ms.date: 08/18/2026
ms.topic: how-to
---

# Conditions

Conditions decide which files are included in a publish job. They are most useful when the active document is an assembly and **Export references to file formats individually** is enabled.

![PDMPublisher for SOLIDWORKS Conditions page](/images/pdmpublisher/solidworks/conditions.png)

> [!IMPORTANT]
> Conditions affect assembly references and the assembly. Enable **Export references to file formats individually** on the PDMPublisher tab when conditions must filter referenced files.

## Build a Condition Tree

- **+ (Condition)** adds a comparison to the selected group.
- **+ (AND/OR)** adds a nested condition group.
- The **And/Or** selector determines whether all enabled children or any enabled child must pass.
- The checkbox beside a condition or group enables or disables it.
- The red delete control removes the condition or group.

Groups can be nested and reordered by dragging them.

## Condition Fields

| Field | Purpose |
| --- | --- |
| **Variable** | File property or built-in value to evaluate. |
| **Comparison** | Text, number, date, or Yes/No comparison. |
| **Value** | Expected value or pattern. Text comparisons are not case-sensitive. |
| **Configuration** | Configuration from which to read the property. Leave it empty to use the referenced configuration where supported. |

Built-in variables include Filename, FolderName, Revision, Version, Workflow, State, and ConfigurationName. The variable list also includes properties available from the active SOLIDWORKS document.

## Evaluation Behavior

PDMPublisher first tries to read a property from the referenced configuration. If the property is not present, it falls back to the document's Custom tab.

For an assembly reference with an empty Configuration field, the add-in evaluates the referenced configuration used by the assembly.

## Conditions Output Dialog

Enable **Show conditions output dialog** to review the files that passed before export and to adjust the final selection. Disable it when the condition tree should run without that confirmation step.

## Import, Export, and Help

- **Export...** saves the condition setup for backup or transfer.
- **Import...** loads a previously exported condition setup.
- **Help...** opens the condition documentation.

Select **Popout in separate window** when more room is needed to edit a large condition tree.
