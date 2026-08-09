---
title: Map Variables Between Source and Destination File | PDMPublisher Options
description: Map metadata from source files to generated destination files.
ms.date: 08/09/2026
ms.topic: reference
---

# Map Variables Between Source and Destination File

![Map variables setting](/images/pdmpublisher/screenshots/options-021-property-map-variables-between-source-and-destination-file.png)

Maps variables from the source file to the generated destination file.

Use this when exported PDFs or neutral files need metadata for search, approval, or downstream automation.

![Variable mapping dialog](/images/pdmpublisher/screenshots/options-dialog-variable-mapping.png)

Use **Add Mapping** to add a new source-to-destination variable rule.

Columns:

- **Source** is the variable from the original file.
- **Value** shows the value PDMPublisher reads from the source file.
- **Destination** is the variable written to the exported file.

For example, `Source Revision Number` can be mapped to `Revision` so the exported file keeps the revision value from the source file.
