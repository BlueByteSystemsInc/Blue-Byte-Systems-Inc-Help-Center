---
title: Export References to File Formats Individually | PDMPublisher Options
description: Export referenced documents as standalone output files.
ms.date: 08/09/2026
ms.topic: reference
---

# Export References to File Formats Individually

![Export references individually setting](/images/pdmpublisher/screenshots/options-014-property-export-references-to-file-formats-individually.png)

Exports referenced components as their own files in the selected formats.

> [!NOTE]
> This setting is shared by the **PDM task** and **SOLIDWORKS add-in**, but the two products obtain their assembly references differently.

In practice, this is used when an assembly publish should also create output for the components in that assembly. It is most useful for assemblies with repeated components, multiple configurations, or nested references.

## Requirements by Product

| Product | Requirements |
| --- | --- |
| **PDM task** | Run the task on an assembly and select a BOM [Template](template.md) with the required name, configuration, and quantity columns. |
| **SOLIDWORKS add-in** | Open the assembly in SOLIDWORKS. The add-in reads the resolved assembly references directly and does not require the PDM task BOM Template setting. |

In both products, suppressed, unresolved, excluded, or condition-filtered components can change the set of references processed.

## BOM Template

> [!IMPORTANT]
> For the **PDM task**, it is critical to configure the PDMPublisher [Template](template.md) option before enabling this setting. If the template is not selected, or if it does not include the required name, configuration, and quantity columns, PDMPublisher may export missing or incorrect reference files. This requirement does not apply to the SOLIDWORKS add-in.

The PDM task can optionally use the first named BOM saved on the associated assembly drawing. See [Use Drawing-Derived BOM](use-drawing-derived-bom.md). The configured Template remains required as a fallback.

For template setup requirements, see [Template](template.md).

> [!NOTE]
> This setting is independent from PDF merging and ZIP archiving.
