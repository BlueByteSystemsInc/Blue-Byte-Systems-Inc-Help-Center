---
title: Release Notes | PDMPublisher for SOLIDWORKS
description: Latest PDMPublisher for SOLIDWORKS release changes.
ms.date: 11/02/2026
---

# Release Notes

## 2026.10.62

- Regular drawing views fit the sheet using their measured bounds, with a common scale, margins, and spacing. Predefined views and custom macros retain their layout settings.
- QR placement accounts for the image size to match the annotation preview.
- QR insertion removes newly created construction geometry while preserving existing sheet-format geometry. Cleanup continues to verify the exact temporary QR picture before deleting it.

Build and automated checks passed. Live SOLIDWORKS validation of view fitting, QR construction-line cleanup, and the reported first-PDF logo loss remains pending.

[Download 2026.10.62](https://bluebyte.biz/wp-content/pdmpublisher/2026.10.62/pdmpublisher.msi) · [Installation](pdmpublishersolidworks_installation.md) · [Drawing settings](pdmpublishersolidworks-publish.md#create-solidworks-drawings)
