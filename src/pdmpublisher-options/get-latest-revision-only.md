---
title: Use Latest Released Versions Only | PDMPublisher PDM Task
description: Publish Released file versions and omit references that cannot be verified or cached.
ms.topic: reference
---

# Use Latest Released Versions Only

Enable **Use latest released versions only** to check each file's current PDM state first. If its name contains `Released` (case-insensitive), such as `Chassis Released`, publish the latest version without reading history. Otherwise, publish the most recent version that entered a state containing `Released`. The log identifies which method selected the version. This overrides **Work with latest version**.

![Released-only publishing and Reference settings](/images/pdmpublisher/screenshots/task-released-settings.png)

Choose **Reference settings…** to review how references are handled. References outside the vault, without a Released version, or that cannot be cached are always omitted. Virtual components, cut-list items, and all file dependencies of `.SLDPRT` files are ignored by default, regardless of extension. Assembly and drawing references still follow normal checks.

Reference failures are logged with the filename and reason. Omissions flow **downward only** through descendants used exclusively by the omitted branch; parents are not automatically omitted. Shared components and independently selected files remain eligible.

The parent continues if its temporary publishing copy can exclude the failed child and pass verification. Original files remain unchanged.

A selected top-level document without a Released version fails validation. Other task or export errors can still stop processing.

See [Released-reference settings and troubleshooting](../options.md#use-latest-released-versions-only) for the complete settings and omission behavior.