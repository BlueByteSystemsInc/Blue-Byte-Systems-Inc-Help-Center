---
title: Release Notes | PDMPublisher for SOLIDWORKS
description: Latest PDMPublisher for SOLIDWORKS release changes.
ms.date: 11/10/2026
---

# Release Notes

## 2026.10.70

Odoo connector 1.0.19.0 supports syncing existing product variants by Internal Reference. SOLIDWORKS configuration names do not determine variant matching.

Shared-field changes show an (i) indicator explaining that all variants are affected. Conflicting values from selected sibling variants are rejected. Thumbnails and BOM updates target the matched variant.

Build, connector regression tests, and UI indicator checks passed. Install the add-in before updating the connector.

[Download 2026.10.70](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.70/pdmpublisher.msi) · [Odoo variant sync](pdmpublishersolidworks_odoo-connector.md#sync-product-variants)

## 2026.10.69

ERP Sync saves confirmed Odoo-generated product links inside SOLIDWORKS documents. Clear ERP link in the row context menu resets selected associations without deleting part-number properties or ERP products.

Weldment cut-list items use their own part numbers instead of inheriting the parent model's number.

Odoo connector 1.0.18.0 supports document-stored links and selected recovery resets. Update the add-in before the connector.

Build, automated ERP checks, and a live SOLIDWORKS save and reopen test passed.

[Download 2026.10.69](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.69/pdmpublisher.msi) · [ERP Sync](pdmpublishersolidworks_erp-sync.md) · [Odoo connector](pdmpublishersolidworks_odoo-connector.md)

## 2026.10.66

BOM Manager's column editor now offers Save As to create a named copy with the selected columns and their order. The original template is preserved, and the saved copy becomes the selected template. Duplicate names are rejected.

Buttons without a recognized action now display text without a fallback icon.

Build and automated checks passed for template persistence, column order, duplicate names, cancellation, and button icons.

[Download 2026.10.66](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.66/pdmpublisher.msi) · [Installation](pdmpublishersolidworks_installation.md)
