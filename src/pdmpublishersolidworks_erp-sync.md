---
title: ERP Sync | PDMPublisher for SOLIDWORKS
description: Configure ERP Sync and push SOLIDWORKS items, properties, and BOMs through an installed ERP connector.
ms.date: 09/28/2026
ms.topic: conceptual
---

# ERP Sync

ERP Sync is enabled in PDMPublisher for SOLIDWORKS. It sends selected SOLIDWORKS document, component, property, and BOM data to an ERP system through an installed ERP connector.

Open **PDMPublisher > ERP Sync** to review and push the active document. Open **PDMPublisher > Settings > ERP Sync** to choose the connector and configure the default BOM view.

> [!NOTE]
> ERP Sync currently supports **Push**. **Pull** is visible in the window but remains disabled until a pull contract is implemented.

## Configure ERP Sync

![ERP Sync settings in PDMPublisher for SOLIDWORKS](/images/pdmpublisher/solidworks/erp-sync-settings-20260920.png)

The settings page contains:

| Setting | Description |
| --- | --- |
| ERP connector | Selects the connector used by ERP Sync. Open the connector settings from the adjacent connector command. |
| Default column template | Selects the BOM Manager column template used when the ERP Sync window opens. The selected columns also provide available values to the connector. |
| Default BOM display type | Selects the initial **Parts only**, **Top-level only**, or indented BOM view. |
| Group by | Groups displayed rows by text, a property, or a supported placeholder. Leave it empty for a flat list. |
| Ignore Components | Opens conditions that exclude matching components from the ERP Sync view. |
| Find text | Filters the displayed rows by text. |
| Item types | Limits the kinds of rows included in the view. |

Select **OK** to save the defaults. These settings are independent from BOM Manager settings.

## Install and configure a connector

![ERP connector catalog and settings](/images/pdmpublisher/solidworks/erp-connector-settings-20260920.png)

1. Open **Settings > ERP Sync**, and open **ERP connector settings**.
2. Select an official connector and choose **Download**, or choose **Add new...** to browse to a custom connector DLL.
3. Select the installed connector. Its settings appear in the lower property grid.
4. Enter the server URL, credentials, mappings, and other connector-specific values.
5. Choose **Test connection**. Correct any reported authentication, URL, or mapping problem.
6. Choose **Save** to make that connector active.

Connector settings are saved separately for each connector and encrypted for the current Windows user. Restart SOLIDWORKS before replacing a connector DLL that has already been loaded.

For the connector supplied by Blue Byte Systems, see [ERPNext Connector](pdmpublishersolidworks_erpnext-connector.md).

## Choose the synchronization source

Use the source selector at the upper left of ERP Sync to choose where the rows, columns, quantities, and BOM hierarchy come from.

![ERP Sync source selector with Feature tree, SOLIDWORKS BOM table, and CSV file choices](/images/pdmpublisher/solidworks/erp-sync-source-selector-20260928.png)

| Source | What ERP Sync uses | Important behavior |
| --- | --- | --- |
| Feature tree | The active SOLIDWORKS document and its resolved component tree. | This is the default source. BOM type, column templates, grouping, component filters, cut-list items, and phantom rows remain available. A BOM Push requires the **Indented** view with no grouping. |
| SOLIDWORKS BOM table | A BOM table found in an assembly or drawing, including the table's selected configuration. | Visible table rows, visible columns, and displayed quantities are used. Item and property Push remain available for every valid table. BOM Push additionally requires an indented table with detailed numeric item numbers such as `1`, `1.1`, and `1.2`, visible parent rows, and an unambiguous hierarchy. |
| CSV file | A UTF-8 CSV file selected from disk. | Every CSV column becomes a connector source property. Item and property Push are available after the file passes validation. BOM Push is enabled when item and parent columns define a valid hierarchy. |

The selected source is remembered for the saved SOLIDWORKS document.

### Feature tree

Choose **Feature tree** to build rows from the active part, assembly, or drawing. Use **BOM type**, **Column template**, **Group by**, **Ignore Components**, and the item filters to shape the view. Feature-tree rows can include resolved components, cut-list items, and phantom rows according to the selected settings.

### SOLIDWORKS BOM table

Open the document submenu in the source selector and choose a specific BOM table and configuration. ERP Sync reads the table as it is displayed:

- Hidden rows and hidden columns are omitted.
- Column titles and custom-property columns become source properties that a connector can map.
- The displayed quantity must be numeric.
- Item and property synchronization can use a flat table. BOM synchronization requires an indented hierarchy with detailed numeric item numbering and visible parent rows.

If a table cannot produce an unambiguous hierarchy, ERP Sync keeps item and property operations available and disables the BOM operation.

### CSV file

Choose **CSV file...** to use data that is independent of the active SOLIDWORKS component tree. The file must meet these requirements:

- UTF-8 text, with or without a byte-order mark (BOM).
- No larger than 20 MB and no more than 50,000 nonblank data rows.
- Nonempty, unique headers, with the same number of fields in every data row.
- Positive whole-number quantities. If there is no quantity column, ERP Sync uses `1`.

ERP Sync recognizes these conventional headers:

| Purpose | Recognized headers |
| --- | --- |
| Item code | `Item code`, `item_code`, `PartNumber`, `Part Number`, or `Item` |
| Quantity | `Quantity` or `Qty` |
| Parent item | `Parent`, `Parent item`, or `parent_item` |
| Description | `Description` |
| Material | `Material` |

To enable BOM Push from CSV, provide recognized item-code and parent columns. Each item code must occur once, every referenced parent must exist, and the relationships must not contain a cycle. A valid hierarchy must contain at least one parent with children.

## Push document data

1. Open or activate a saved SOLIDWORKS part, assembly, or drawing.
2. Select **PDMPublisher > ERP Sync**.
3. Select **Feature tree**, a SOLIDWORKS BOM table, or **CSV file...** as the source. Use the controls available for that source to prepare the view.
4. Select the checkbox beside every row to include. Only checked, currently displayed rows are sent. Expand collapsed branches before pushing an indented BOM.
5. Select the active connector at the bottom of the window.
6. Open the arrow beside **Push** and select the required operations.
7. Select **Push**, review the result, and correct any failed item or BOM reported by the connector.

![ERP Sync Push operation choices](/images/pdmpublisher/solidworks/erp-sync-options-20260920.png)

| Operation | Result |
| --- | --- |
| Properties | Updates mapped properties for existing ERP items. |
| Create items + properties | Creates missing ERP items and sends their mapped properties. Item creation includes property synchronization. |
| BOM | Sends the explicitly selected parent-and-direct-child BOM relationships. The connector must advertise BOM support. |
| Include cut-list items | Includes supported cut-list rows in the snapshot. |

The snapshot contains plain data captured from SOLIDWORKS; a connector does not receive SOLIDWORKS COM objects. Root custom properties are merged with active-configuration properties, and configuration values take precedence. Mass is supplied in kilograms.

## Connector development

To build and load your own C# integration, see [Create a Custom ERP Connector](pdmpublishersolidworks_erp-connector.md).
