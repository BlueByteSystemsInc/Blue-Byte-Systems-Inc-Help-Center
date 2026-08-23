---
title: Import and Export Annotations | PDMPublisher for SOLIDWORKS
description: Save annotation settings to an EDM task definition file or load them into the selected PDMPublisher profile.
ms.date: 08/23/2026
ms.topic: how-to
---

# Import and Export Annotations

The Annotations tab can save its annotation collection separately from the complete profile. This is useful when the same annotation layout must be reused in another profile.

## Export Annotations

1. Select **Export...** on the Annotations tab.
2. Choose a location and filename.
3. Save the settings as an `.edmtdf` file.

The file contains the current annotation collection, including annotation text, formatting, placement, sheet selection, and active state.

## Import Annotations

1. Select the profile that should receive the annotations.
2. Select **Import...** on the Annotations tab.
3. Choose the `.edmtdf` file.
4. Review the imported annotations before publishing.

> [!WARNING]
> Importing annotations replaces the annotation collection currently shown for the selected profile. Export the current annotations or the complete profile first when they may be needed later.

For a backup that includes Options and Conditions as well, use [Move Profiles Between Computers](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
