---
title: Settings | PDMPublisher for SOLIDWORKS
description: Configure publishing, utilities, integrations, BOM Manager, shared resources, licensing, and complete settings transfer in PDMPublisher for SOLIDWORKS.
ms.date: 09/30/2026
ms.topic: how-to
---

# Settings

Open **PDMPublisher > Settings** to configure the SOLIDWORKS add-in. Search Options finds settings by page name, label, and related keyword.

![Current Publish page in the unified PDMPublisher for SOLIDWORKS Settings dialog](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

The left navigation divides the dialog into **Publishing**, **Utilities**, **Integration**, **Bill Of Materials**, **Shared Resources**, and product-information pages. **Search Options** finds a control by its label or a related keyword without requiring the user to know which page contains it.

## Settings Pages

| Category | Page | What it controls |
| --- | --- | --- |
| Utilities | [Save As New](pdmpublishersolidworks_save-as-new.md) | Filename and destination templates, PDM serial numbers, associated drawings, bounding-box properties, macros, and command profiles. |
| Utilities | [Clone Tree](pdmpublishersolidworks_smart-pack.md) | Clone profiles, PDM serial-number source, latest-revision behavior, companion files, ZIP output, and optional Property Doctor processing. |
| Utilities | [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Default columns, thumbnail loading, and property-action profiles. |
| Utilities | [Translate](pdmpublishersolidworks_translate.md) | Planned translation workflow; not available yet. |
| Integration | [ERP Sync](pdmpublishersolidworks_erp-sync.md) | Active connector, default column template and BOM type, grouping, ignored components, and filters. |
| Integration | [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) | Opens the editable VBA example used to automate PDMPublisher commands. |
| Bill Of Materials | [BOM Manager](pdmpublishersolidworks_bom-manager.md) | Default BOM columns, display type, grouping expression, and component exclusions. |
| Shared Resources | [PDM](pdmpublishersolidworks_pdm-settings.md) | The vault used by PDM-aware utility settings. |
| Shared Resources | [Languages](pdmpublishersolidworks_languages.md) | The PDMPublisher interface language. |
| Shared Resources | [File Locations](pdmpublishersolidworks_file-locations.md) | Additional drawing folders, optional subfolders, and SOLIDWORKS Referenced Documents folders. |
| Shared Resources | [External Sources](pdmpublishersolidworks_external-sources.md) | Reusable SQL Server sources used by supported property and formula menus. |
| Shared Resources | [Advanced Formulas](pdmpublishersolidworks_advanced-formulas.md) | Named formulas shared by filenames, folders, and properties. |
| Publishing | [Publish](pdmpublishersolidworks_options.md) | Publish profiles, output, formats, references, drawing sheets, PDFs, and manufacturing output. |
| Support | [About](pdmpublishersolidworks_About.md) | Support, documentation, product, and legal links. |
| Product information | [License Key](pdmpublishersolidworks_license.md) | SOLIDWORKS add-in activation, deactivation, and Community Edition status. |

Select **OK** to save changes. **Cancel** closes the dialog without saving the current edits. **Reset** restores defaults for the selected page; select **OK** to keep the reset values.

## Utility Settings

### Save As New

![Current Save As New settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)

The page controls filename placeholders, an optional destination, PDM serial numbers, whether to show the SOLIDWORKS Save As dialog, automatic check-in, rebuild behavior, opening the new copy, calculated bounding-box properties, associated drawings, Property Doctor cleanup, post-save macros, and reusable profiles. Options that depend on another checkbox remain disabled until their parent option is enabled.

### Clone Tree

![Current Clone Tree settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Clone_Tree_Default_Light_100.png)

**Use this serial number** selects the PDM serial-number definition used by rows that request a new number. The profile selector chooses the settings edited by the command. The buttons beside it create, rename/edit, and delete profiles. Serial numbers are generated when **Copy** is selected in the workflow, and retries reuse the same number while the dialog remains open.

### Property Doctor

![Current Property Doctor settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Property_Doctor_Default_Light_100.png)

**Hide thumbnail column** improves loading performance. The column-template selector determines which properties appear when Property Doctor opens. **Edit columns** changes that template and **Save default** stores it as the default. The profile selector and adjacent buttons select, create, edit, or delete Property Doctor action profiles.

## Shared Resources

### PDM

![PDM vault connection settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)

Enable **Use vault** and select the local SOLIDWORKS PDM Professional vault shared by serial numbers, automatic check-in, Vault root folder placeholders, and other PDM-aware tools.

### Languages

![Language and regional-format selection](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Languages_Default_Light_100.png)

Select the display language and regional formatting used by PDMPublisher on this computer. Reopen existing PDMPublisher windows after changing it.

### File Locations

![Drawing file-location settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)

Use **Add** and **Remove** to maintain additional drawing search folders. **Include subfolders** searches below every listed folder. **Include SOLIDWORKS File Locations > Referenced Documents folders** also searches the folders configured in SOLIDWORKS. The active model's folder is always searched first, followed by the listed folders in order.

### External Sources

![External SQL Server source settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_External_Sources_Default_Light_100.png)

External sources are reusable SQL Server connections and queries. **Add** creates a source, **Edit / Test** changes it and validates the query using a configuration name, filename, or property value, and **Delete** removes the selected definition. Credentials remain local and are not included in exported settings.

### Advanced Formulas

![Advanced formula settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)

Advanced formulas are named expressions shared by supported filename, folder, and property menus. **Add** creates a formula, **Edit** changes the selected formula, and **Delete** removes it. Formula names should describe their result so they remain understandable when inserted from another workflow.

## Dialog Commands

| Command | Behavior |
| --- | --- |
| **Reset** | Restores defaults for the selected settings page. The reset is saved only after selecting **OK**. |
| **Import** | Imports all settings from a file or a six-digit sharing PIN. |
| **Export** | Exports all settings to a file or uploads them and returns a sharing PIN. |
| **OK** | Validates and saves the current changes. |
| **Cancel** | Closes the dialog without saving edits made since it opened. |

## Transfer All Settings

The **Import** and **Export** menus at the bottom transfer a complete PDMPublisher configuration.

- **Export all settings to File...** creates a complete settings bundle.
- **Share complete settings using PIN...** uploads the bundle and returns a six-digit PIN.
- **Import all settings from File...** validates and applies a bundle from disk.
- **Import complete settings using PIN...** downloads, validates, and applies a shared bundle.

A complete bundle contains utility settings, Save As New profiles, Property Doctor profiles, Clone Tree profiles, shared formulas and sources, and complete Publish profiles.

ERP Sync settings are included in the complete settings bundle. Connector credentials and other saved connector values remain protected for the current Windows user and are not made portable through settings export. Publisher Macros stores retained VBA code locally for the current Windows user; it is not included in the settings bundle. Translate has no configurable controls.

> [!IMPORTANT]
> SQL Server connection secrets are not exported or uploaded. After an import, re-enter credentials for external sources that do not already have matching local credentials.

Before replacing settings, PDMPublisher validates every section and creates a timestamped local backup. If writing a section fails, it attempts to restore the previous settings.

For transferring only one Publish profile, use [Profiles](pdmpublishersolidworks_profiles.md) instead of a complete settings bundle.

For the complete procedure and conflict behavior, see [Import, Export, and Reset Settings](pdmpublishersolidworks_settings-transfer.md).
