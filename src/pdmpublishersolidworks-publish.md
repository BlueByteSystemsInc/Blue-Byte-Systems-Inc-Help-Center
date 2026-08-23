---
title: Run a Publish Job | PDMPublisher for SOLIDWORKS
description: Publish the active SOLIDWORKS document with the selected PDMPublisher profile and review the resulting job log.
ms.date: 08/23/2026
ms.topic: how-to
---

# Run a Publish Job

The **PUBLISH** command processes the document currently open in SOLIDWORKS by using the selected profile.

## Before Publishing

1. Open the part, assembly, or drawing to process.
2. Select the correct [profile](pdmpublishersolidworks_profiles.md).
3. Review the output location, filename, and file formats.
4. For an assembly, confirm whether referenced files, conditions, multiple configurations, or merged PDFs should be processed.

> [!IMPORTANT]
> Save the active SOLIDWORKS document and resolve its references before publishing. Missing or unresolved references cannot be processed reliably.

## Start the Job

Select **PUBLISH** at the bottom of the task pane.

If local SOLIDWORKS PDM vault views are available, the arrow beside **PUBLISH** can associate the job with a vault. Select the correct vault when the profile uses PDM values or when generated files must be handled through PDM.

When [Show conditions output dialog](pdmpublishersolidworks-condition-output.md) is enabled for an assembly, PDMPublisher displays the references that passed before export begins. Confirm the files to continue or cancel the job.

## Review the Result

Open the [Logs tab](pdmpublishersolidworks_logs.md) to review processing steps, exported files, warnings, and failures. Use [Save and Clear Logs](pdmpublishersolidworks-log-files.md) to attach the complete job record to a support request.
