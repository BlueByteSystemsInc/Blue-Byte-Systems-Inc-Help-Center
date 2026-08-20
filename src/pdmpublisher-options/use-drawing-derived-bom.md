---
title: Use Drawing-Derived BOM | PDMPublisher Options
description: Use the first named BOM saved on an assembly drawing to determine PDMPublisher references, configurations, and quantities.
ms.date: 08/19/2026
ms.topic: reference
---

# Use Drawing-Derived BOM

![Use drawing-derived BOM setting](/images/pdmpublisher/screenshots/options-034-property-use-drawing-derived-bom.png)

Uses the first derived (named) BOM saved on the associated SOLIDWORKS drawing instead of calculating the BOM directly from the assembly.

> [!IMPORTANT]
> This option is available only in **PDMPublisher for SOLIDWORKS PDM Professional**. It is not shown in the SOLIDWORKS add-in.

Use this option when the drawing BOM defines the assembly structure and quantities that should drive publishing. This allows a task launched on an assembly to obtain its BOM from the assembly's drawing.

## How PDMPublisher Finds the Drawing

PDMPublisher first locates the drawing associated with the assembly:

1. If [Use PDM Search to Locate Drawings](use-pdm-search-to-locate-drawings.md) is enabled, PDMPublisher searches the assembly's immediate **Where Used** parents for a drawing.
2. If the search does not return a drawing, or the search option is disabled, PDMPublisher looks in the assembly folder for a drawing with the same base name.

For example:

```text
Assembly: C:\PDMVault\Projects\Speaker\Speaker.sldasm
Drawing:  C:\PDMVault\Projects\Speaker\Speaker.slddrw
```

## How the BOM Is Selected

After locating the drawing, PDMPublisher requests the derived named BOMs saved on that drawing and uses the first BOM returned by SOLIDWORKS PDM. It loads the current view of that BOM, then continues with the standard reference, configuration, quantity, and condition processing.

> [!WARNING]
> If a drawing contains several derived BOMs, PDMPublisher uses the first one returned by PDM. Confirm that the intended named BOM is the first available BOM before relying on this option.

## Requirements

- The task must process a SOLIDWORKS assembly.
- The assembly must have an associated SOLIDWORKS drawing in PDM.
- The drawing must contain at least one saved derived (named) BOM.
- The BOM rows must identify references and configurations that PDM can resolve.
- A valid calculated BOM [Template](template.md) must remain configured for fallback processing.

## Calculated BOM Fallback

If PDMPublisher cannot find the drawing, the drawing has no usable named BOM, the BOM cannot be loaded, or the BOM contains no usable rows, it falls back to the configured calculated BOM.

> [!IMPORTANT]
> Do not leave **Template** empty. The task still requires a valid calculated BOM template when drawing-derived BOM processing is unavailable.

The selected [Calculation Method](calculation-method.md) applies when this calculated BOM fallback is used.

## Logs

Task logs prefix these messages with `Drawing-derived BOM:`. The log records:

- How the drawing was located
- Which named BOMs were found
- Which BOM was selected
- How many rows were loaded
- Why the calculated BOM fallback was used, when required

Review these entries when the exported reference list or quantities do not match the expected drawing BOM.
