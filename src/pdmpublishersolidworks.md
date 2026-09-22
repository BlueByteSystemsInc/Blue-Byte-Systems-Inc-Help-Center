---
title: PDMPublisher for SOLIDWORKS
description: Use PDMPublisher inside SOLIDWORKS for publishing, Save As New, Property Doctor, Clone Tree, profiles, and shared settings.
ms.date: 09/30/2026
ms.topic: overview
---

# PDMPublisher for SOLIDWORKS

PDMPublisher for SOLIDWORKS is an interactive SOLIDWORKS add-in for publishing deliverables, creating controlled document copies, editing properties, and packaging complete document sets. It runs inside SOLIDWORKS and can use SOLIDWORKS PDM Professional information when a vault view is available.

> [!IMPORTANT]
> This documentation describes the SOLIDWORKS add-in, not the PDMPublisher task configured in the SOLIDWORKS PDM Administration tool.

See [PDM Task vs SOLIDWORKS Add-in](pdmpublisher-product-differences.md) for a side-by-side comparison and links to the settings shared by both products.

## Current Interface

PDMPublisher commands are located on the **PDMPublisher** tab in the SOLIDWORKS CommandManager and under **Tools > PDMPublisher**. The task pane is now a documentation browser and no longer contains the publishing controls.

![Current PDMPublisher CommandManager commands in SOLIDWORKS 2026](/images/pdmpublisher/solidworks/commandmanager-publisher-macros-20260930.png)

The CommandManager is organized into three groups:

| Group | Commands | Purpose |
| --- | --- | --- |
| Document tools | Save As New, Property Doctor, Translate, Clone Tree | Create copies, manage properties, and package document sets. Translate is reserved for a future release. |
| Bill of materials | BOM Manager | Configure BOM columns, structure, grouping, and component exclusions. |
| Integrations | ERP Sync, Publisher Macros | Synchronize ERP data and run editable VBA automation examples for PDMPublisher commands. |
| Publishing | Publish, Annotations, Conditions, Logs | Configure and run exports, control annotations and processing rules, and review results. |
| Settings and updates | Settings, License Key, update status, version information | Configure the add-in, transfer settings, manage licensing, and check the installed version. |

See [PDMPublisher Commands](pdmpublishersolidworks_commands.md) for command availability, profile drop-downs, and assembly context-menu commands.

## Start a Workflow

1. Open or activate a saved part, assembly, or drawing in SOLIDWORKS.
2. Open the **PDMPublisher** CommandManager tab.
3. Select a command to use its default settings, or select the arrow below a supported command to choose a saved profile.
4. Review the command window or preview before writing files or document properties.
5. Complete the operation and review any reported warnings or errors.

**Save As New**, **Property Doctor**, **Clone Tree**, and **Publish** support reusable profiles. A component selected in an assembly also has PDMPublisher commands on its right-click menu.

## Save As New

[Save As New](pdmpublishersolidworks_save-as-new.md) creates a separate native SOLIDWORKS document without renaming the source document or changing the source assembly references.

![Save As New settings and profile controls](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)

Use it to:

- Build filenames and destination folders from document values, properties, folder values, PDM variables, formulas, serial numbers, and prompted text.
- Display the normal Save As dialog when the destination needs user confirmation.
- Rebuild the model before saving and open the new copy afterward.
- Copy and relink an associated drawing.
- Write calculated bounding-box dimensions to the new part or assembly.
- Run a SOLIDWORKS macro after the copy is created.
- Add and check the new files into the selected PDM vault automatically.

Save As New validates the extension, destination, duplicate filenames, existing files, and vault conflicts before writing the copy.

## Property Doctor

[Property Doctor](pdmpublishersolidworks_property-doctor.md) displays the active document, configurations, cut lists, drawings, and referenced documents in one editable property grid.

![Property Doctor document and property grid](/images/pdmpublisher/solidworks/ui-preview/PropertyDoctor/PropertyDoctor_Main_window_Default_Light_100.png)

Use it to:

- Add, edit, clear, reset, or delete custom and configuration-specific properties.
- Search, filter, find and replace, and fill values across visible rows.
- Use document values, linked values, formulas, PDM information, and configured external sources.
- Add and organize property columns or load a reusable column template.
- Import property values from CSV and export the current grid to CSV.
- Preview a Property Doctor profile before applying its ordered property actions.
- Check PDM files in or out, get latest, resolve references, and open unloaded documents when permitted.

