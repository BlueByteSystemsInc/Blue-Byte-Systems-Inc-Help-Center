---
title: Ask User to Select Configuration on Task Launch | PDMPublisher Options
description: Prompt users to choose a configuration before publishing.
ms.date: 08/09/2026
ms.topic: reference
---

# Ask User to Select Configuration on Task Launch

![Ask user to select configuration setting](/images/pdmpublisher/screenshots/options-006-property-ask-user-to-select-configuration-on-startup.png)

Prompts the user to choose a configuration on task launch.

![Ask user to select configuration dialog](/images/pdmpublisher/screenshots/ask-user-specify-configuration-dialog.png)

Use this for simple cases where the user only needs to choose a configuration and quantity multiplier on the machine that launched the task.

- **Configuration** selects which model configuration to export.
- The selected configuration is used for export, variable values, and file naming.
- **Custom Quantity Multiplier** multiplies the `(BOMQuantity)` placeholder.
- Example: if `(BOMQuantity)` is `2` and the multiplier is `3`, the task uses `6`.
- When activity tracking is enabled, the log notes that a custom quantity multiplier was used.
- Select `OK` to continue or `Cancel` to stop before publishing.

> [!NOTE]
> [Ask User to Specify Files on Task Launch](ask-user-to-specify-files-on-task-launch.md) overrides this option because it controls files, configurations, formats, and export location.
