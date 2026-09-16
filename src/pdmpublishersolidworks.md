---
title: PDMPublisher for SOLIDWORKS
description: Use PDMPublisher inside SOLIDWORKS for publishing, Save As New, Property Doctor, Smart Pack and Go, profiles, and shared settings.
ms.date: 09/16/2026
ms.topic: overview
---

# PDMPublisher for SOLIDWORKS

PDMPublisher for SOLIDWORKS is the interactive SOLIDWORKS add-in. It combines document publishing with Save As New, Property Doctor, Smart Pack and Go, reusable profiles, and shared PDM-aware resources.

> [!IMPORTANT]
> This documentation describes the SOLIDWORKS add-in, not the PDMPublisher task configured in the SOLIDWORKS PDM Administration tool.

See [PDM Task vs SOLIDWORKS Add-in](pdmpublisher-product-differences.md) for a side-by-side comparison and links to the settings shared by both products.

## Install and Enable the Add-In

Before using PDMPublisher, [download and install PDMPublisher for SOLIDWORKS](pdmpublishersolidworks_installation.md). Close SOLIDWORKS before running the MSI installer.

After installation:

1. Start SOLIDWORKS.
2. Select **Tools > Add-Ins**.
3. Locate **PDMPublisher (SOLIDWORKS)** under **Partner Solution Add-Ins**.
4. Select **Active Add-ins** to load it now.
5. Select **Start Up** to load it automatically with SOLIDWORKS.
6. Select **OK**.

![PDMPublisher for SOLIDWORKS enabled under Partner Solution Add-Ins](/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)

## Find PDMPublisher in SOLIDWORKS

Open the **PDMPublisher** tab in the SOLIDWORKS CommandManager, or select **Tools > PDMPublisher**. The command groups provide:

- [Save As New](pdmpublishersolidworks_save-as-new.md)
- [Property Doctor](pdmpublishersolidworks_property-doctor.md)
- [Smart Pack and Go](pdmpublishersolidworks_smart-pack.md)
- [Publish](pdmpublishersolidworks-publish.md), Annotations, Conditions, and Logs
- [Settings](pdmpublishersolidworks_settings.md), license management, and updates

See [PDMPublisher Commands](pdmpublishersolidworks_commands.md) for command availability and profile drop-down behavior.

![PDMPublisher CommandManager commands and embedded Help pane in SOLIDWORKS 2026](/images/pdmpublisher/solidworks/commands/overview-commandmanager-help.png)

## Main Workflows

| Workflow | Purpose |
| --- | --- |
| [Publishing](pdmpublishersolidworks_options.md) | Export the active document and references to PDF, DXF, STEP, eDrawings, and other formats. Profiles combine Publish settings, Annotations, and Conditions. |
| [Save As New](pdmpublishersolidworks_save-as-new.md) | Save a separate native copy using naming, destination, PDM, drawing, bounding-box, and macro options. |
| [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Inspect and edit properties across the active document, configurations, cut lists, drawings, and references. |
| [Smart Pack and Go](pdmpublishersolidworks_smart-pack.md) | Copy a document set with per-file names and folders, companion files, revisions, profiles, and optional ZIP output. |
| [Settings](pdmpublishersolidworks_settings.md) | Search and configure all utility, publishing, shared-resource, support, and license settings. |

## Help Task Pane

The PDMPublisher task pane now displays documentation instead of application controls. Use the [Help Task Pane](pdmpublishersolidworks_help-pane.md) for WebView2 requirements and troubleshooting. All product commands remain in the CommandManager if the help page is offline.

## Profiles and Settings Transfer

Publish, Save As New, Property Doctor, and Smart Pack and Go each have their own profiles. The unified Settings dialog can export or share a complete configuration containing every profile family and the shared resources. See [Settings](pdmpublishersolidworks_settings.md) and [Publish Profiles](pdmpublishersolidworks_profiles.md).

Settings that require the PDM task framework are intentionally excluded from the add-in. This includes scheduling, task-launch prompts, PDM task execution methods, and task-host selection.

## Download and Licensing

- [Installation guide](pdmpublishersolidworks_installation.md)
- [Download PDMPublisher for SOLIDWORKS](https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher)
- [Purchase a PDMPublisher for SOLIDWORKS license](https://bluebyte.biz/product/pdmpublisher-solidworks)
- [License management](licensespdmpublisher.md)

For support, contact `support@bluebytesystemsinc.zohodesk.com`.
