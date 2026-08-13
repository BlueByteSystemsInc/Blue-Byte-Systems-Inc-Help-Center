---
title: Use @ Tab to Evaluate Paths | PDMPublisher Options
description: Evaluate export paths and filenames from the @ configuration tab.
ms.date: 08/13/2026
ms.topic: reference
---

# Use @ Tab to Evaluate Paths

![Use @ tab to evaluate paths setting](/images/pdmpublisher/screenshots/options-031-property-use-@-tab-to-evaluate-paths..png)

Evaluates dynamic variables in the export location and filename using the `@` tab.

Use this when the information needed to build the export path is stored on the file's `@` tab instead of a model-specific configuration tab.

This is useful when folder names, customer names, project numbers, release folders, or other path values are maintained on `@`.

For example, if the export location uses a variable from `@`:

```text
(VaultRootFolder)\Released PDFs\($ProjectNumber)
```

PDMPublisher reads `ProjectNumber` from the `@` tab and uses it to construct the final export path.

Use this with [Export Location](export-location.md) when the export folder depends on variables stored on `@`.
