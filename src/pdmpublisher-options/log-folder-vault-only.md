---
title: Log Folder (Vault Only) | PDMPublisher Options
description: Store PDMPublisher logs in a PDM vault folder.
ms.date: 10/20/2026
ms.topic: reference
---

# Log Folder (Vault Only)

![Log folder setting](/images/pdmpublisher/screenshots/options-020-property-log-folder-(vault-only).png)

Sets the PDM vault folder where log files are deposited.

This setting is related to [Vault Activity Logs](turn-on-activity-tracking.md). It controls where the activity log files are stored in the vault.

Recommended path:

```text
(VaultRootFolder)\Logs\PDMPublisher
```

Create this folder manually before using the task.

> [!IMPORTANT]
> The folder must be inside the vault and must not end with a trailing backslash.
>
> The user running the task, or the task host account used to run the task, must have permission to add log files to this folder.

## Task log filenames and retries

The text log filename contains the affected input document filenames followed by the task instance GUID. For example:

```text
Assembly.sldasm + Part.sldprt - 12345678-1234-1234-1234-123456789abc.txt
```

Invalid filename characters are removed, duplicate document names are included once, and long document-name portions are shortened while retaining the complete GUID. If an input cannot be resolved, its file ID is used instead of its name.

Each run starts a fresh log with a new header. Retrying the same task clears the previous text in that log rather than appending another run. Save a copy first if you need to preserve the earlier attempt. The task account needs permission to check out and update an existing vault log as well as add new logs.

Errors include readable PDM messages, HRESULT codes where available, and the source filename and line number when matching debugging symbols are available. Full stack traces are not included. Cache-failed references appear as **Omitted**; see [Released-only publishing](../options.md#references-that-cannot-be-cached).