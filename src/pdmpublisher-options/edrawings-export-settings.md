---
title: eDrawings Export Settings | PDMPublisher PDM Task
description: Understand the measurement and file-property preferences applied by PDMPublisher PDM Task when exporting eDrawings files.
ms.date: 08/31/2026
ms.topic: reference
---

# eDrawings Export Settings

PDMPublisher PDM Task can create these eDrawings files:

| Source document | eDrawings output |
| --- | --- |
| SOLIDWORKS part (`.sldprt`) | eDrawings Part (`.eprt`) |
| SOLIDWORKS assembly (`.sldasm`) | eDrawings Assembly (`.easm`) |
| SOLIDWORKS drawing (`.slddrw`) | eDrawings Drawing (`.edrw`) |

![eDrawings formats in the File Formats selector](/images/pdmpublisher/screenshots/options-dropdown-000-file-formats.png)

## Corrected in Version 2026.08.12

Version `2026.08.12` fixes how the PDM task prepares SOLIDWORKS for eDrawings export. Before saving an eDrawings file, the task now explicitly applies these preferences:

- Allow measurement in the exported eDrawings file.
- Save file properties in the exported file.
- Save file properties for each component where the output contains assembly components.

This prevents the export from depending on the eDrawings preferences previously stored for the Windows account running SOLIDWORKS on the task host.

> [!IMPORTANT]
> This correction applies only to **PDMPublisher PDM Task**. It does not change PDMPublisher for SOLIDWORKS.

## Task Setup

There is no new task checkbox for this correction. Select the required eDrawings extensions under [File Formats](file-formats.md); PDMPublisher applies the corrected preferences automatically when the task creates the output.

Update PDMPublisher on every computer that can execute the task. The Windows account running the task must also be able to start the configured SOLIDWORKS version.

For managed task deployment, see [Install or Update PDMPublisher with PDMDeploy](../updateaddinswithcdpdm.md).
