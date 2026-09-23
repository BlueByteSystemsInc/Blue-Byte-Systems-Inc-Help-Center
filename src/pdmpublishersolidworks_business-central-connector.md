---
title: Microsoft Dynamics 365 Business Central Connector | PDMPublisher for SOLIDWORKS
description: Configure the official Microsoft Dynamics 365 Business Central connector for reviewed item and property Push and Pull synchronization.
ms.date: 09/22/2026
ms.topic: how-to
---

# Microsoft Dynamics 365 Business Central Connector

The official Microsoft Dynamics 365 Business Central connector synchronizes items and mapped properties between PDMPublisher for SOLIDWORKS and Business Central. Version `1.0.0.0` supports Business Central Online in the commercial Microsoft cloud through the standard API v2.0.

The connector uses PDMPublisher's reviewed Push and Pull workflows. Push can create items and update mapped item fields. Pull previews proposed SOLIDWORKS property changes before the user applies them.

> [!IMPORTANT]
> **BOM synchronization is not available in this version.** The standard Business Central API v2.0 and the inspected published OData services do not expose an API for assembly or production BOM definitions. The available assembly-order APIs represent transactional documents, not item BOM master data. BOM support requires a Business Central AL API extension and additional connector support. The connector does not advertise `BomSync`, and it rejects an explicit BOM request before making any writes.

## Supported environment

- Business Central **Online** in the commercial Microsoft cloud.
- Standard Business Central API v2.0.
- Microsoft Entra service-to-service authentication using client credentials.
- One explicitly selected company by exact name or API GUID. A blank company is accepted only when exactly one company is accessible.
- Item creation, mapped-property updates, reviewed Push, and reviewed property Pull.

On-premises installations, sovereign clouds, basic authentication, and interactive delegated sign-in are not supported.

## Configure Microsoft Entra and Business Central

1. Register an application in Microsoft Entra ID.
2. Add the Business Central `API.ReadWrite.All` **application** permission and grant administrator consent.
3. In Business Central, open **Microsoft Entra Applications** and add the application's client ID.
4. Enable the application and assign only the company and item read/write permissions required by the integration. Do not assign **SUPER**.
5. Create a client secret and securely copy its **Value**. PDMPublisher needs the secret value, not the secret ID.
6. Note the tenant ID, Business Central environment name, and exact company name or company API GUID.

The tenant and environment are visible in a Business Central URL formatted like `https://businesscentral.dynamics.com/{tenant}/{environment}`.

## Install the connector

1. Open **PDMPublisher > Settings > ERP Sync**.
2. Open **ERP connector settings**.
3. Select **Microsoft Dynamics 365 Business Central** under **Official Blue Byte Systems Inc**.
4. Select **Download** when the connector is not installed or a newer version is available.
5. Select the installed connector to display its settings.
6. Complete the settings below, select **Test connection**, and then select **Save**.

If you received a signed connector package directly, use **Add new...** to select `PDMPublisher.ERPConnectors.BusinessCentral.dll`. Keep its `.connector.json` file beside the DLL so the connector icon can be loaded. Restart SOLIDWORKS before replacing a connector that is already loaded.

## Connection and item settings

| Setting | What to enter |
| --- | --- |
| Tenant ID | Microsoft Entra tenant GUID from the Business Central URL. |
| Environment | Business Central Online environment name, such as `Production` or `Sandbox`. |
| Client ID | Application/client ID of the enabled Microsoft Entra application. |
| Client secret | Secret **value**, not the secret ID. The saved value is encrypted for the current Windows user. |
| Company | Exact Business Central company name or its API GUID. Required when more than one company is accessible. |
| Timeout (seconds) | Per-request timeout. The default is `60`. |
| Item code column | ERP Sync column or SOLIDWORKS property matched to the Business Central item number. The default is `PartNumber`. |
| Skip empty values | Skips empty values in both directions. Disable it only when an empty optional text field should clear the destination. |
| Property mappings | Maps SOLIDWORKS properties or ERP Sync columns to supported Business Central item fields. The default is `Description` → `displayName`. |

**Test connection** obtains an application token and verifies company and item read access. It is read-only and does not prove that the application has write permission; perform initial Push testing in a sandbox company.

## Item numbers and property mappings

Item numbers are trimmed, converted to uppercase according to Business Central Code-field behavior, and limited to 20 characters. Existing item numbers are never renamed and the connector does not request automatic number assignment. Duplicate source numbers must propose identical values; conflicting rows stop the preview.

The connector can map these writable fields when they are present in the live item metadata:

- `displayName` and `displayName2`
- `type`
- `itemCategoryCode`
- `blocked`
- `gtin`
- `unitPrice` and `unitCost`
- `priceIncludesTax`
- `taxGroupCode`
- `baseUnitOfMeasureCode`
- `generalProductPostingGroupCode`
- `inventoryPostingGroupCode`

Decimals use invariant notation such as `1.25`. Boolean values accept `true/false`, `yes/no`, or `1/0`. The `type` field accepts `Inventory`, `Service`, or `Non-Inventory`. Related category, unit, tax, and posting-group codes must already exist in the selected company.

New items default to `Inventory` unless `type` is mapped. When no description is supplied, the source row name becomes the new item description. Business Central business rules can still reject a value during commit.

## Push items and properties

1. Open **PDMPublisher > ERP Sync** and prepare the rows to synchronize.
2. Select **Microsoft Dynamics 365 Business Central**.
3. Open the arrow beside **Push** and select **Properties** or **Create items + properties**.
4. Do not select **BOM**; this connector does not support it.
5. Review current and proposed values in the Push preview.
6. Commit the reviewed plan only after confirming the company, item numbers, and changes.

The connector revalidates every recorded Business Central read before the first write. Updates use the reviewed ETag with `If-Match`; a stale plan stops before writing. Preview plans are frozen, tied to the connected connector instance, and single-use. Writes are never retried automatically.

## Pull mapped properties

Select the required rows and choose **Pull**. PDMPublisher reads matching Business Central items, reverses the configured property mappings, and displays the proposed local changes in **Review ERP pull**. Select **Apply to SOLIDWORKS** only after reviewing every proposed or skipped value.

Pull cannot overwrite the item-matching property, built-in columns, or calculated columns. Missing fields and missing items are skipped. When **Skip empty values** is enabled, empty Business Central values do not clear SOLIDWORKS properties. Save modified SOLIDWORKS documents after applying the changes.

## Current limitations

- No assembly or production BOM synchronization without a future AL API extension and connector implementation.
- No attachment or thumbnail upload.
- No automatic item-number generation or item deletion.
- No inventory adjustments, dimensions, variants, or arbitrary custom fields.
- A multi-item commit is not one Business Central transaction. If a later request fails, earlier confirmed changes can remain. Inspect the result and preview again; do not blindly retry an uncertain commit.
- Live connection testing verifies reads only. Validate real writes and the SOLIDWORKS workflow in a sandbox before production use.

For the overall workflow, see [ERP Sync](pdmpublishersolidworks_erp-sync.md).

## Microsoft references

- [Service-to-service authentication](https://learn.microsoft.com/dynamics365/business-central/dev-itpro/administration/automation-apis-using-s2s-authentication)
- [Business Central item resource](https://learn.microsoft.com/dynamics365/business-central/dev-itpro/api-reference/v2.0/resources/dynamics_item)
- [Update an item with conditional requests](https://learn.microsoft.com/dynamics365/business-central/dev-itpro/api-reference/v2.0/api/dynamics_item_update)
- [Develop a custom Business Central API](https://learn.microsoft.com/dynamics365/business-central/dev-itpro/developer/devenv-develop-custom-api)
