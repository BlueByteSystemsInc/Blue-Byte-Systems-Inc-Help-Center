---
title: Evaluation Rules | PDMPublisher Conditions
description: How PDMPublisher evaluates condition groups and configurations.
ms.date: 08/09/2026
ms.topic: reference
---

# Evaluation Rules

PDMPublisher checks conditions before exporting a file.

> [!NOTE]
> These group rules are shared by the **PDM task** and **SOLIDWORKS add-in**. The PDM task can evaluate PDM card variables; the add-in evaluates properties from the active SOLIDWORKS document and resolved references.

![Condition group](/images/pdmpublisher/screenshots/conditions-(2)-002-condition-root-.png)

General rules:

- Enabled condition groups are evaluated by their AND or OR setting.
- Disabled conditions and disabled groups are skipped.
- A file is processed only when the condition setup allows it.
- If a condition uses a specific configuration, PDMPublisher reads the value from that configuration.
- In the PDM task, use `@` when the value is stored on the file's `@` tab.

For assembly publishing, conditions are evaluated against the files being considered for export.
