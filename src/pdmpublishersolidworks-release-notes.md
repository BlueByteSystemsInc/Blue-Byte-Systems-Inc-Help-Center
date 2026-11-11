---
title: SOLIDWORKS Add-in Release Notes | PDMPublisher
description: Release history for the PDMPublisher SOLIDWORKS Add-in.
ms.date: 11/11/2026
ms.topic: reference
---

# SOLIDWORKS Add-in Release Notes

For the other product, see [PDM task release notes](pdmpublisher-task-release-notes.md).

## 2026.10.73

*Applies to the **SOLIDWORKS Add-in***

- Added optional existing Odoo variant matching by document or configuration, using the item code from the selected property tab.
- Added a restart message after downloading a connector update, while keeping the update alert visible.
- Released Odoo connector 1.0.20.0 alongside the add-in. Verified both variant modes with Push and Pull against Odoo.

[Download 2026.10.73](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.73/pdmpublisher.msi) · [Odoo variant settings](pdmpublishersolidworks_odoo-connector.md#sync-product-variants)

## 2026.10.72

*Applies to the **SOLIDWORKS Add-in***

- BOM Manager opens for parts containing weldment or sheet-metal cut-list items.
- Weldment and sheet-metal cut-list rows use separate high-resolution thumbnails for display and ERP uploads.
- Preview column headers have resize handles, including the warning column.

[Download 2026.10.72](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.72/pdmpublisher.msi) · [BOM Manager](pdmpublishersolidworks_bom-manager.md#weldment-and-sheet-metal-parts) · [ERP Sync](pdmpublishersolidworks_erp-sync.md#cut-list-thumbnails)

## 2026.10.70

*Applies to the **SOLIDWORKS Add-in***

Odoo connector 1.0.19.0 supports syncing existing product variants by Internal Reference. SOLIDWORKS configuration names do not determine variant matching.

Shared-field changes show an (i) indicator explaining that all variants are affected. Conflicting values from selected sibling variants are rejected. Thumbnails and BOM updates target the matched variant.

Build, connector regression tests, and UI indicator checks passed. Install the add-in before updating the connector.

[Download 2026.10.70](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.70/pdmpublisher.msi) · [Odoo variant sync](pdmpublishersolidworks_odoo-connector.md#sync-product-variants)

## 2026.10.69

*Applies to the **SOLIDWORKS Add-in***

ERP Sync saves confirmed Odoo-generated product links inside SOLIDWORKS documents. Clear ERP link in the row context menu resets selected associations without deleting part-number properties or ERP products.

Weldment cut-list items use their own part numbers instead of inheriting the parent model's number.

Odoo connector 1.0.18.0 supports document-stored links and selected recovery resets. Update the add-in before the connector.

Build, automated ERP checks, and a live SOLIDWORKS save and reopen test passed.

[Download 2026.10.69](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.69/pdmpublisher.msi) · [ERP Sync](pdmpublishersolidworks_erp-sync.md) · [Odoo connector](pdmpublishersolidworks_odoo-connector.md)

## 2026.10.66

*Applies to the **SOLIDWORKS Add-in***

BOM Manager's column editor now offers Save As to create a named copy with the selected columns and their order. The original template is preserved, and the saved copy becomes the selected template. Duplicate names are rejected.

Buttons without a recognized action now display text without a fallback icon.

Build and automated checks passed for template persistence, column order, duplicate names, cancellation, and button icons.

[Download 2026.10.66](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.66/pdmpublisher.msi) · [Installation](pdmpublishersolidworks_installation.md)

## 2026.10.62

*Applies to the **SOLIDWORKS Add-in***

- Regular drawing views fit the sheet using their measured bounds, with a common scale, margins, and spacing. Predefined views and custom macros retain their layout settings.
- QR placement accounts for the image size to match the annotation preview.
- QR insertion removes newly created construction geometry while preserving existing sheet-format geometry. Cleanup continues to verify the exact temporary QR picture before deleting it.

Build and automated checks passed. Live SOLIDWORKS validation of view fitting, QR construction-line cleanup, and the reported first-PDF logo loss remains pending.

[Download 2026.10.62](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.62/pdmpublisher.msi) · [Installation](pdmpublishersolidworks_installation.md) · [Drawing settings](pdmpublishersolidworks-publish.md#create-solidworks-drawings)

## 2026.10.61

*Applies to the **SOLIDWORKS Add-in***

- Automatic drawing generation skips Toolbox components.
- Drawing Settings includes an optional **Sheet format (.slddrt)** picker. Browse starts in the configured SOLIDWORKS sheet-format folder. The drawing template and **Use template's predefined views** option remain available.
- Temporary QR images have unique IDs. Cleanup verifies the exact tracked picture before deletion, protecting existing title-block images.
- QR insertion clears selections and refreshes the sheet before export.

The signed installer and automated checks passed. Live SOLIDWORKS validation, including the reported first-PDF logo loss, remains pending.

[Download 2026.10.61](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.61/pdmpublisher.msi) · [Installation](pdmpublishersolidworks_installation.md) · [Drawing settings](pdmpublishersolidworks-publish.md#create-solidworks-drawings)

## 2026.10.49
*Applies to the **SOLIDWORKS Add-in***

- [ERP Sync](pdmpublishersolidworks_erp-sync.md) Push and Pull previews match the source grid's proportions and hierarchy. Comparisons run SOLIDWORKS → ERP for Push and ERP → SOLIDWORKS for Pull, with system icons.
- Mapped ERP fields appear in headers. Unmapped columns explain that they will not sync. Invalid mapped values use red cells with **(i)** correction details.
- Pull defaults to both document custom and configuration-specific properties. Destination details explain changes even when the displayed values match.
- BOM changes highlight assembly rows. The **Sync BOM >** submenu selects the supported BOM type and stays open after selection.
- Formula chips survive evaluation and editing changes. File-property pickers include properties hidden from the grid.
- Connector settings open from the adjacent **Edit** button. Updates to loaded connector DLLs are staged for the next SOLIDWORKS session.
- Trial product names are recognized for the SOLIDWORKS edition.
- Updated the [Odoo connector](pdmpublishersolidworks_odoo-connector.md).

## 2026.10.23
*Applies to the **SOLIDWORKS Add-in***

- After an update is installed and SOLIDWORKS is restarted, the updater now shows a 20-second countdown on the **Close** button and closes automatically when the countdown finishes. The button can still be selected to close the updater immediately.
- Fixed **Upgrade legacy custom properties** in Property Doctor, Save As New, and Clone Tree. Each document is now upgraded once on its own; referenced documents included in the operation are handled separately instead of being upgraded recursively.

## 2026.10.20
*Applies to the **SOLIDWORKS Add-in***

- Property Doctor now asks whether to refresh after successfully applying property edits, deletions, or profile actions. Refresh updates the current grid without reopening the window and preserves unsaved SOLIDWORKS changes.
- Refresh reads only affected documents, once per document. Unchanged documents and drawings are skipped.
- Refresh progress identifies the current document and overall completion. It can be cancelled between documents without undoing changes that were already applied.
- After Apply succeeds, a property column is removed when that property no longer exists in any document, configuration, or cut-list row. A property with an empty value still counts as existing.
- The refresh prompt is not shown when Apply has no changes, Apply fails, a profile runs silently, or the window is closed with **OK**.

## 2026.10.13–2026.10.19
*Applies to the **SOLIDWORKS Add-in***

- Maintenance releases containing bug fixes and stability improvements.

## 2026.10.12
*Applies to the **SOLIDWORKS Add-in***

- Added Clone Tree right-click actions: **Check All**, **Uncheck All**, **Check Selected**, and **Uncheck Selected**. Required root documents remain checked.
- Added safe overwriting for existing destination files and ZIP archives. Clone Tree temporarily backs up existing outputs and restores them if copying fails.
- Continued to protect source documents from overwriting. Duplicate destinations, open destination documents, and read-only destinations produce errors.
- Updated **Copy All**, **Copy Above**, **Copy Below**, and drag-to-fill to include the ZIP archive row. Values can also be copied from the ZIP row.
- Updated copy and fill operations to follow the displayed row order and current filtering.
- Each Copy attempt now prepares a fresh SOLIDWORKS Pack and Go object, addressing failures when copying again without reopening Clone Tree. Grid settings are retained.
- Updated Clone Tree help text to explain destination overwriting.

## 2026.10.11
*Applies to the **SOLIDWORKS Add-in***

- Fixed the **Drawing background** selector in the annotation settings so its menu opens reliably, preserves its separators, and uses the correct colors in light and dark themes.

## 2026.10.10
*Applies to the **SOLIDWORKS Add-in** and shared licensing components*

- Improved publishing performance and stability by reading each document's evaluated properties once per run and reusing them for its configurations and outputs.
- Drawings opened only to evaluate publishing properties now load in the background and are closed safely when the publishing run finishes.
- Added **Use Selected** and **Discard Selected** commands to the publishing review grid. **Use All** and **Discard All** now apply to the complete review list even when a search filter is active.
- Added Clone Tree commands to copy a cell's value or formula to every editable cell in the same column, or only to the cells above or below it.
- Standardized license expiry storage and comparison in UTC while continuing to display expiry dates in the user's local time.

## 2026.10.09

*Applies to the **SOLIDWORKS Add-in***

- Fixed ERP connector catalog downloads by accepting the trusted legacy `pdmpublisher.com` upload URL through HTTPS and reporting clearer catalog errors.

## 2026.10.08.0
*Applies to **SOLIDWORKS Add-in***

- Updated flat-pattern export configuration activation to avoid switching when the requested configuration is already active and to verify the active configuration after a switch. This addresses the **Could not activate configuration Default** failure.
- Changed the horizontal and vertical gridlines in **Publishing results** to light gray for a softer appearance.
- Updated the DXF guidance to: **“DXF is selected. This only converts drawings to DXF. To export flat patterns, enable the sheet metal flat pattern option below.”**
- Released digitally signed installer version `26.10.08`.

## 2026.10.07
*Applies to **SOLIDWORKS Add-in***

- Redesigned the publishing review dialog to show evaluated destinations, run-specific formats, the export location, included and excluded counts, and the final selection before publishing.
- Added a new **Publishing results** dialog with a hierarchical file/configuration/output view, search and result filters, a detailed log, output details, and commands to open a file or folder and copy its path.
- Implemented separate flat-pattern DXF export for multi-body sheet-metal parts. Enable **Export each sheet-metal body to a separate DXF** in **Sheet metal settings**.
- Enhanced **Configuration filter** with searchable configuration pickers populated from all open SOLIDWORKS documents, document/configuration grouping, and bulk **Add all shown** and **Remove all shown** actions.
- Updated the Publish settings and Sheet metal settings interfaces.

## 2026.10.06
*Applies to **SOLIDWORKS Add-in***

- Added a **Publish to (folder and filename)** column to the publishing review dialog, showing evaluated output paths for each selected format.
- Output previews update when formats change and respect per-format export locations.
- Enabled resizing of review-grid columns and reduced minimum widths.
- Fixed dark-mode colors for the review grid, column headers, selection, and output-format selector.
- Fixed the output-format dropdown closing unexpectedly while selecting formats.
- Publish now reads evaluated custom-property values from live SOLIDWORKS documents, including unsaved changes, instead of Document Manager.
- Fixed linked properties such as **Mass** appearing as raw `SW-Mass@...` expressions in output filenames.
- Added fallback to file-level custom properties when a configuration does not define the requested property.
- Property Doctor now opens with **Show evaluated values** enabled for all columns.

## 2026.10.05
*Applies to **SOLIDWORKS Add-in***

- Added small user-interface fixes for dark mode.

## 2026.10.04.0
*Applies to **SOLIDWORKS Add-in***

- Installer version: `26.10.04`.
- Refined the [BOM Manager](pdmpublishersolidworks_bom-manager.md) Excel export layout by placing **Browse...** beside the **Workbook template** field.
- Renamed the Excel export thumbnail option to **Include thumbnail**.

## 2026.10.03
*Applies to **SOLIDWORKS Add-in***

- Added [Company Settings](pdmpublishersolidworks_company-settings.md), allowing an administrator to publish selected configuration groups to licensed users with the same company name.
- Added **Off**, **Let users choose**, and **Required** policies, protected administrator editing, cached downloads, revision-conflict protection, and an explicit option to overwrite a newer company revision.

## 2026.10.02
*Applies to **SOLIDWORKS Add-in***

- Added the official [Microsoft Dynamics 365 Business Central connector](pdmpublishersolidworks_business-central-connector.md) for reviewed item creation, mapped-property updates, and mapped-property Pull. BOM synchronization is not available because the standard Business Central API v2.0 does not expose assembly or production BOM definitions.
- Fixed [Property Doctor](pdmpublishersolidworks_property-doctor.md#edit-properties) column deletion so multiple selected property columns can be marked for deletion or restored together. Using the command on an unselected column still affects only that column.

## 2026.10.01
*Applies to **SOLIDWORKS Add-in***

- Fixed an issue where deleting a custom property in [Property Doctor](pdmpublishersolidworks_property-doctor.md#edit-properties) did not mark the SOLIDWORKS document as modified. The deletion is now retained when the document is saved.

## 2026.09.31
*Applies to **SOLIDWORKS Add-in***

- Added the official [Odoo connector](pdmpublishersolidworks_odoo-connector.md) for Odoo 19+ JSON-2 product, property, attachment, manufacturing BOM, and reviewed Pull synchronization.
- Added ERP Pull with a required [review diff](pdmpublishersolidworks_erp-sync.md#pull-erp-properties-into-solidworks) before mapped ERP properties are applied to SOLIDWORKS.
- Added Pull snapshot revalidation, explicit skip reasons, unchanged-value display, and guarded handling for read-only, built-in, calculated, identity, missing, and null values.
- Added `IErpPullPreview` and `ErpCapabilities.PullPreview` for custom connector implementations.
- Expanded the custom connector guide into a step-by-step tutorial with project setup, typed settings, capability selection, a complete Push/Pull learning connector, packaging, testing, production checks, and troubleshooting.
- Added **Mark property for deletion (visible rows)** to the [Property Doctor](pdmpublishersolidworks_property-doctor.md#edit-properties) column right-click menu.
- Included small reliability and usability fixes.

## 2026.09.30
*Applies to **SOLIDWORKS Add-in***

- Added [Publisher Macros](pdmpublishersolidworks_publisher-macros.md), including an editable VBA example with syntax highlighting and direct execution through SOLIDWORKS.
- Added VBA automation calls for saved Save As New, Property Doctor, and Clone Tree profiles, plus ERP Sync sources and Push operations.
- Added interactive and silent execution, retained macro code, VBA error reporting, and supporting usability fixes.

## 2026.09.28
*Applies to **SOLIDWORKS Add-in***

- Added an ERP Sync source selector for the active [SOLIDWORKS feature tree, SOLIDWORKS BOM tables, and UTF-8 CSV files](pdmpublishersolidworks_erp-sync.md#choose-the-synchronization-source).
- SOLIDWORKS BOM table sources use visible rows, columns, displayed quantities, and the table's selected configuration. Valid indented tables can also supply BOM hierarchy.
- CSV sources expose every column to the connector and can supply BOM hierarchy through recognized item-code and parent columns.

## 2026.09.27
*Applies to **SOLIDWORKS Add-in***

- Fixed [ERP Sync reporting](pdmpublishersolidworks_erpnext-connector.md#monitor-synchronization-and-review-the-report) so every checked Item receives a clear **Success**, **No sync needed**, or **Failure** result.
- Successful connectors that do not return individual Item outcomes now report the affected rows as **Success** with an explanatory fallback message instead of **Not reported**.
- Added status-based row colors, clearer failure details, status searching, and a cleaner report grid.

## 2026.09.26
*Applies to **SOLIDWORKS Add-in***

- Enabled [ERP Sync](pdmpublishersolidworks_erp-sync.md) for synchronizing selected SOLIDWORKS items, mapped properties, ERP-generated part numbers, and checked BOM relationships through an installed ERP connector.
- Added the ERP Sync review window with row selection, BOM display types, column templates, grouping, filtering, ignored-component rules, cut-list inclusion, and selectable Push operations.
- Added the official connector catalog and custom connector loading through **ERP connector settings**.
- Added the `PDMPublisher.ERPExtension.dll` contract and typed `ErpConnector<TSettings>` API for [building custom C# ERP connectors](pdmpublishersolidworks_erp-connector.md) on .NET Framework 4.7.2.
- Added [ERPNext connector](pdmpublishersolidworks_erpnext-connector.md) configuration, connection testing, item and property synchronization, and BOM synchronization. Pull remains visible but disabled in this release.

## 2026.09.25
*Applies to **SOLIDWORKS Add-in***

- Reorganized PDMPublisher around the SOLIDWORKS CommandManager and **Tools > PDMPublisher** menu. The task pane now displays the online help instead of hosting publishing controls. See [PDMPublisher Commands](pdmpublishersolidworks_commands.md) and [Help Task Pane](pdmpublishersolidworks_help-pane.md).
- Added the current utility workflows: [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md), [Clone Tree](pdmpublishersolidworks_smart-pack.md), and [BOM Manager](pdmpublishersolidworks_bom-manager.md).
- Added a unified, searchable [Settings](pdmpublishersolidworks_settings.md) dialog with command-specific profiles, shared resources, and complete configuration transfer by file or six-digit PIN. See [Import, Export, and Reset Settings](pdmpublishersolidworks_settings-transfer.md).
- Expanded publishing templates and property evaluation with PDM values, date and time values, serial numbers, saved formulas, and external SQL sources.
- Added contextual condition help, wildcard property-name selection, and material assignment from a property in Property Doctor.
- Added interface localization and localized installers. See [Languages](pdmpublishersolidworks_languages.md).
- Added optional installation and license statistics with an immediate per-user opt-out. See [About, Updates, and License](pdmpublishersolidworks_About.md).

## 2026.08.11
*Applies to **SOLIDWORKS Add-in***

- Registered PDMPublisher for SOLIDWORKS as a SOLIDWORKS Partner Solution add-in. It now appears under **Partner Solution Add-Ins** in the SOLIDWORKS **Add-Ins** dialog. No other product functionality changed in this version.

## 2026.08.10
*Applies to **SOLIDWORKS Add-in***

- Added profile sharing by six-digit PIN. A user can share selected Options, Annotations, and Conditions sections, and the PIN remains available for 30 days.
- Added **Load using PIN...** to download a shared profile, select which included sections to apply, save the result locally, and make it the active profile. Existing settings in sections that are not selected remain unchanged.
- Added profile-name conflict handling so a downloaded profile can replace the local profile, be saved under another name, or be cancelled. See [Share Profiles Using a PIN](/src/pdmpublishersolidworks_profile_sharing.html).

## 2026.08.09

*Applies to the **SOLIDWORKS Add-in***

- Changed drawing sheet matching so a multi-sheet drawing with no sheets matching the evaluated pattern exports all sheets instead of producing no sheet output.
- One-sheet drawings continue to export their only sheet without evaluating the sheet-name pattern. See [Sheet Name Pattern](/src/pdmpublisher-options/sheet-name-pattern.html).

## 2026.08.08

*Applies to the **SOLIDWORKS Add-in***

- Added reusable profiles with controls to create, rename, save, export, load, and delete publishing configurations.
- Added starter profile templates for DXF, PDF and STEP, and STEP workflows.
- Added collapsible task-pane navigation to provide more room for settings.
- Added optional Windows light/dark theme support. Theme changes apply after SOLIDWORKS restarts.
- Added drawing sheet selection with sheet-name pattern and `(ConfigurationName)` matching.
- Updated the multi-format selector with descriptive names and file-type icons.
- Updated the Options, Annotations, Conditions, and About interfaces. See [PDMPublisher for SOLIDWORKS](/src/pdmpublishersolidworks.html).

## 2026.08.05
*Applies to the **SOLIDWORKS Add-in***
- Added ACIS, 3D XML, VRML, VDAFS, CATIA Graphics, HCG, HOOPS HSF, Microsoft XAML, JPEG, TIF, Adobe Illustrator, and Adobe Photoshop export formats. See [File Formats](/src/pdmpublisher-options/file-formats.html).
- Added descriptive format names and Windows file-type icons to the File Formats selector and extension-specific export locations.
- Added visual icons to the BOM template and SOLIDWORKS version selectors.

## 2026.05.31
*Applies to the **SOLIDWORKS Add-in***
- Hot fix: PDF not printing due to split bodies.

## 2026.05.30

*Applies to the **SOLIDWORKS Add-in***

- Fixed icon transparency issue in the taskpane and the add-in manager dialog in SOLIDWORKS
- Added support for splitting multi-body part. See [here](/src/pdmpublishersolidworks_options.html).  
- Limited `u3d` extension to assemblies export only.

## 2026.03.27
*Applies to **SOLIDWORKS add-in***
- Fixed crash related to GDI reaching +9999
- Minor changes in the progress dialog

## 2026.03.22
*Applies to the **SOLIDWORKS Add-in***
- Merge and TOC bugs fixes.
- Added support for exporting to `bmp`

## 2026.02.23
*Applies to the **SOLIDWORKS Add-in***
- Fixed bug when exporting flat pattern when `Convert Multiple Configurations` is enabled
- Added new option under Flat Pattern Settings to remove or add `-FlatPattern` to the dxf flat pattern filename.

## 2026.02.22
*Applies to the **SOLIDWORKS Add-in***
- Added support for filtering configurations to task enabled via the `Convert Multiple Configurations`
- Added support for the `3mf` extension for parts

## 2026.02.21
*Applies to **SOLIDWORKS Add-in***
- Fix bug related to drawings not closing when printing to PDF.

## 2026.02.20
*Applies to **SOLIDWORKS Add-in***
- Added ability to choose which configurations (include and exclude patterns) to process under the `Convert Multiple Configurations` option

## 2026.02.19

## 2026.02.18
*Applies to **SOLIDWORKS Add-in***
- Ghost rebuild

## 2026.02.17
*Applies to **SOLIDWORKS Add-in***
- Fix BOM calculation issue

## 2026.02.16

## 2026.02.15

## 2026.02.14

## 2026.02.13
*Applies to **SOLIDWORKS Add-in***
- Ghost rebuild

## 2026.02.13
*Applies to **SOLIDWORKS Add-in***
- Fix: If taskpane fails, add-in will attempt to self re-register. You must be running SW as admin for this work.

## 2026-02-12 
*Applies to **SOLIDWORKS Add-in***
- Improved references dialog load speed

## 2026-02-11 
*Applies to **SOLIDWORKS Add-in***
- Fixed bug: Incomplete references dialog data when top level assembly is opened in lightweight.
- Decreased time it takes to build the reference tree in the progress dialog
- Minor UI changes in the about page (Renamed buttons captions and added support email address)

## 2026-02-10 
- Ghost build

## 2026-02-09 
*Applies to the **SOLIDWORKS Add-in***
- Started used seperator | instead of # (Caused issues with filenames containing #)
- Updated FAQ about merging PDFs error.
- Added `ConfigurationName` alias to conditions.

## 2026-01-17  
*Applies to the **SOLIDWORKS Add-in***
- Fixed  **outside diameter of countersink holes** when exporting **DXF flat patterns** bug.

## 2026-01-16  
*Applies to **SOLIDWORKS Add-in***
- Fixed assembly conflict bug

## 2026-01-15  
*Applies to the **SOLIDWORKS Add-in***

- Added a new **Flat Pattern export setting** that removes the **outside diameter of countersink holes** when exporting **DXF flat patterns**: This helps produce cleaner DXFs for downstream manufacturing by excluding countersink outer geometry while preserving required cut profiles.
