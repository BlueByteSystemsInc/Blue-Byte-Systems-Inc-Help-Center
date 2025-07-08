---
title: Import and Export Task Settings | PDM2Excel | SOLIDWORKS PDM
description: How to use the import and export functionality for PDM2Excel tasks in the Options table.
---

## Importing and Exporting Task Settings in PDM2Excel


PDM2Excel makes it easy to share or reuse task settings through its built-in **Import** and **Export** buttons found in the **Options** setup tab. 

This feature is especially helpful when configuring multiple vaults, migrating settings, or distributing a standard configuration across teams.

>[!WARNING]
> **Important:** Do **not** copy and paste an existing task in the Administration tool. This can result in broken task settings or outdated references. Instead, always create a **new task**, then **import** your previously exported configuration file.


### Where to Find Import and Export

To access the **Import** and **Export** buttons:

1. Open the **PDM Administration Tool**.
2. Right-click on the **Tasks** node and choose **New Task** or edit one.
3. In the **Select Task Add-in** dropdown, choose **PDM2Excel** if this is a new task.
4. Navigate to the **Options** tab — you’ll find the **Import** and **Export** buttons at the bottom of the page:
   ![exportimport](/images/exportimport.png)



These buttons allow you to quickly save or load task configurations.


### How to Export Task Settings

Exporting allows you to save your current task configuration to a file:

1. Follow the steps above to reach the **Options** tab.
2. Click the **Export** button.
3. Save the file to a safe location.

This file includes all configuration details such as BOM layout, file output settings, drawing options, and advanced preferences like cut list support.


### How to Import Task Settings

To import saved task settings into a new task:

1. Right-click on **Tasks** in the PDM Administration Tool and choose **New Task**.
2. Select **PDM2Excel** from the add-in dropdown.
3. In the **Options** tab, click the **Import** button.
4. Choose the task settings file that was previously exported.

Your task will now be populated with all previously saved configurations.

> This method ensures stability and compatibility across versions and vaults.


### Best Practices

- Always **export** your configuration before making major changes.
- Use **Import** to replicate tasks instead of duplicating them manually.
- Label your exported configuration files clearly (e.g., `PartsOnly_Export_VaultX`).
- Re-import task settings after upgrading to a newer version of PDM2Excel.
