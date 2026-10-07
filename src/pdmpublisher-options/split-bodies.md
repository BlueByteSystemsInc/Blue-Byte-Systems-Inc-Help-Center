---
title: Split Bodies | PDMPublisher Options
description: Export multi-body parts into separate body files.
ms.date: 10/06/2026
ms.topic: reference
---

# Split Bodies

![Split Bodies setting in PDMPublisher for SOLIDWORKS](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox8_Split_bodies_Light_100.png)

Exports bodies from a multi-body part into separate files. The body name is appended to the generated filename.

> [!NOTE]
> This setting is available in both the **PDM task** and **SOLIDWORKS add-in**.

## Choose how bodies are grouped

When **Split Bodies** is enabled, select **Cut-list item grouping...** on the Publish page.

![Cut-list item grouping choices for Split Bodies](/images/pdmpublisher/screenshots/task-split-body-grouping-20260933.png)

- **Every body** exports a separate file for every body and appends the body name to the filename.
- **One per cut-list item** exports one representative body for bodies with matching geometry and material in the same cut-list item. The filename includes the quantity per part. A body that cannot be verified against its group is exported separately.

The grouping choice is stored with the task and is included when task settings are imported, exported, or shared by PIN. Existing tasks continue to use **Every body** until the setting is changed.

> [!IMPORTANT]
> This does not apply to sheet-metal flat-pattern exports. In the SOLIDWORKS add-in, enable [Export Sheet Metal Parts to 1:1 Flat Pattern DXF](export-sheet-metal-flat-pattern-dxf.md), then select **Export each sheet-metal body to a separate DXF** under **Flat Pattern Settings**. **Split Bodies** is not required for that workflow.
