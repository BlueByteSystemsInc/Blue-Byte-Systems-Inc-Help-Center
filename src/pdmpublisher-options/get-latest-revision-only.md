---
title: Use Latest Released Versions Only | PDMPublisher PDM Task
description: Publish Released file versions and omit references that cannot be verified or cached.
ms.topic: reference
---

# Use Latest Released Versions Only

Enable **Use latest permitted states**, then choose **Affected states…** to add the state names or text to match. Suggestions load in the background; you can also type and add your own text. The button shows the number of selected entries, and **X** removes an entry.

Matching is case-insensitive and accepts any entry. The default `Released` also matches names such as `Chassis Released` and `Unreleased`. If the current state matches, the latest version is used; otherwise the task searches history for the most recent matching version. This overrides **Work with latest version**.

Choose **Reference settings…** to review how references are handled. References outside the vault, without a Released version, or that cannot be cached are always omitted. Virtual components, cut-list items, and all file dependencies of `.SLDPRT` files are ignored by default, regardless of extension. Assembly and drawing references still follow normal checks.

Reference failures are logged with the filename and reason. Omissions flow **downward only** through descendants used exclusively by the omitted branch; parents are not automatically omitted. Shared components and independently selected files remain eligible.

The parent continues if its temporary publishing copy can exclude the failed child and pass verification. Original files remain unchanged. References discovered later by SOLIDWORKS follow the same rules: external files are excluded, while newly found vault files must pass Released-version selection and caching.

A selected top-level document without a Released version fails validation. Other task or export errors can still stop processing.

See [Released-reference settings and troubleshooting](../options.md#use-latest-released-versions-only) for the complete settings and omission behavior.