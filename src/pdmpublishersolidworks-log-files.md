---
title: Save and Clear Logs | PDMPublisher for SOLIDWORKS
description: Save the complete PDMPublisher session log to a file or clear the in-memory log list.
ms.date: 09/16/2026
ms.topic: how-to
---

# Save and Clear Logs

Use the commands in the **PDMPublisher > Logs** window to preserve a job record or start with an empty log list.

![Copy, save, clear, and close controls in the Publishing Logs window](/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)

## Save Logs

1. Select **Save...**.
2. Choose a destination and filename.
3. Save as a `.log` or `.txt` file.

PDMPublisher suggests a filename containing the product name, computer name, and job session identifier. The saved file contains all current log entries, including entries hidden by the search filter.

Save the log immediately after the job you need to investigate so unrelated entries from later jobs are not mixed into the support record.

## Clear Logs

Select **Clear** to remove the current in-memory entries. Use **Copy selected** or **Copy all** when you only need to paste entries into a message instead of saving a file.

Clearing the window does not delete log files that were already saved to disk. Save anything you need before selecting **Clear** because the in-memory entries cannot be restored from the window.

> [!TIP]
> Include the saved log and the source filename when contacting `support@bluebytesystemsinc.zohodesk.com`.
