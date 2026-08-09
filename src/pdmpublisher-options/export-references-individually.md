---
title: Export References to File Formats Individually | PDMPublisher Options
description: Export referenced documents as standalone output files.
ms.date: 08/09/2026
ms.topic: reference
---

# Export References to File Formats Individually

![Export references individually setting](/images/pdmpublisher/screenshots/options-014-property-export-references-to-file-formats-individually.png)

Exports referenced components as their own files in the selected formats.

In practice, this is used when an assembly publish should also create output for the components in that assembly. It is most useful for assemblies with repeated components, multiple configurations, or nested references.

## Requirements

This option requires a few things to work correctly:

- The task must run on an assembly. References are calculated from the assembly structure.
- A BOM template must be selected in the PDMPublisher [Template](template.md) option.
- The selected BOM template must expose the columns PDMPublisher needs to calculate references and quantities.

## BOM Template

> [!IMPORTANT]
> It is critical to configure the PDMPublisher [Template](template.md) option before enabling this setting. If the template is not selected, or if it does not include the required name, configuration, and quantity columns, PDMPublisher may export missing or incorrect reference files.

For template setup requirements, see [Template](template.md).

> [!NOTE]
> This setting is independent from PDF merging and ZIP archiving.
