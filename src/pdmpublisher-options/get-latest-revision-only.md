---
title: Get Latest Revision Only | PDMPublisher PDM Task
description: Publish the newest recorded PDM revision and the references saved with that revision instead of unrevised work-in-progress versions.
ms.date: 09/08/2026
ms.topic: reference
---

# Get Latest Revision Only

![Get latest revision only setting](/images/pdmpublisher/screenshots/options-property-get-latest-revision-only.png)

Use **Get latest revision only** when a task must publish the newest recorded PDM revision instead of the newest checked-in version.

When enabled, PDMPublisher:

- Finds the most recently created revision in the file's PDM history.
- Retrieves the exact file version associated with that revision.
- Retrieves the references as they were saved with that version.
- Writes the selected revision name and PDM version number to the task log.

## Example

Suppose an assembly has revision `B` at PDM version `12`, but versions `13` through `15` contain unrevised work in progress.

| Setting | Version used by the task |
| --- | --- |
| **Get latest revision only** enabled | Version `12`, including the references saved with revision `B` |
| [Work with latest version](work-with-latest-version.md) enabled | Version `15` |

> [!IMPORTANT]
> **Get latest revision only** overrides **Work with latest version**. A file without a recorded PDM revision cannot be exported while this option is enabled, and the task reports a failure instead of publishing an unrevised version.

This option applies only to **PDMPublisher PDM Task**.
