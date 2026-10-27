---
title: Use Latest Released Versions Only | PDMPublisher PDM Task
description: Publish Released file versions and omit references that cannot be verified or cached.
ms.topic: reference
---

# Use Latest Released Versions Only

Enable **Use latest released versions only** to publish the most recent version that entered a state whose name contains `Released` (case-insensitive). This overrides **Work with latest version**; it does not use a newer work-in-progress version.

![Released-only publishing and Reference settings](/images/pdmpublisher/screenshots/task-released-settings.png)

Choose **Reference settings…** to review how references are handled. References outside the vault, without a Released version, or that cannot be cached are always omitted. Virtual components, cut-list items, and part-to-part dependencies are ignored by default.

Reference failures are logged with the filename and reason, while other safe outputs continue. If a reference cannot be safely excluded from a publishing copy, the affected parent output is also omitted. Original files remain unchanged.

A selected top-level document without a Released version fails validation. Other task or export errors can still stop processing.

See [Released-reference settings and troubleshooting](../options.md#use-latest-released-versions-only) for the complete settings and omission behavior.