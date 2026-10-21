---
title: Odoo Connector | PDMPublisher for SOLIDWORKS
description: Install and configure the official Odoo connector for reviewed product, property, attachment, and manufacturing BOM synchronization.
ms.date: 10/21/2026
ms.topic: how-to
---

# Odoo Connector

The Odoo connector is an official Blue Byte Systems connector for Odoo 19+ and Odoo Online sites with JSON-2 external API access. It supports reviewed Push and Pull operations between checked ERP Sync rows and Odoo products.

This guide covers connector **1.0.13.0** with PDMPublisher for SOLIDWORKS **2026.10.52**. The connector and SOLIDWORKS add-in are updated separately; install the add-in update for the new review layout and inline **(i)** explanations.

![Official Odoo connector and configuration settings](/images/pdmpublisher/solidworks/odoo-connector-settings-20260931.png)

The API key identifies the Odoo user. The connector does not send a login username or password. PDMPublisher encrypts the saved connector settings for the current Windows user.

## Requirements

Before configuring the connector:

- Use Odoo 19+ or Odoo Online with JSON-2 external API access.
- [Create an API key](#create-an-odoo-api-key) for a dedicated Odoo integration user.
- Grant that user read access to product fields used by mappings and write/create access for the operations you will enable.
- Grant manufacturing BOM access when synchronizing BOMs.
- Grant attachment access when uploading thumbnails or exported files.
- Make every product **Internal Reference** unique. PDMPublisher matches the configured Item code column to `product.product.default_code` exactly.
- Test with a non-production Odoo database or company first.

The connector uses Odoo's JSON-2 API, not the deprecated XML-RPC or JSON-RPC endpoints.

## Install the connector

1. Open **PDMPublisher > Settings > ERP Sync**.
2. Open **ERP connector settings** and select **Refresh**.
3. Select **Odoo** under **Official Blue Byte Systems Inc**.
4. Select **Download** if the connector is not installed or the server offers a newer version.
5. Select the installed Odoo row to display its settings.
6. Complete the connection and synchronization settings described below.
7. Select **Test connection**.
8. Select **Save** to make Odoo the active connector.

If the connector is already loaded, its update is staged for the next session. Fully close and restart SOLIDWORKS, then verify the installed version. Use **Edit** beside the connector selector in ERP Sync to reopen its settings.

## Create an Odoo API key

Use a dedicated Odoo user with only the permissions required for the products, fields, attachments, companies, and manufacturing BOMs that PDMPublisher must synchronize.

1. Sign in to Odoo as the integration user.
2. Open the user menu and select **My Preferences**.
3. Open the **Security** tab.
4. Under **API Keys**, select **Add API Key**.
5. Enter a recognizable name such as `PDMPublisher` and create the key with the `rpc` scope.
6. Copy the generated key immediately and store it securely. Paste the key into the PDMPublisher **API key** field; do not enter the user's password.
7. In PDMPublisher, select **Test connection**, then **Save** after the test succeeds.

![Odoo Security preferences showing the PDMPublisher API key](/images/pdmpublisher/solidworks/odoo-create-api-key-20260931.png)

Treat the API key like a password. Do not include it in screenshots, logs, source control, or shared configuration files. To rotate a key, create a replacement, update and test PDMPublisher, save the connector settings, and then delete the old key in Odoo.

## Connection settings

| Setting | What to enter |
| --- | --- |
| Server URL | The HTTPS root address of the Odoo site, such as `https://example.odoo.com/`. Do not include an API path, query, fragment, or credentials. |
| API key | The API key issued to the Odoo integration user. Whitespace is not allowed. The value is masked and encrypted locally. |
| Database | Optional `X-Odoo-Database` value. Usually leave this empty for Odoo Online. Enter it when the server hosts multiple databases and requires an explicit database header. |
| Timeout (seconds) | Per-request timeout from 1 through 300 seconds. The default is `60`. |

**Test connection** validates the URL and credentials, loads writable product-field metadata, validates the mappings, and verifies product read access. It does not create or modify Odoo records.

## Item settings

| Setting | Behavior |
| --- | --- |
| Item code column | ERP Sync column or custom property matched exactly to the Odoo product **Internal Reference** (`default_code`). The default is `PartNumber`. Blank source codes stop Push preview unless Odoo-generated references are enabled. Ambiguous matching products in Odoo always stop preview. Repeated source codes are allowed when their mapped values are compatible. |
| Skip empty values | When enabled, blank mapped source values do not overwrite existing Odoo values, and blank values read during Pull do not clear local SOLIDWORKS properties. |
| Property mappings | Maps a SOLIDWORKS property or ERP Sync column to a writable scalar Odoo product field. The default mapping is `Description` → `name`. |

Open **Property mappings > ...**. Supported fields available to the current Odoo user load automatically; select **Load ERP fields** to refresh them. Supported targets include standard scalar fields such as `name`, `description`, `description_sale`, `description_purchase`, `sale_ok`, `purchase_ok`, `weight`, `volume`, and `barcode`, plus writable `x_*` custom fields.

A SOLIDWORKS Material value needs a writable Odoo destination field, such as a text field named `x_material` or `x_studio_material`. Read-only fields and unsupported relations are excluded. If Material is missing from the dropdown, check its technical name, type, and availability to the integration user in Odoo, then reload ERP fields.

Connector **1.0.2.0** combines compatible mapped values for repeated source item codes. With **Skip empty values** enabled, blank values are ignored rather than treated as conflicts. Different nonempty values for the same mapped field still stop the preview with a field-specific message. This does not permit multiple matching Internal References in Odoo itself.

Use stored API field names, not translated labels. Boolean values accept `True/False`, `Yes/No`, or `1/0`. Numeric values use a dot for decimals, such as `12.5`, without currency symbols, thousands separators, or units. Selection fields accept a stored key or a unique label returned by Odoo. Each Odoo target field can be mapped only once.

Supported mappings also include Sales Price (`list_price`), Cost (`standard_price`), Product Type, Invoicing Policy, Track Inventory, Category, Sales Taxes, Purchase Taxes, and Tags when available and writable. For supported relations, use an exact unique name or `#ID`; separate multiple tax or tag values with semicolons. These mappings select existing related records and do not create them. Pull returns stable `#ID` references.

### HTML descriptions and numeric precision

Odoo returns JSON, but an HTML field inside that JSON may contain markup such as `<p>Speaker</p>`. The connector extracts its text for Pull and Push comparison. Formatting alone does not make `Speaker` different from `<p>Speaker</p>`; entities and line breaks are handled without executing the markup.

Connector 1.0.8 uses the decimal precision declared by Odoo. If a field stores two decimal places, `0.125` is previewed and sent as `0.13`, preventing a repeated false change after Odoo rounds it. Fields without declared precision are not assigned an assumed precision.

Invalid mapped values are highlighted in the ERP Sync grid with a red cell and **(i)** explanation. Correct the value and preview again; for example, change `$15.93` to `15.93` for Cost.

## BOM types

| Setting | Behavior |
| --- | --- |
| Company ID | Optional numeric Odoo company ID used for product and BOM creation and BOM selection. Enter `0` to use the API user's current company context. |
| BoM type | Manufacture this product, Kit, or Subcontracting. Also available under **Push options > Sync BOM >**. |
| New BOM subcontractors | Existing Odoo contact names or `#ID` values, separated by semicolons. Required when creating a subcontracting BOM. |

Select a company when BOM selection must be restricted to one company. Odoo access rights continue to apply even when a Company ID is entered.

Choose one BOM type in the **Sync BOM >** submenu. The choice applies to the included assemblies, enables BOM sync, and is saved for the connector. The submenu stays open after selection.

![Sync BOM submenu showing Manufacture, Kit, and Subcontracting choices](/images/pdmpublisher/solidworks/erp-bom-types-20261049.png)

| Type | Use |
| --- | --- |
| Manufacture this product | Standard in-house manufacturing BOMs. This is the default. |
| Kit | A kit BOM containing the selected components. |
| Subcontracting | Outsourced manufacturing. Subcontracting must be enabled in Odoo and the selected type must be available to the API user. |

The connector finds an active BOM of the selected type for the product and company. If none exists, it proposes a new BOM; it does not convert a BOM of another type. Multiple matching BOMs stop preview. Existing subcontracting BOMs retain their subcontractors; **New BOM subcontractors** applies only when creating one.

## Upload settings

| Setting | Behavior |
| --- | --- |
| Upload thumbnail | Sends the captured SOLIDWORKS preview to the product's `image_1920` field. |
| Upload exported files | Uploads existing matching files as `ir.attachment` records. The connector does not generate exports. |
| Export folder | Folder containing exported files. Leave it empty to use each source model's folder. |
| File extensions | Comma-separated extensions to find. The default is `step,stp,dxf,pdf`. |

An exported file must have the same base filename as its source model. Existing attachments with the same name are updated; duplicate matching attachment names are rejected. Each file is limited to 20 MB, with a maximum of 64 MB per product. Missing files appear as skipped in the preview.

Connector 1.0.8 discovers the supported attachment content field and handles both older base64 responses and newer structured binary responses. Unchanged file contents do not trigger another upload. Thumbnail differences are omitted from the review count and highlighting; the upload setting still governs thumbnails during a committed sync.

## Push products and properties

1. Open [ERP Sync](pdmpublishersolidworks_erp-sync.md) and prepare the desired source rows.
2. Check only the products to synchronize.
3. Select **Odoo** as the connector.
4. Choose the required Push operations.
5. Select **Push** and review the complete diff. Nothing has been written yet.
6. Select **Commit changes** to revalidate Odoo and apply the reviewed plan, or **Cancel** to write nothing.

![Push review showing SOLIDWORKS to Odoo comparisons and a BOM change on the assembly row](/images/pdmpublisher/solidworks/erp-push-review-20261049.png)

The connector can create products and update mapped product fields. New products use Odoo defaults for unit of measure, category, and product type unless a supported mapping supplies a value. A new product receives the mapped name or the source row name. This version does not generate missing Internal References or create custom Odoo fields.

After a successful Push, the created or updated products are available in Odoo Inventory. Product names, internal references, mapped properties, and uploaded previews reflect the committed ERP Sync changes.

![Products created in Odoo Inventory after a successful Push](/images/pdmpublisher/solidworks/odoo-push-output-20261002.png)

Every recorded Odoo read is checked again before the first write. A preview plan is single-use. If Odoo data changed after preview, Commit stops without starting the reviewed writes and you must preview again.

## Pull mapped properties

Select checked SOLIDWORKS rows and choose **Pull**. The connector reads the matching Odoo products and reverses the property mappings. Review the proposed local changes in **Review ERP pull**, then select **Apply to SOLIDWORKS** or **Cancel**.

![Odoo Pull comparison with ERP values first and SOLIDWORKS values second](/images/pdmpublisher/solidworks/erp-pull-review-20261049.png)

In **Settings > ERP Sync**, **Pull values into** defaults to **Both** custom and configuration-specific properties. Select a single destination if required. The grid displays one value; **(i)** explains which property scopes will change, including changes hidden by an already matching configuration value.

Missing products, missing fields, and null values are skipped. Empty Odoo values can clear local text only when **Skip empty values** is disabled. The Item code property and built-in or calculated destinations remain protected. Pull modifies mapped SOLIDWORKS properties only; it does not pull Odoo BOMs into the SOLIDWORKS assembly structure. Save modified SOLIDWORKS documents afterward.

See [Pull ERP properties into SOLIDWORKS](pdmpublishersolidworks_erp-sync.md#pull-erp-properties-into-solidworks) for the diff and validation workflow.

## Synchronize manufacturing BOMs

The connector synchronizes explicitly selected assembly relationships to the selected Odoo BOM type. Preview highlights the assembly row; select its **(i)** button for component additions, removals, and quantity changes. Existing BOM-line IDs and unrelated settings are retained when a quantity changes, and an existing BOM's base quantity is preserved.

Before Commit, PDMPublisher rejects ambiguous or unsafe cases, including multiple matching BOMs, duplicate lines, proposed graph cycles, unit mismatches, operations, by-products, and variant-specific lines. Writes to multi-variant products and multi-variant parent BOMs are blocked to avoid changing sibling variants through shared template fields.

## Limitations and safe retries

- The connector does not synchronize inventory, create custom fields, generate missing Internal References, or import BOM structure into SOLIDWORKS.
- Odoo preflight checks are client-side checks, not one transaction spanning every request.
- Concurrent changes after preflight are still possible.
- A partial failure can leave confirmed changes in Odoo.
- Do not automatically retry a failed or uncertain Commit. Inspect Odoo, correct the cause, and preview again.
- Archived products and duplicate Internal References must be resolved in Odoo before synchronization.

## Related pages

- [ERP Sync](pdmpublishersolidworks_erp-sync.md)
- [Create a Custom ERP Connector](pdmpublishersolidworks_erp-connector.md)
- [ERPNext Connector](pdmpublishersolidworks_erpnext-connector.md)

## Odoo-generated references

Enable **Use Odoo-generated references** to create products for source rows whose item code is blank. Set **Item code column** to a writable SOLIDWORKS custom property such as `OdooItemCode`; filename and other built-in columns cannot receive the returned reference. Configure Odoo to assign an Internal Reference when creating a Product Variant before enabling this option.

The connector reads the reference returned by Odoo and writes it to the source configuration property. Save the modified SOLIDWORKS documents. Future Push and Pull operations match that reference, so do not erase it to retry an uncertain creation. Repeated occurrences of the same file/configuration share one product; different configurations can receive separate references.

Creation previews validate required writable fields using mapped values and Odoo defaults. Odoo-managed product relationships and an omitted, computed invoicing policy are not required as manual mappings. Custom required fields still need a value. Odoo performs final server-side validation during creation.

## Open a product in Odoo

With add-in **2026.10.52** and connector **1.0.13.0**, select a product cell in the preview and choose **Open in Odoo**. The button uses the exact database record identified by the connector, not a filename search. Products not yet created have no link until creation succeeds; the result report then provides the link.

![Indented Odoo preview with Open in Odoo](/images/pdmpublisher/solidworks/erp-odoo-preview-20261021.png)

*Release UI shown with sample data. No ERP changes were made to capture this image.*

The button opens your browser and may require you to sign in. It does not edit, push, or pull data. If you edit the product in Odoo, generate a new preview before committing and use Pull to review supported mapped values for SOLIDWORKS. Older add-ins can still synchronize with this connector but do not display the button.

## Omitted rows and warnings

When a missing reference cannot be written back to SOLIDWORKS, that item is omitted while eligible items continue. The warning identifies a suppressed, lightweight, not-loaded, read-only, or outdated component where its state can be determined. Unsuppress, fully resolve, open, or refresh as indicated. The add-in does not suppress components itself.

An affected parent BOM update is also omitted so an incomplete component list does not replace its existing ERP BOM. The parent's item properties may still synchronize. Other connector errors, such as an invalid mapped value or a rejected server request, can still stop the run.

![Odoo report with an omitted component and protected parent BOM](/images/pdmpublisher/solidworks/erp-odoo-report-20261021.png)

*Sample report showing warning rows and Open in Odoo. Hover over truncated details for the complete message, or copy/save the report.*