---
title: ERP Sync | PDMPublisher for SOLIDWORKS
description: Configure ERP Sync and push SOLIDWORKS items, properties, and BOMs through an installed ERP connector.
ms.date: 09/20/2026
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

## Push document data

![ERP Sync window with selected assembly rows](/images/pdmpublisher/solidworks/erp-sync-window-20260920.png)

1. Open or activate a saved SOLIDWORKS part, assembly, or drawing.
2. Select **PDMPublisher > ERP Sync**.
3. Select a BOM type and column template. Use **Columns**, **Group by**, **Find**, **Ignore Components**, and **Refresh** to prepare the view.
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
