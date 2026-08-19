---
title: Open Export Location on Completion | PDMPublisher for SOLIDWORKS
description: Open the output folder after a PDMPublisher for SOLIDWORKS publish job completes.
ms.date: 08/18/2026
ms.topic: reference
---

# Open Export Location on Completion

Enable **Open Export Location On Completion** to open the main output folder after a successful publish job.

This setting is available in **PDMPublisher for SOLIDWORKS**. It is useful for an interactive publish workflow because the generated files are immediately available for review.

> [!NOTE]
> This option opens the main [Export Location](pdmpublisher-options/export-location.md). When extension-specific locations are enabled, other formats may have been written to their configured override folders.

Disable the setting when publishing to a network location that should not open automatically or when the folder opening would interrupt the current SOLIDWORKS workflow.
