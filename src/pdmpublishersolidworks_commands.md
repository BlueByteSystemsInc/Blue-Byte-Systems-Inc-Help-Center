---
title: Commands | PDMPublisher for SOLIDWORKS
description: Find every PDMPublisher command in the SOLIDWORKS CommandManager and understand which document types support it.
ms.date: 09/15/2026
ms.topic: overview
---

# PDMPublisher Commands

PDMPublisher commands are available from the **PDMPublisher** tab in the SOLIDWORKS CommandManager and from the **Tools > PDMPublisher** menu. The task pane is now a documentation browser; publishing and utility commands no longer run inside the pane.

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

## Profile Drop-Downs

The arrow beside **Save As New**, **Property Doctor**, **Smart Pack and Go**, and **Publish** lists the saved profiles for that command. Select **Profile: Default** to use the current default settings, or select a named profile to start with that configuration.

For a component selected in an assembly, the right-click menu also exposes **Property Doctor** and the available **Save As New** profiles.

## When a Command Is Available

Document commands require an active part, assembly, or drawing. Save the active document before using workflows that must resolve file paths or references. Property Doctor and Smart Pack and Go can wait while SOLIDWORKS finishes loading references; changing the active document during that preparation cancels the operation.

> [!NOTE]
> The **PDMPublisher** CommandManager tab is recreated for parts, assemblies, and drawings. If the tab is hidden, enable the add-in and right-click the CommandManager tab area to show **PDMPublisher**.

