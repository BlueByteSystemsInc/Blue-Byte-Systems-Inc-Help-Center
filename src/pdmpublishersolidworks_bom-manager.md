---
title: BOM Manager | PDMPublisher for SOLIDWORKS
description: Configure BOM columns, display type, grouping, and component-exclusion conditions in PDMPublisher for SOLIDWORKS.
ms.date: 09/19/2026
ms.topic: how-to
---

# BOM Manager

Open **PDMPublisher > BOM Manager** to review and work with the bill of materials for the active assembly.

![BOM Manager main window showing an indented assembly BOM](/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Main_window_Default_Light_100.png)

The main window provides the BOM type and column-template selectors, property columns, find and filtering controls, grouping, component exclusions, Excel import and export, and **Apply**. Select the gear button to open the persistent BOM Manager settings described below.

Open **PDMPublisher > Settings > BOM Manager** under **Bill Of Materials**.

![BOM Manager settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_BOM_Manager_Default_Light_100.png)

BOM Manager defines the default structure used when PDMPublisher produces or displays bill-of-material information.

| Setting | What it controls |
| --- | --- |
| **Default column template** | Selects the saved set and order of BOM columns. |
| **Default BOM display type** | Selects the SOLIDWORKS BOM structure, such as an indented hierarchy. |
| **Group by** | Groups rows by text, properties, or placeholders. Leave it empty for a flat ungrouped result. |
| **Ignore Components** | Opens the condition editor used to omit matching components from the BOM. |

## Configure the defaults

1. Select a **Default column template**.
2. Select the **Default BOM display type** appropriate for the assembly structure.
3. If rows should be grouped, enter a **Group by** expression and use its placeholder menu to insert document values.
4. Select **Ignore Components** to define exclusions. Choose whether any condition or all conditions must match, then add the required property rules.
5. Select **OK** to save the settings.

![Ignore Components condition editor for BOM Manager](/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Ignore_components_Default_Light_100.png)

Exclusion conditions affect BOM membership; they do not suppress or delete components in the SOLIDWORKS assembly.
