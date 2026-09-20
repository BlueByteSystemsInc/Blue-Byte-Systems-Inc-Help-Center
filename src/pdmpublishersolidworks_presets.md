---
title: Presets | PDMPublisher for SOLIDWORKS
description: Create a PDMPublisher for SOLIDWORKS profile from a built-in DXF, PDF and STEP, or STEP preset.
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher for SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Presets

Presets are built-in starting configurations for common publishing workflows. They are available only in **PDMPublisher for SOLIDWORKS**.

![Publish profile selector and profile commands](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)

## Create a Profile from a Preset

1. Open **New**.
2. Select **New From**.
3. Choose a supplied preset.
4. Review the new profile, adjust its settings, and select **Save**.

The supplied presets are:

| Preset | Starting purpose |
| --- | --- |
| `DXF` | Drawing or manufacturing DXF output. |
| `PDF And Step` | PDF documentation and STEP model output. |
| `STEP` | STEP model output. |

> [!IMPORTANT]
> A preset does not publish by itself. **New From** creates a profile from the preset; the new profile is the configuration used when you select **PUBLISH**.

## Customize the New Profile

Presets are starting points, not locked configurations. Review these areas before publishing:

- [Options](pdmpublishersolidworks_options.md), including the export location, filename, formats, and reference processing
- [Annotations](pdmpublishersolidworks_annotations.md)
- [Conditions](conditions_solidworks.md)

Changing a profile created from a preset does not change the original preset. You can create several profiles from the same preset and customize each one for a different customer, project, or output package.

For profile selection, renaming, file transfer, deletion, and other profile commands, see [Profiles](pdmpublishersolidworks_profiles.md).
