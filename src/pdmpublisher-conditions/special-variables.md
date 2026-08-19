---
title: Special Variables | PDMPublisher Conditions
description: Built-in variables available in PDMPublisher conditions.
ms.date: 08/09/2026
ms.topic: reference
---

# Special Variables

Special variables let conditions check common file information without requiring a PDM variable.

> [!NOTE]
> The **PDM task** includes vault values such as workflow, state, revision, and version. The **SOLIDWORKS add-in** includes the built-in values and custom properties available from the active document and its references. The dropdown only shows values available in the current product context.

![Condition variable dropdown](/images/pdmpublisher/screenshots/conditions-(2)-dropdown-000-condition-placeholder-values.png)

Common special variables include:

- `FileName`
- `FilePath`
- `FolderName`
- `FolderPath`
- `Revision`
- `Version`
- `Workflow`
- `State`
- `ConfigurationName`

Use these when the condition depends on common file information. Vault-only values require the PDM task or an available PDM context.
