---
title: Search and Read Logs | PDMPublisher for SOLIDWORKS
description: Filter PDMPublisher job logs and interpret processing, success, warning, and error entries.
ms.date: 08/23/2026
ms.topic: how-to
---

# Search and Read Logs

The **PDMPublisher > Logs** window collects messages from the current session. Entries can include file processing, condition evaluation, quantities, drawing sheets, exports, warnings, and failures.

![PDMPublisher Logs window filtered to errors](/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)

## Search Logs

Enter text in **Find** to filter the displayed entries as you type. Matching is not case-sensitive. Use the adjacent type filter to show **All entries**, **Errors**, **Warnings**, **Completed**, **Processing**, or **Skipped** messages.

Search changes only what is displayed. It does not remove log entries, and [SAVE LOGS](pdmpublishersolidworks-log-files.md) still writes the complete collection.

Useful searches include a filename, output extension, configuration, `warning`, `failed`, or `saved`.

Enable **Follow newest** while monitoring an active job. The shown, total, and selected counters make it clear whether a search or type filter is hiding entries.

## Entry Colors

| Color | Typical message |
| --- | --- |
| Yellow | Job start, processing, or general progress. |
| Green | Saved, completed, added, or passed steps. |
| Light red | Warning, failed, or error entries. |

Read the entries around a warning or failure, not only the highlighted line. Earlier messages often identify the source file, configuration, or evaluated value that led to the result.
