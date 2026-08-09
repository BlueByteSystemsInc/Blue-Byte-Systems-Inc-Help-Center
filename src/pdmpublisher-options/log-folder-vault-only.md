---
title: Log Folder (Vault Only) | PDMPublisher Options
description: Store PDMPublisher logs in a PDM vault folder.
ms.date: 08/09/2026
ms.topic: reference
---

# Log Folder (Vault Only)

![Log folder setting](/images/pdmpublisher/screenshots/options-020-property-log-folder-(vault-only).png)

Sets the PDM vault folder where log files are deposited.

This setting is related to [Turn on Activity Tracking](turn-on-activity-tracking.md). It controls where the activity log files are stored in the vault.

Recommended path:

```text
(VaultRootFolder)\Logs\PDMPublisher
```

Create this folder manually before using the task.

> [!IMPORTANT]
> The folder must be inside the vault and must not end with a trailing backslash.
>
> The user running the task, or the task host account used to run the task, must have permission to add log files to this folder.
