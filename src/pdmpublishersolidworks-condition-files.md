---
title: Import and Export Conditions | PDMPublisher for SOLIDWORKS
description: Save a condition tree to an EDM task definition file or load conditions into the selected profile or group.
ms.date: 08/23/2026
ms.topic: how-to
---

# Import and Export Conditions

Use **Export...** and **Import...** in the **PDMPublisher > Conditions** window to move condition rules separately from the complete Publish profile.

## Export Conditions

1. Select **Export...**.
2. Choose a location and filename.
3. Save the condition setup as an `.edmtdf` file.

The exported file preserves the condition groups, AND/OR behavior, fields, comparison types, values, configurations, and enabled states.

## Import Conditions

The selected item in the condition tree controls where imported rules are placed:

| Selection before import | Result |
| --- | --- |
| No group selected | The imported root condition tree replaces the current root tree. |
| A condition group selected | Imported root items are added as children of the selected group. |
| A condition row selected | The import is stopped. Select a group or clear the selection first. |

After importing, review the group relationships and test the rules before publishing.

> [!IMPORTANT]
> Export the current conditions or the complete profile before replacing the root tree when the existing rules may be needed later.

For a backup that also includes Options and Annotations, use [Move Profiles Between Computers](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
