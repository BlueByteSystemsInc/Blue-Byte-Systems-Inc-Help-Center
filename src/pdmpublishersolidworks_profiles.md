---
title: Publish Profiles | PDMPublisher for SOLIDWORKS
description: Create, select, rename, export, import, share, and delete reusable Publish profiles in PDMPublisher for SOLIDWORKS.
ms.date: 09/16/2026
ms.topic: how-to
bbsProductName: PDMPublisher for SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Publish Profiles

A Publish profile is a reusable combination of Publish settings, Annotations, and Conditions. Use profiles to switch between export workflows without rebuilding those sections each time.

This profile family belongs to **PDMPublisher for SOLIDWORKS**. The PDM task stores its settings in a task definition and does not use add-in profiles. Save As New, Property Doctor, and Clone Tree have separate profile families documented with those commands.

![Publish profile selector and profile commands](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)

A profile is a named publishing configuration containing Options, Annotations, and Conditions. Select a profile before publishing.

## Select a Profile

Use the profile list in the Publish settings page or the arrow beside **Publish** in the CommandManager. The profile stores Publish settings, Annotations, and Conditions.

![Named Publish profiles in the CommandManager menu](/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)

The CommandManager menu lists each saved profile as **Profile: _name_**. Selecting an entry starts the Publish workflow with that profile. If **Show dialog before processing** is enabled, review the resolved output and processing options before confirming the job.

Give profiles names that describe their output, such as `Released PDF`, `Laser DXF`, or `PDF And Step`.

## Create a Blank Profile

Select **New > New...** to create a profile that you can configure from the beginning. Set its Export Location, Filename, File Formats, reference behavior, Annotations, and Conditions before publishing.

To begin with a supplied configuration instead of a blank profile, see [Built-in Publish Profiles](pdmpublishersolidworks_presets.md).

## Rename a Profile

1. Open **PDMPublisher > Settings > Publish** and select the profile.
2. Select **Edit**.
3. Change the name in the profile field.
4. Select **Save**.

Use the page and pencil buttons beside the profile selector to create or rename a profile, then select **OK** to save the changes.

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
> A profile file is a saved configuration. Loading it does not change any built-in profile used as its starting point.

## Share Profiles Using a PIN

Share selected Options, Annotations, and Conditions using a six-digit PIN that remains available for 30 days. See [Share Profiles Using a PIN](pdmpublishersolidworks_profile_sharing.md) for the sharing and loading workflow, section selection, name-conflict behavior, and security guidance.

## Delete a Profile

Select the profile and choose **Delete**. Deleting a profile removes that saved configuration; it does not delete exported documents.

> [!IMPORTANT]
> Confirm that another copy is not needed before deleting a profile. Export the profile first when it may be needed later.

To move every PDMPublisher profile family and shared resource together, use [Transfer All Settings](pdmpublishersolidworks_settings.md#transfer-all-settings).
