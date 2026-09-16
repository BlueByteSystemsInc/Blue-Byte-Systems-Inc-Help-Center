---
title: Shared Resources | PDMPublisher for SOLIDWORKS
description: Configure reusable PDM, language, file-location, external-source, and advanced-formula settings.
ms.date: 09/16/2026
ms.topic: overview
---

# Shared Resources

Open **PDMPublisher > Settings** and use the **Shared Resources** group for settings reused by publishing and utility workflows.

![Shared Resources navigation in PDMPublisher Settings](/images/pdmpublisher/solidworks/settings-file-locations-20260908.png)

| Page | Used for |
| --- | --- |
| [PDM](pdmpublishersolidworks_pdm-settings.md) | Selects the local vault used by PDM-aware features. |
| [Languages](pdmpublishersolidworks_languages.md) | Selects the add-in interface language. |
| [File Locations](pdmpublishersolidworks_file-locations.md) | Defines additional locations used to find related drawings. |
| [External Sources](pdmpublishersolidworks_external-sources.md) | Stores reusable SQL Server query definitions. |
| [Advanced Formulas](pdmpublishersolidworks_advanced-formulas.md) | Stores named expressions for filenames, folders, and properties. |

Changes are not committed until you select **OK**. **Cancel** discards edits made since the Settings window opened. Use [Import, Export, and Reset Settings](pdmpublishersolidworks_settings-transfer.md) to back up or move these resources.

> [!NOTE]
> A shared resource supplies a reusable definition. Individual profiles and commands still decide whether to use it.
