---
title: Special Variables | PDMPublisher Conditions
description: Built-in variables available in PDMPublisher conditions.
ms.date: 08/09/2026
ms.topic: reference
---

# Special Variables

Special variables let conditions check common file information without requiring a PDM variable.

The SOLIDWORKS add-in includes built-in values and custom properties available from the active document and its references. The dropdown only shows values available in the current document context.

![Condition variable selection in PDMPublisher for SOLIDWORKS](/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Dropdown2_Light_100.png)

Common special variables include:

- `FileName`
- `FilePath`
- `FolderName`
- `FolderPath`
- `ConfigurationName`

Use these when the condition depends on common file or configuration information. PDM values are available only when the add-in has an applicable PDM context and the value appears in the menu.
