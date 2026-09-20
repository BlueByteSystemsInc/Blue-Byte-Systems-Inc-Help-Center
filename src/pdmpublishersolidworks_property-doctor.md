---
title: Property Doctor | PDMPublisher for SOLIDWORKS
description: Review, edit, validate, import, export, and automate SOLIDWORKS custom properties across a document and its references.
ms.date: 09/15/2026
ms.topic: how-to
---

# Property Doctor

Property Doctor presents the active document, configurations, cut lists, drawings, and references in one editable property grid.

![Property Doctor showing document properties across an assembly and its references](/images/pdmpublisher/solidworks/ui-preview/PropertyDoctor/PropertyDoctor_Main_window_Default_Light_100.png)

Open **PDMPublisher > Settings > Property Doctor** to configure the default columns, thumbnail loading, and reusable action profiles.

![Property Doctor settings and profile controls](/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Property_Doctor_Default_Light_100.png)

## Edit Properties

1. Open a saved part, assembly, or drawing.
2. Select **PDMPublisher > Property Doctor**.
3. Add or show the property columns you need.
4. Edit values directly, use a value menu, or open an advanced formula.
5. Review the **Added**, **Changed**, and **Removed** indicators.
6. Select **Apply changes** to write the pending changes, or **Discard changes** to restore the original values.

Gray cells are missing properties. **Clear** keeps the property name and writes an empty value; **Delete Property** removes the property. Formula and linked-value cells are evaluated for the document row where they are applied.

## Find, Filter, and Fill

- Search document names, configurations, property names, and values.
- Open Find and Replace for plain-text, case-sensitive, or regular-expression replacements.
- Filter parts, assemblies, drawings, custom properties, configuration properties, cut lists, and empty values.
- Drag the green cell handle vertically to fill rows or horizontally to copy into visible columns.
- Use **Columns** to show, hide, add, and organize property columns.
- Import an exported Property Doctor CSV, review the pending values, then apply them.

## Document Commands

The document menu can load a document in SOLIDWORKS, reopen references for editing, resolve lightweight references, check files in or out, get latest, select the item, zoom to it, or isolate it. Availability depends on document state and PDM access.

## Profiles and Column Templates

A Property Doctor profile is an ordered set of property actions. An action can set a value, delete properties, or reset property values for selected scopes and conditions. Preview a profile to inspect its changes in the grid before selecting **Apply**.

Column templates control which properties appear. In **Settings > Property Doctor**, choose the default template, edit its columns, manage profiles, or hide thumbnails for faster loading.

Actions run from top to bottom. Later matching actions can replace values produced by earlier actions. Saving a profile stores the automation; it does not change any document until the profile is previewed and applied.

## Shared Resources

Property Doctor can use named [Advanced Formulas](pdmpublishersolidworks_settings.md#settings-pages), SQL Server external sources, and drawing search folders configured under **Shared Resources** in Settings. Complete settings transfer includes these definitions but never includes SQL credentials.
