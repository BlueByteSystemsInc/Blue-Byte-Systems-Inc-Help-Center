---
title: Weldments and cutlists | PDM2Excel | SOLIDWORKS PDM
description: How to work with weldments and cut-lists in PDM2Excel.
---


## Weldments and Cut Lists in PDM2Excel

![cutlistsupport](/images/cutlistsupport.png)


PDM2Excel supports exporting **weldments** and their associated **cut list items** into the Bill of Materials (BOM), ensuring complete representation of structural parts in your assemblies or multi-body parts. Quantities of identical bodies are **rolled up** automatically, giving you an accurate count per item.


### BOM Types That Handle Weldments

| BOM Type          | Weldments Included | Quantities Rolled Up |
|-------------------|--------------------|-----------------------|
| Indented          | ✅ Yes              |❌ No                  |
| Top-Level         | ❌ No               | —                     |
| Parts Only        | ✅ Yes              | ✅ Yes                |
| Flattened         | ✅ Yes              | ✅ Yes                |


### How to Enable Weldment Support

Make sure your export task is set to use either:
- **Parts Only BOM**
- **Flattened BOM**

This will ensure that all cut list items from weldments are included in the export.

**Make sure, you check include cut list references in the BOM layout configuration:** 

![cutlist](/images/cutlist.png)
