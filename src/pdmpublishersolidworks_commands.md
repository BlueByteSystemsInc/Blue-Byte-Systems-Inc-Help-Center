---
title: Commands | PDMPublisher for SOLIDWORKS
description: Find every PDMPublisher command in the SOLIDWORKS CommandManager and understand which document types support it.
ms.date: 09/16/2026
ms.topic: overview
---

# PDMPublisher Commands

PDMPublisher commands are available from the **PDMPublisher** tab in the SOLIDWORKS CommandManager and from the **Tools > PDMPublisher** menu. The task pane is now a documentation browser; publishing and utility commands no longer run inside the pane.

![PDMPublisher CommandManager and Help task pane in SOLIDWORKS 2026](/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)

The screenshot shows PDMPublisher 2026.09.08 in SOLIDWORKS 2026 SP3.2. Commands run against the active SOLIDWORKS document. The Help task pane on the right provides documentation links and does not run the commands.

| Group | Command | Purpose |
| --- | --- | --- |
| Utilities | [Save As New](pdmpublishersolidworks_save-as-new.md) | Save the active document as a separate native SOLIDWORKS file using a reusable naming and destination profile. |
| Utilities | [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Review and edit custom, configuration-specific, and cut-list properties across a document and its references. |
| Utilities | Translate | Reserved for a future translation workflow. It is not available yet. |
| Utilities | [Smart Pack and Go](pdmpublishersolidworks_smart-pack.md) | Copy a document set with per-file names and destinations, optional companion files, PDM revision handling, and ZIP output. |
| Publishing | [Publish](pdmpublishersolidworks-publish.md) | Configure and run a publishing job for the active document. |
| Publishing | [Annotations](pdmpublishersolidworks_annotations.md) | Edit the annotations stored in a Publish profile. |
| Publishing | [Conditions](conditions_solidworks.md) | Edit the conditions stored in a Publish profile. |
| Publishing | [Logs](pdmpublishersolidworks_logs.md) | Review publishing messages and errors. |
| Settings | [Settings](pdmpublishersolidworks_settings.md) | Configure every utility, publishing, and shared-resource setting from one searchable dialog. |
| Settings | License Key | Open license activation and deactivation. |
| Updates | Check for updates | Check whether a newer PDMPublisher build is available. |
| Updates | Version information | Open product, support, legal, and version information. |

## CommandManager Controls

| Control | What happens when selected | Arrow menu |
| --- | --- | --- |
| **Save As New** | Opens the Save As New workflow for the active part, assembly, or drawing. | Selects a saved Save As New profile before opening the workflow. |
| **Property Doctor** | Opens a property grid for the active document and supported references. | Selects a saved Property Doctor profile. |
| **Translate** | Currently disabled because the translation workflow is not yet available. | None. |
| **Smart Pack and Go** | Opens the copy/package workflow for the active document set. | Selects a saved Smart Pack and Go profile. |
| **Publish** | Opens or runs the publishing workflow with the active Publish profile. | Selects a saved Publish profile. |
| **Annotations** | Edits annotations in the active Publish profile. | None. |
| **Conditions** | Edits conditions in the active Publish profile. | None. |
| **Logs** | Opens the PDMPublisher log viewer. | None. |
| **Settings** | Opens the searchable settings dialog. | None. |
| **License Key** | Opens license activation and deactivation. | None. |

The update area to the right reports whether the installed build is current. When an update is available, use the displayed update command and close SOLIDWORKS before installing the MSI.

## Profile Drop-Downs

The arrow beside **Save As New**, **Property Doctor**, **Smart Pack and Go**, and **Publish** lists the saved profiles for that command. Select **Profile: Default** to use the current default settings, or select a named profile to start with that configuration.

For a component selected in an assembly, the right-click menu also exposes **Property Doctor** and the available **Save As New** profiles.

## When a Command Is Available

Document commands require an active part, assembly, or drawing. Save the active document before using workflows that must resolve file paths or references. Property Doctor and Smart Pack and Go can wait while SOLIDWORKS finishes loading references; changing the active document during that preparation cancels the operation.

> [!NOTE]
> The **PDMPublisher** CommandManager tab is recreated for parts, assemblies, and drawings. If the tab is hidden, enable the add-in and right-click the CommandManager tab area to show **PDMPublisher**.
