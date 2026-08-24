---
title: Profiles | PDMPublisher for SOLIDWORKS
description: Create, select, rename, export, import, share, and delete reusable PDMPublisher for SOLIDWORKS profiles.
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher for SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Profiles

A profile is a reusable set of PDMPublisher settings. Use profiles to switch between workflows without rebuilding the Options, Annotations, and Conditions configuration each time.

This feature belongs to **PDMPublisher for SOLIDWORKS**. The PDM task stores its settings in a task definition and does not use add-in profiles.

![PDMPublisher profile toolbar](/images/pdmpublisher/solidworks/profile-toolbar.png)

A profile is a named publishing configuration containing Options, Annotations, and Conditions. Select a profile before publishing.

## Select a Profile

Use the profile list at the top of the task pane to select the active profile. The settings shown on the PDMPublisher, Annotations, and Conditions tabs belong to that profile.

Give profiles names that describe their output, such as `Released PDF`, `Laser DXF`, or `PDF And Step`.

## Create a Blank Profile

Select **New > New...** to create a profile that you can configure from the beginning. Set its Export Location, Filename, File Formats, reference behavior, Annotations, and Conditions before publishing.

To begin with a supplied configuration instead of a blank profile, see [Presets](pdmpublishersolidworks_presets.md).

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
