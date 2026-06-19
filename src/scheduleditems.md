---
title: Scheduled Items Task Page | PDMPublisher | SOLIDWORKS PDM
description: Learn how to use the Scheduled Items task setup page in PDMPublisher to define files that should be processed when a task runs without selected files.
ms.date: 06/20/2026
ms.topic: conceptual
---
# Scheduled Items Task Page

The **Scheduled Items** page lets administrators define the files PDMPublisher should process when a task is launched without selected files.

This is useful for scheduled tasks and automated task launches where SOLIDWORKS PDM does not provide a file selection to the task at runtime.

<p align="center">
  <img src="../images/pdmpublisher_scheduled_items.png" alt="Scheduled Items setup page" width="800">
</p>

## When to use this page

Use **Scheduled Items** when the task is expected to run on a schedule or from an automation that does not pass selected files to PDMPublisher.

If files are configured on this page, PDMPublisher uses the Scheduled Items list as the task input.

> [!IMPORTANT]
> Scheduled Items take priority over files selected from the right-click **Tasks** menu or any other launch method that passes selected files to PDMPublisher. If this page contains files, PDMPublisher processes the files listed here and ignores the files selected during launch. Only configure Scheduled Items for tasks that are intended to process the same saved list of files.

## Adding files

Click **Add** to choose one or more SOLIDWORKS files from the vault.

PDMPublisher stores the selected file ID and parent folder ID. These IDs are used later to rebuild the task input list when the scheduled task runs.

The table displays:

|Column|Description|
|:---|:---|
|File Name|The selected file name.|
|Found In|The vault folder where the file was selected.|

## Removing files

Select one or more rows and click **Remove** to remove them from the scheduled item list.

## Important notes

- The selected files must remain available in the vault.
- The task host must have permission to access the selected files and their folders.
- The task still uses the settings from the other setup pages, including **Options**, **Annotations**, and **Conditions**.
- If this page contains files, those files are used even when the task is launched from a selected file in File Explorer.
- If no files are selected at launch and no scheduled items are configured, the task will stop with an error.
