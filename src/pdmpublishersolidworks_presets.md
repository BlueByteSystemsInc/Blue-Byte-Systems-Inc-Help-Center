---
title: Built-in Publish Profiles | PDMPublisher for SOLIDWORKS
description: Create a PDMPublisher for SOLIDWORKS profile from a supplied DXF, PDF and STEP, or STEP starting profile.
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher for SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Built-in Publish Profiles

PDMPublisher includes starting profiles for common publishing workflows. They are available only in **PDMPublisher for SOLIDWORKS**.

![Publish profile selector and profile commands](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)

## Create a Profile from a Built-in Profile

1. Open **New**.
2. Select **New From**.
3. Choose a supplied profile.
4. Review the new profile, adjust its settings, and select **Save**.

The supplied profiles are:

| Profile | Starting purpose |
| --- | --- |
| `DXF` | Drawing or manufacturing DXF output. |
| `PDF And Step` | PDF documentation and STEP model output. |
| `STEP` | STEP model output. |

> [!IMPORTANT]
> A built-in profile does not publish by itself. **New From** creates an editable profile from the supplied starting configuration; the new profile is used when you select **PUBLISH**.

## Customize the New Profile

Built-in profiles are starting points, not locked configurations. Review these areas before publishing:

- [Options](pdmpublishersolidworks_options.md), including the export location, filename, formats, and reference processing
- [Annotations](pdmpublishersolidworks_annotations.md)
- [Conditions](conditions_solidworks.md)

Changing a profile created from a built-in profile does not change the supplied starting configuration. You can create several profiles from the same built-in profile and customize each one for a different customer, project, or output package.

For profile selection, renaming, file transfer, deletion, and other profile commands, see [Profiles](pdmpublishersolidworks_profiles.md).
