---
title: Use PDM Search to Locate Drawings | PDMPublisher Options
description: Find drawings through PDM search when they are not beside the model.
ms.date: 08/09/2026
ms.topic: reference
---

# Use PDM Search to Locate Drawings

![Use PDM search to locate drawings setting](/images/pdmpublisher/screenshots/options-033-property-use-search-to-locate-drawings.png)

Uses PDM search or Where Used behavior when a drawing cannot be found in the same folder as the model.

This option is also used by [Use Drawing-Derived BOM](use-drawing-derived-bom.md). When both settings are enabled, PDMPublisher searches the assembly's immediate **Where Used** parents for the drawing that contains the named BOM. If no drawing is returned, it checks for a same-name drawing in the assembly folder.

> [!NOTE]
> Drawing and model names must match for this lookup to be reliable.
