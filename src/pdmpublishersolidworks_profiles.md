---
title: Profiles and Presets | PDMPublisher for SOLIDWORKS
description: Create, select, rename, export, import, and delete reusable PDMPublisher for SOLIDWORKS profiles or start from a built-in preset.
ms.date: 08/23/2026
ms.topic: how-to
---

# Profiles and Presets

A profile is a reusable set of PDMPublisher settings. Use profiles to switch between workflows without rebuilding the Options, Annotations, and Conditions configuration each time.

This feature belongs to **PDMPublisher for SOLIDWORKS**. The PDM task stores its settings in a task definition and does not use add-in profiles.

![PDMPublisher profile toolbar](/images/pdmpublisher/solidworks/profile-toolbar.png)

## Profiles and Presets

| Term | Meaning |
| --- | --- |
| **Profile** | A named, saved publishing configuration containing Options, Annotations, and Conditions. Select a profile before publishing. |
| **Preset** | A built-in starting configuration available under **New > New From**. Selecting a preset creates a new profile that you can edit and save. |

Changing a profile created from a preset does not change the original preset. You can create several profiles from the same preset and customize each one for a different customer, project, or output location.

## Select a Profile

Use the profile list at the top of the task pane to select the active profile. The settings shown on the PDMPublisher, Annotations, and Conditions tabs belong to that profile.

Give profiles names that describe their output, such as `Released PDF`, `Laser DXF`, or `PDF And Step`.

## Create a Blank Profile

Select **New > New...** to create a profile that you can configure from the beginning. Set its Export Location, Filename, File Formats, reference behavior, Annotations, and Conditions before publishing.

## Create a Profile from a Preset

Select **New > New From**, then choose a supplied preset.

![New profile and starter templates](/images/pdmpublisher/solidworks/profile-new-from.png)

The supplied presets are:

| Preset | Starting purpose |
| --- | --- |
| `DXF` | Drawing or manufacturing DXF output. |
| `PDF And Step` | PDF documentation and STEP model output. |
| `STEP` | STEP model output. |

Presets are starting points, not locked configurations. Review the export location, filename, formats, reference behavior, annotations, and conditions before publishing.

> [!IMPORTANT]
> A preset does not publish by itself. **New From** creates a profile from the preset; the profile is the configuration selected when you choose **PUBLISH**.

## Rename a Profile

1. Select the profile.
2. Select **Edit**.
3. Change the name in the profile field.
4. Select **Save**.

![Editing a profile name](/images/pdmpublisher/solidworks/profile-edit.png)

![Saving a profile name](/images/pdmpublisher/solidworks/profile-save.png)

While the profile name is being edited, other profile commands are unavailable until the name is saved.

## Move Profiles Between Computers

Use file transfer when you need a permanent backup or want to move the complete profile without using a PIN.

### Export a Profile to a File

1. Select the profile.
2. Open **Export**, then select **Export to File...**.
3. Choose where to save the `.pdmpublisherprofile` file.

The exported file preserves the complete profile, including its Options, Annotations, and Conditions. Keep an exported copy before changing computers or making major changes to an established publishing setup.

### Load a Profile from a File

1. Open **Load From...**, then select **Load from File...**.
2. Select a `.pdmpublisherprofile` file.
3. Confirm the profile name if PDMPublisher finds a local profile with the same name.

The loaded profile is saved locally, applied immediately, and becomes the active profile. When the name already exists, you can replace the local profile, import the profile under another name, or cancel.

> [!NOTE]
> A profile file is a saved configuration, not a built-in preset. Loading it does not change the preset from which the profile may have been created.

## Share Profiles Using a PIN

Version `2026.08.10` and later can share selected Options, Annotations, and Conditions using a six-digit PIN that remains available for 30 days. See [Share Profiles Using a PIN](pdmpublishersolidworks_profile_sharing.md) for the sharing and loading workflow, section selection, name-conflict behavior, and security guidance.

## Delete a Profile

Select the profile and choose **Delete**. Deleting a profile removes that saved configuration; it does not delete exported documents.

> [!IMPORTANT]
> Confirm that another copy is not needed before deleting a profile. Export the profile first when it may be needed later.
