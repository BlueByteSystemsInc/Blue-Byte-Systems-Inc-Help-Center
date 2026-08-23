---
title: Review Condition Results Before Export | PDMPublisher for SOLIDWORKS
description: Use the conditions output dialog to review and adjust the assembly files selected for export.
ms.date: 08/23/2026
ms.topic: how-to
---

# Review Condition Results Before Export

Enable **Show conditions output dialog** when you want to review assembly references after the condition tree is evaluated and before export begins.

This option is enabled by default. It applies when the active document is an assembly, references are available, and **Export references to file formats individually** is enabled.

## What the Dialog Shows

The dialog lists the files that passed condition processing, including available information such as:

- Filename and folder
- Referenced configuration
- Calculated quantity
- Whether a same-name drawing was found

Files are selected by default. Clear a file when it should not be processed in this job, then confirm the dialog to continue.

Cancelling the dialog cancels the publish job before file processing begins.

> [!NOTE]
> This dialog is a final job review. It does not rewrite the condition tree or permanently change the selected profile.

See [Evaluation Rules](pdmpublisher-conditions/evaluation-rules.md) for how references pass or fail the configured conditions.
