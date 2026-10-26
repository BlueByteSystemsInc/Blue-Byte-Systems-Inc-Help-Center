---
title: Task Details Log tab | PDMPublisher | SOLIDWORKS PDM
description: Review saved outputs, omitted components, errors, and task logs in PDMPublisher.
ms.date: 10/22/2026
ms.topic: conceptual
---

# Task Details Log tab

The **Log** tab summarizes saved outputs, omitted components, and failures. Select a row to read its full message below the table. The report includes source and destination filenames, output versions, and timestamps where available.

Current tasks store a structured report in the vault. Older tasks can build the report from their text log. Outputs outside the vault can appear when recorded by the task; access to the output itself still depends on its location and permissions.

## Find and open the task log

**Open Log File** opens the original text log. Log names contain affected document names and the task instance GUID, for example `Bracket.SLDASM - 12345678-1234-1234-1234-123456789abc.txt`.

The task first uses the saved log path or vault file identity. If that is unavailable, it searches vault log filenames by the task instance GUID. For an external log whose saved filename no longer exists, it searches the recorded folder by GUID. The document-name prefix does not need to match.

External network logs must be accessible to the user. A local task-host path can only be read on that same machine. The search does not bypass vault permissions or search another computer's local drive.

## Troubleshooting

If no log is available, confirm that logging was enabled, the file still exists, and your account can read its folder and workflow state. A structured report may still be visible even when the full text log cannot be opened.

For unexpected PDF merging, look for **Run settings source**, **Merge exported PDFs**, and **Export references individually** in the task log. See [PDF merge troubleshooting](pdmpublisher-options/merge-exported-pdfs.md#check-a-tasks-merge-setting).

Errors show the source filename and line number when matching debug symbols are available. Omitted rows explain why a component was excluded; they do not necessarily mean the whole task failed.
