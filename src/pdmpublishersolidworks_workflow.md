---
title: Publishing Workflow and Results | PDMPublisher for SOLIDWORKS
description: Follow a PDMPublisher job from document preparation through review, export, logging, and troubleshooting.
ms.date: 10/11/2026
ms.topic: how-to
---

# Publishing Workflow and Results

Use this sequence for a repeatable PDMPublisher for SOLIDWORKS job.

## 1. Prepare the Document

1. Open and save the source part, assembly, or drawing.
2. Resolve suppressed, lightweight, missing, or out-of-date references as required by the workflow.
3. Activate the configuration and drawing sheets you want to evaluate.
4. Confirm that any PDM-aware profile uses the intended local vault.

## 2. Select and Review the Profile

Choose the named profile from the arrow beside **Publish**.

![Publish profile selection menu](/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)

Review the export location, filename, formats, sheet mode, references, configurations, annotations, and conditions. Enable **Show dialog before processing** when an operator must confirm the resolved job before files are written.

## 3. Review Assembly Selection

For an assembly with individual-reference export and condition review enabled, PDMPublisher lists the references that passed evaluation. Clear a file to omit it from this run. Confirm to continue, or cancel to stop before export processing.

Use **Use All** or **Discard All** to change the complete review list, including rows hidden by the current search. Select multiple rows and right-click to use **Use Selected** or **Discard Selected** on only those rows.

![Review files and evaluated destinations before publishing](/images/pdmpublisher/solidworks/publish-review-20261007.png)

The review selection affects only the current run. It does not rewrite the profile or condition tree.

## 4. Process Outputs

During processing, PDMPublisher resolves placeholders for each source document and configuration, creates the required folders, invokes the corresponding SOLIDWORKS exporter, applies annotations or PDF operations, and optionally creates an archive.

Evaluated properties are read once per source document and reused throughout that publishing run. Drawings opened only for property evaluation stay in the background and are closed when the run ends; documents that were already open remain under the user's control.

Do not close SOLIDWORKS, change the active document, or modify referenced files while the job is running.

## 5. Interpret the Result

When processing finishes, the **Publishing results** dialog groups each source file, configuration, and generated output. Use **Find** and the result filter to locate a file, destination, warning, or failure. Select an output to see its reason and technical message, or use **Open file**, **Open folder**, and **Copy path** for the selected result.

![Publishing results grouped by source file and configuration](/images/pdmpublisher/solidworks/publishing-results-20261007.png)

The **Detailed log** tab retains the chronological processing record. The summary above the tabs reports the published, failed, skipped, and cancelled totals and the elapsed time.

| Outcome | Meaning | Next action |
| --- | --- | --- |
| Completed | The requested output was produced. | Inspect the destination and spot-check the files. |
| Warning | Processing continued, but a fallback or nonfatal issue occurred. | Read the preceding log entries and verify the affected file. |
| Skipped | A condition, unsupported source/format combination, missing input, or operator choice excluded the item. | Confirm that the skip was intended. |
| Error | The item could not be exported or a required post-processing step failed. | Save the log, correct the cause, and rerun a controlled job. |
| Cancelled | The operator cancelled a review or running job. | Check the destination; files completed before cancellation may remain. |

## 6. Review and Preserve the Log

Open **PDMPublisher > Logs**. Filter by **Errors**, **Warnings**, **Completed**, **Processing**, or **Skipped**, then inspect the messages immediately before the outcome.

![Publishing log controls](/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)

Use **Save...** for the complete session log or **Copy selected** for a focused excerpt. Include the profile name, source filename, expected output, and saved log when contacting support.

> [!IMPORTANT]
> Cancelling does not roll back files already exported. Inspect the output folder before rerunning so an earlier partial result is not mistaken for the new job.
