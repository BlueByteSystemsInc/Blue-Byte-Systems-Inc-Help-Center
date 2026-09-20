---
title: Ignore Sub-Assemblies Children When Condition Checks Fail | PDMPublisher Options
description: Skip children of sub-assemblies rejected by conditions.
ms.date: 08/09/2026
ms.topic: reference
---

# Ignore Sub-Assemblies Children When Condition Checks Fail

![Ignore sub-assembly children setting in PDMPublisher for SOLIDWORKS](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox4_Ignore_sub-assembly_children_when_condition_checks_fail_Light_100.png)

When conditions reject a sub-assembly, this option prevents that sub-assembly's children from being processed.

> [!NOTE]
> This setting is available in both the **PDM task** and **SOLIDWORKS add-in**. It affects assembly reference processing and has no effect on a standalone part or drawing.

> [!WARNING]
> If a rejected sub-assembly contains children that should still be exported independently, leave this option off.
