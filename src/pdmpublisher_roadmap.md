---
title: PDMPublisher Product Roadmap | Current Direction and Planned Features
description: Review the current PDMPublisher product baseline, released roadmap milestones, and planned work for the PDM Task and SOLIDWORKS add-in.
ms.date: 09/19/2026
ms.topic: conceptual
---

# PDMPublisher Product Roadmap

PDMPublisher is delivered as two independently versioned products: **PDMPublisher for SOLIDWORKS**, the interactive SOLIDWORKS add-in, and **PDMPublisher PDM Task**, the automation task configured in SOLIDWORKS PDM Professional.

This page separates features that are available now from work that is still planned. Dates and priorities may change based on development, testing, customer feedback, and SOLIDWORKS compatibility requirements.

> [!NOTE]
> A planned feature is not guaranteed until it is released. The [PDMPublisher Change Log](changeslog.md) is the authoritative record of shipped versions and changes.

## Current Product Baseline

### PDMPublisher for SOLIDWORKS

The current add-in uses the **PDMPublisher** CommandManager tab and **Tools > PDMPublisher** menu. Its SOLIDWORKS task pane displays documentation and no longer hosts the publishing controls.

Available workflows include:

- [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md), and [Clone Tree](pdmpublishersolidworks_smart-pack.md).
- [BOM Manager](pdmpublishersolidworks_bom-manager.md) for BOM columns, structure, grouping, and component exclusions.
- [Publish](pdmpublishersolidworks-publish.md) with annotations, conditions, drawing-sheet controls, configuration processing, and logs.
- Command-specific profiles plus complete settings transfer through a file or six-digit PIN.
- Shared PDM settings, languages, drawing search locations, external SQL sources, and advanced formulas.
- A searchable unified [Settings](pdmpublishersolidworks_settings.md) dialog and an embedded [Help task pane](pdmpublishersolidworks_help-pane.md).

See [PDMPublisher for SOLIDWORKS](pdmpublishersolidworks.md) for the complete current feature set.

### PDMPublisher PDM Task

The current PDM Task supports:

- Automated publishing from SOLIDWORKS PDM Professional task actions and scheduled runs.
- Interactive launch-time file selection and configured [Scheduled Items](scheduleditems.md).
- Multi-format output, annotations, conditions, configuration filtering, drawing-sheet selection, PDF merging, and manufacturing output.
- Drawing-derived BOM processing and fallback to the configured calculated BOM.
- Publishing the latest recorded PDM revision and its saved references.
- Explicit eDrawings export settings for measurement and document or component properties.
- Activity logs, task details, PDM variable mapping, output references, and duplicate handling.

See [PDMPublisher for PDM Professional](pdmpublisher.md) for the complete current feature set.

## Released Roadmap Milestones

These items were previously listed as planned and are now available. They remain here as roadmap history, not as future commitments.

### 2026 Q2

- `2026.06.21` - [Task launch file selection](scheduleditems.md) for the PDM Task.
- `2026.06.20` - [Scheduled Items task page](scheduleditems.md) for the PDM Task.
- `2026.06.20` - Parasolid binary (`x_b`) export for the PDM Task and SOLIDWORKS add-in.
- `2026.05.30` - [Task details and output log](pdmpublisher_task_details.md) for the PDM Task.
- `2026.05.30` - Multi-body processing for the PDM Task and SOLIDWORKS add-in.

### 2026 Q3

- `2026.09.08` - [Get latest revision only](pdmpublisher-options/get-latest-revision-only.md) for the PDM Task.
- `2026.08.10` - [Profile sharing by PIN](pdmpublishersolidworks_profile_sharing.md) for the SOLIDWORKS add-in.
- `2026.08.09` - [Drawing-derived BOM](pdmpublisher-options/use-drawing-derived-bom.md) for the PDM Task.
- `2026.08.08` - [Reusable Publish profiles](pdmpublishersolidworks_profiles.md) and [presets](pdmpublishersolidworks_presets.md) for the SOLIDWORKS add-in.

## Planned Work

### 2026 Q4: Scheduled Source Expansion

**Applies to: PDM Task**

Planned scheduling sources:

- A selected directory.
- A saved Favorite Search.

### 2027 Q1: Drawing Creator

**Applies to: SOLIDWORKS add-in**

Drawing Creator is intended to automate repeatable drawing creation from SOLIDWORKS parts and assemblies. The current target is the end of Q1 2027.

Planned areas of focus:

- Create drawings from selected models.
- Apply predefined drawing templates.
- Insert standard model views.
- Set drawing-sheet scale and margins.
- Add or update annotation-table notes.
- Apply reusable note formatting and placement rules.
- Prepare generated drawings for downstream PDMPublisher workflows.

## Planned Areas Without a Committed Schedule

The current SOLIDWORKS add-in reserves interface locations for the following features. Their commands or settings pages are placeholders and are not available for production workflows.

- [Translate](pdmpublishersolidworks_translate.md) is intended to translate properties, feature names, and other SOLIDWORKS document text.
- [ERP Sync](pdmpublishersolidworks_erp-sync.md) is now available in the SOLIDWORKS add-in for connector-based item, property, part-number, and BOM synchronization.
- [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) is intended to schedule PDMPublisher publishing jobs. It is separate from the macro hook available in Save As New.
