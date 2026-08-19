---
title: PDMPublisher for SOLIDWORKS
description: Use PDMPublisher inside SOLIDWORKS to export documents and references with reusable profiles, annotations, conditions, and detailed logs.
ms.date: 08/18/2026
ms.topic: overview
---

# PDMPublisher for SOLIDWORKS

PDMPublisher for SOLIDWORKS is the SOLIDWORKS add-in version of PDMPublisher. It publishes the document open in SOLIDWORKS and can process its referenced files without requiring a SOLIDWORKS PDM task.

> [!IMPORTANT]
> This documentation describes the SOLIDWORKS add-in, not the PDMPublisher task configured in the SOLIDWORKS PDM Administration tool.

![PDMPublisher for SOLIDWORKS 2026.08.08 open in SOLIDWORKS 2026](/images/pdmpublisher/solidworks/overview-20260808.png)

## Start a Publish Job

1. Open the part, assembly, or drawing to publish in SOLIDWORKS.
2. Open the **PDMPublisher (SOLIDWORKS)** task pane.
3. Select an existing [profile](pdmpublishersolidworks_profiles.md), or create one.
4. Review the Options, Annotations, and Conditions tabs.
5. Select **PUBLISH**.

The current profile controls the export location, filename, formats, reference processing, annotations, conditions, and other publishing behavior.

## Main Tabs

| Tab | Purpose |
| --- | --- |
| [PDMPublisher](pdmpublishersolidworks_options.md) | Configure output files, drawing sheets, reference processing, configurations, flat patterns, and PDF behavior. |
| [Annotations](pdmpublishersolidworks_annotations.md) | Add text, properties, watermarks, or QR codes to exported drawings and PDFs. |
| [Conditions](conditions_solidworks.md) | Filter the active document and references using property-based rules and AND/OR groups. |
| [Logs](pdmpublishersolidworks_logs.md) | Review the steps, results, warnings, and errors from each publish job. |
| [About](pdmpublishersolidworks_About.md) | View the installed version, update and licensing links, and appearance settings. |

## Navigation Width

Select **Minimize** at the bottom of the navigation to leave more room for settings.

![Minimize navigation command](/images/pdmpublisher/solidworks/navigation-minimize.png)

When minimized, the tab names are displayed vertically. Select the arrow at the bottom to restore the full navigation.

![Collapsed PDMPublisher navigation](/images/pdmpublisher/solidworks/navigation-collapsed.png)

## Profiles

Profiles let you keep separate publishing configurations for different outputs, customers, departments, or workflows. The add-in includes starter templates for DXF, PDF and STEP, and STEP publishing. See [Profiles and Templates](pdmpublishersolidworks_profiles.md).

## Download and Licensing

- [Download PDMPublisher for SOLIDWORKS](https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher)
- [Purchase a PDMPublisher for SOLIDWORKS license](https://bluebyte.biz/product/pdmpublisher-solidworks)
- [License management](licensespdmpublisher.md)

For support, contact `support@bluebytesystemsinc.zohodesk.com`.
