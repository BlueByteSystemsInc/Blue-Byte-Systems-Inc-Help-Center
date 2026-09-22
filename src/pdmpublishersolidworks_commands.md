---
title: Commands | PDMPublisher for SOLIDWORKS
description: Find every PDMPublisher command in the SOLIDWORKS CommandManager and understand which document types support it.
ms.date: 09/30/2026
ms.topic: overview
---

# PDMPublisher Commands

PDMPublisher commands are available from the **PDMPublisher** tab in the SOLIDWORKS CommandManager and from the **Tools > PDMPublisher** menu. The task pane is now a documentation browser; publishing and utility commands no longer run inside the pane.

![PDMPublisher CommandManager with Publisher Macros in SOLIDWORKS 2026](/images/pdmpublisher/solidworks/commandmanager-publisher-macros-20260930.png)

The screenshot shows the current CommandManager, including Publisher Macros, ERP Sync, and BOM Manager. Commands run against the active SOLIDWORKS document. The separate Help task pane provides documentation links and does not run the commands.

| Group | Command | Purpose |
| --- | --- | --- |
| Utilities | [Save As New](pdmpublishersolidworks_save-as-new.md) | Save the active document as a separate native SOLIDWORKS file using a reusable naming and destination profile. |
| Utilities | [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Review and edit custom, configuration-specific, and cut-list properties across a document and its references. |
| Utilities | [Translate](pdmpublishersolidworks_translate.md) | Reserved for a future translation workflow. It is not available yet. |
| Utilities | [Clone Tree](pdmpublishersolidworks_smart-pack.md) | Copy a document set with per-file names and destinations, optional companion files, PDM revision handling, and ZIP output. |
| Integration | [ERP Sync](pdmpublishersolidworks_erp-sync.md) | Review and push selected part, assembly, drawing, SOLIDWORKS BOM table, or CSV data through the active ERP connector. |
| Integration | [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) | Edit and run VBA examples that call Save As New, Property Doctor, Clone Tree, and ERP Sync through the loaded add-in. |
| Bill of Materials | [BOM Manager](pdmpublishersolidworks_bom-manager.md) | Review, group, edit, and export assembly BOM rows using reusable column templates. |
| Publishing | [Publish](pdmpublishersolidworks-publish.md) | Configure and run a publishing job for the active document. |
| Publishing | [Annotations](pdmpublishersolidworks_annotations.md) | Edit the annotations stored in a Publish profile. |
| Publishing | [Conditions](conditions_solidworks.md) | Edit the conditions stored in a Publish profile. |
| Publishing | [Logs](pdmpublishersolidworks_logs.md) | Review publishing messages and errors. |
| Settings | [Settings](pdmpublishersolidworks_settings.md) | Configure every utility, publishing, and shared-resource setting from one searchable dialog. |
| Settings | [License Key](pdmpublishersolidworks_license.md) | Open SOLIDWORKS add-in license activation and deactivation. |
| Updates | Check for updates | Check whether a newer PDMPublisher build is available. |
| Updates | Version information | Open product, support, legal, and version information. |

## CommandManager Controls

| Control | What happens when selected | Arrow menu |
| --- | --- | --- |
| **Save As New** | Opens the Save As New workflow for the active part, assembly, or drawing. | Selects a saved Save As New profile before opening the workflow. |
| **Property Doctor** | Opens a property grid for the active document and supported references. | Selects a saved Property Doctor profile. |
| **Translate** | Currently disabled because the translation workflow is not yet available. | None. |
| **Clone Tree** | Opens the copy/package workflow for the active document set. | Selects a saved Clone Tree profile. |
| **ERP Sync** | Opens the ERP Sync review window for the active saved part, assembly, or drawing. | None. Select the feature tree, a SOLIDWORKS BOM table, or a CSV file inside the ERP Sync window. |
| **Publisher Macros** | Opens the editable VBA example and macro runner. | None. |
| **BOM Manager** | Opens the BOM review and editing workflow for the active assembly. | None. |
| **Publish** | Opens or runs the publishing workflow with the active Publish profile. | Selects a saved Publish profile. |
| **Annotations** | Edits annotations in the active Publish profile. | None. |
| **Conditions** | Edits conditions in the active Publish profile. | None. |
| **Logs** | Opens the PDMPublisher log viewer. | None. |
| **Settings** | Opens the searchable settings dialog. | None. |
| **License Key** | Opens license activation and deactivation. | None. |

The update area to the right reports whether the installed build is current. When an update is available, use the displayed update command and close SOLIDWORKS before installing the MSI.

## Profile Drop-Downs

The arrow beside **Save As New**, **Property Doctor**, **Clone Tree**, and **Publish** lists the saved profiles for that command. Select **Profile: Default** to use the current default settings, or select a named profile to start with that configuration.

For a component selected in an assembly, the right-click menu also exposes **Property Doctor** and the available **Save As New** profiles.

## When a Command Is Available

Document commands require an active part, assembly, or drawing. Save the active document before using workflows that must resolve file paths or references. ERP Sync requires a saved document and an active connector; BOM Manager requires an active assembly. Property Doctor and Clone Tree can wait while SOLIDWORKS finishes loading references; changing the active document during that preparation cancels the operation.

> [!NOTE]
> The **PDMPublisher** CommandManager tab is recreated for parts, assemblies, and drawings. If the tab is hidden, enable the add-in and right-click the CommandManager tab area to show **PDMPublisher**.
