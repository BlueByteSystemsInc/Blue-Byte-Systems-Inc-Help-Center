---
title: Profiles and Templates | PDMPublisher for SOLIDWORKS
description: Create, select, rename, export, import, and delete reusable PDMPublisher for SOLIDWORKS profiles.
ms.date: 08/18/2026
ms.topic: how-to
---

# Profiles and Templates

A profile is a reusable set of PDMPublisher settings. Use profiles to switch between workflows without rebuilding the Options, Annotations, and Conditions configuration each time.

![PDMPublisher profile toolbar](/images/pdmpublisher/solidworks/profile-toolbar.png)

## Select a Profile

Use the profile list at the top of the task pane to select the active profile. The settings shown on the PDMPublisher, Annotations, and Conditions tabs belong to that profile.

Give profiles names that describe their output, such as `Released PDF`, `Laser DXF`, or `PDF And Step`.

## Create a Profile

Open the **New** menu and choose one of these commands:

- **New...** creates a profile that you can configure from the beginning.
- **New From** creates a profile from a supplied starter template.

![New profile and starter templates](/images/pdmpublisher/solidworks/profile-new-from.png)

The supplied templates are:

| Template | Starting purpose |
| --- | --- |
| `DXF` | Drawing or manufacturing DXF output. |
| `PDF And Step` | PDF documentation and STEP model output. |
| `STEP` | STEP model output. |

Templates are starting points. Review the export location, filename, formats, and reference behavior before publishing.

## Rename a Profile

1. Select the profile.
2. Select **Edit**.
3. Change the name in the profile field.
4. Select **Save**.

![Editing a profile name](/images/pdmpublisher/solidworks/profile-edit.png)

![Saving a profile name](/images/pdmpublisher/solidworks/profile-save.png)

While the profile name is being edited, other profile commands are unavailable until the name is saved.

## Move Profiles Between Computers

- **Export...** writes the selected profile to a file that can be backed up or shared.
- **Load From...** creates or loads a profile from a previously exported profile file.

Use profile export before changing computers or before making major changes to an established publishing setup.

## Delete a Profile

Select the profile and choose **Delete**. Deleting a profile removes that saved configuration; it does not delete exported documents.

> [!IMPORTANT]
> Confirm that another copy is not needed before deleting a profile. Export the profile first when it may be needed later.