Pending changes remain in the grid until **Apply changes** is selected. **Discard changes** restores the values that were loaded when the window opened.

## Clone Tree

[Clone Tree](pdmpublishersolidworks_smart-pack.md) creates a copy plan for an active document and its references. Every included file can have its own output name and destination while SOLIDWORKS references are updated to the copied files.

![Clone Tree document copy plan](/images/pdmpublisher/solidworks/ui-preview/CloneTree/CloneTree_Main_window_Default_Light_100.png)

Use it to:

- Include or exclude individual models and drawings from the package.
- Build per-file names and destinations from properties, folders, PDM variables, serial numbers, and formulas.
- Ignore Toolbox components when they should continue to reference their original locations.
- Include same-named STEP, PDF, or DXF companion files.
- Copy the latest assigned PDM revision directly to the destination without changing the local vault cache.
- Save supported documents in the current SOLIDWORKS release or a supported earlier release.
- Create a ZIP archive after the document set is copied.
- Apply ordered profile rules and optionally run a Property Doctor profile on copied files.

The copy is blocked when targets are duplicated, overwrite a source or existing file, change a SOLIDWORKS extension, or depend on unresolved destination or revision information.

## BOM Manager

[BOM Manager](pdmpublishersolidworks_bom-manager.md) defines the default column template, SOLIDWORKS BOM display type, row-grouping expression, and condition-based component exclusions used by BOM workflows.

![BOM Manager main window](/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Main_window_Default_Light_100.png)

The BOM Manager window displays the assembly hierarchy, configuration, quantity, and selected property columns. It can find and filter rows, change the BOM type or column template, group entries, ignore components, import or export Excel data, and apply supported changes.

![BOM Manager defaults](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_BOM_Manager_Default_Light_100.png)

Select **Ignore Components** to build conditions that remove matching components from the BOM without suppressing or deleting them in the SOLIDWORKS assembly.

![BOM Manager Ignore Components conditions](/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Ignore_components_Default_Light_100.png)

## Publishing

The [Publish](pdmpublishersolidworks-publish.md) command opens publishing for the active document. A Publish profile combines the output settings, annotations, and conditions needed for a repeatable export.

