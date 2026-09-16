---
title: PDM Task vs SOLIDWORKS Add-in | PDMPublisher
description: Compare PDMPublisher for SOLIDWORKS PDM Professional with PDMPublisher for SOLIDWORKS and choose the correct documentation.
ms.date: 09/16/2026
ms.topic: overview
---

# PDM Task vs SOLIDWORKS Add-in

PDMPublisher is available in two workflows. They share the same publishing engine and many export settings, but they start jobs and obtain file information differently.

![PDMPublisher for SOLIDWORKS commands in the SOLIDWORKS CommandManager](/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)

| | PDMPublisher for PDM Professional | PDMPublisher for SOLIDWORKS |
| --- | --- | --- |
| Runs from | A task configured in the SOLIDWORKS PDM Administration tool | The PDMPublisher CommandManager tab and Tools menu inside SOLIDWORKS |
| Starts from | Selected vault files, a workflow action, or a PDM schedule | The document currently open in SOLIDWORKS |
| Saves settings as | A PDM task definition | Reusable profiles |
| SOLIDWORKS version | Selected in the task settings | The currently running SOLIDWORKS version |
| File information | PDM variables, cards, BOM templates, and SOLIDWORKS properties | SOLIDWORKS custom properties and the active document or assembly references |
| User interaction | Can show task-launch file and configuration prompts | Uses the active document and selected profile directly |
| Logs | Optional vault and server-synced task logs | A dedicated **Logs** tab for each publish job |

## Shared Documentation

Both products use the same documentation pages for settings whose behavior is shared:

- Export location, filename, and file formats
- Assembly reference export and condition filtering
- Multiple configurations and configuration filters
- Drawing sheet selection and sheet-name patterns
- PDF merge, table of contents, table columns, and bookmarks
- Flat-pattern DXF and split-body output
- Annotation formatting and placement
- Condition groups, fields, comparisons, and evaluation rules
- Placeholder reference

Each shared page identifies any difference between the PDM task and the SOLIDWORKS add-in.

## PDM Task Only

Use the [PDM task documentation](pdmpublisher.md) for scheduled items, task-launch prompts, BOM templates, drawing-derived BOMs, calculation methods, selecting a task-host SOLIDWORKS version, PDM search, vault activity logs, variable mapping, PDM references, and File Explorer task visibility.

## SOLIDWORKS Add-in Only

Use the [SOLIDWORKS add-in documentation](pdmpublishersolidworks.md) for Publish profiles, [complete settings](pdmpublishersolidworks_settings.md), [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md), [Smart Pack and Go](pdmpublishersolidworks_smart-pack.md), interactive publishing, logs, updates, and licensing.

> [!TIP]
> If you are configuring a task in the PDM Administration tool, follow the **PDM Professional** section of the TOC. If you are using the PDMPublisher CommandManager commands inside SOLIDWORKS, follow the **SOLIDWORKS add-in** section.