![Publish output, drawing sheet, reference, and manufacturing settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

Publishing can:

- Export parts, assemblies, drawings, and references to supported PDF, DXF, DWG, STEP, eDrawings, and other formats.
- Build output paths and filenames from placeholders and document or PDM values.
- Process references individually, convert configurations, and filter configurations.
- Select drawing sheets, match sheet names, merge PDFs, add a table of contents, and create bookmarks.
- Export sheet-metal flat patterns and split bodies.
- Add text, property values, watermarks, and QR codes through [Annotations](pdmpublishersolidworks_annotations.md).
- Include or exclude documents and references through [Conditions](conditions_solidworks.md).
- Record processing details, warnings, and errors in [Logs](pdmpublishersolidworks_logs.md).

See [Publish Settings](pdmpublishersolidworks_options.md) for the complete publishing option reference.

### Annotations

[Annotations](pdmpublishersolidworks_annotations.md) place formatted text, SOLIDWORKS properties, watermarks, and other marks on published PDF pages. Each annotation can have its own position and sheet selection.

![Annotations editor](/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Annotations_Default_Light_100.png)

### Conditions

[Conditions](conditions_solidworks.md) use nested rules to include or exclude documents and references before export. The publishing review shows the result before files are written.

![Conditions editor](/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Default_Light_100.png)

### Logs and publish review

[Logs](pdmpublishersolidworks_logs.md) record output files, warnings, skipped items, and errors. When **Show dialog before processing** is enabled, the review window lists the files and configurations that will be processed.

![Review files before publishing](/images/pdmpublisher/solidworks/publish-condition-review-20260916.png)

![Publishing logs filtered to errors](/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)

## Settings and Profiles

The [Settings](pdmpublishersolidworks_settings.md) command opens one searchable dialog for all add-in configuration.

![Searchable PDMPublisher for SOLIDWORKS Settings dialog](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)

The dialog contains:

- Utility settings and profiles for Save As New, Property Doctor, and Clone Tree.
- BOM Manager defaults for columns, display type, grouping, and ignored components.
- ERP Sync defaults for the active connector, BOM view, grouping, component exclusions, and filters, plus access to the Publisher Macros VBA editor. Translate remains planned.
- Complete Publish profiles, including publishing options, annotations, and conditions.
- Shared PDM selection, languages, drawing search folders, external sources, and advanced formulas.
- Support, update, version, legal, and license information.

Profiles belong to the command that uses them. For example, a Property Doctor profile stores property actions, while a Publish profile stores export behavior. Selecting the arrow below a CommandManager command lists the profiles available to that command.

The Settings **Import** and **Export** menus can transfer the complete configuration through a file or six-digit PIN. Complete transfer includes every profile family and the shared resources. SQL Server credentials are intentionally excluded and must be entered on the destination computer.

### Shared resources

Shared resources provide reusable configuration to supported utilities and publishing profiles.

- [Languages](pdmpublishersolidworks_languages.md) selects the add-in display language and regional formatting.
- [File Locations](pdmpublishersolidworks_file-locations.md) defines additional folders used to locate associated drawings.
- [External Sources](pdmpublishersolidworks_external-sources.md) defines reusable SQL Server connections and queries.
- [Advanced Formulas](pdmpublishersolidworks_advanced-formulas.md) defines named expressions for filenames, folders, and properties.

![Language and regional-format settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Languages_Default_Light_100.png)

![Drawing file-location settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)

![External SQL Server sources](/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Sources_Default_Light_100.png)

![Advanced Formulas settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)

## Integrations and Planned Features

[ERP Sync](pdmpublishersolidworks_erp-sync.md) is available for production use with an installed connector. It can synchronize checked items, mapped properties, ERP-created part numbers, and selected BOM relationships. [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) is also available for editing and running VBA automation examples. [Translate](pdmpublishersolidworks_translate.md) remains planned.

![Planned Translate settings page](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Translate_Default_Light_100.png)

![Enabled ERP Sync settings page](/images/pdmpublisher/solidworks/erp-sync-settings-20260920.png)

![Enabled Publisher Macros settings page](/images/pdmpublisher/solidworks/publisher-macros-settings-20260930.png)

## Help Task Pane

The PDMPublisher task pane displays the compact documentation welcome page at `https://pdmpublisher.com/help/addinwelcome.html`. It does not host or control the native PDMPublisher commands.

The embedded page requires Microsoft Edge WebView2 Runtime. If the page cannot load, all CommandManager commands remain available. See [Help Task Pane](pdmpublishersolidworks_help-pane.md) for requirements and troubleshooting.

## SOLIDWORKS PDM Professional Integration

When the computer has a local PDM vault view, PDMPublisher can use the active PDM session to resolve vault folders and variables, reserve serial numbers, check files in or out, get revisions, and validate vault destinations. The available actions still follow the signed-in user's vault permissions and workflow state.

![PDM vault connection used by add-in utilities](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)

The SOLIDWORKS add-in does not include PDM task scheduling, task-launch prompts, execution-method configuration, or task-host SOLIDWORKS selection. Those belong to [PDMPublisher for PDM Professional](pdmpublisher.md).

## Install and Enable the Add-In

Close SOLIDWORKS before running the MSI installer. After installation, open **Tools > Add-Ins**, locate **PDMPublisher (SOLIDWORKS)** under **Partner Solution Add-Ins**, and select both the current-session and startup checkboxes.

![PDMPublisher for SOLIDWORKS enabled as a Partner Solution Add-In](/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)

See [Install and Enable the Add-in](pdmpublishersolidworks_installation.md) for the full procedure and troubleshooting.

## Download and Licensing

- [Installation guide](pdmpublishersolidworks_installation.md)
- [Download PDMPublisher for SOLIDWORKS](https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher)
- [Purchase a PDMPublisher for SOLIDWORKS license](https://bluebyte.biz/product/pdmpublisher-solidworks)
- [License management](pdmpublishersolidworks_license.md)

PDMPublisher for SOLIDWORKS can run as the Community Edition without a paid or trial key. The separate 7-day trial offered elsewhere on this help site is for the **PDM Professional Task version**.

![PDMPublisher for SOLIDWORKS License Key page](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_License_Key_Default_Light_100.png)

## Updates and About

[Version and Updates](pdmpublishersolidworks-updates.md) reports the installed and available versions and provides the update command. [About](pdmpublishersolidworks_About.md) provides product, support, documentation, and legal information.

![Support and Updates settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Support_Updates_Default_Light_100.png)

![About settings](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_About_Default_Light_100.png)

For support, contact `support@bluebytesystemsinc.zohodesk.com`.
