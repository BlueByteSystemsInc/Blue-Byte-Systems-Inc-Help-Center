---
title: Property Doctor | PDMPublisher for SOLIDWORKS
description: Review, edit, validate, import, export, and automate SOLIDWORKS custom properties across a document and its references.
ms.date: 10/18/2026
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

### File properties and expression chips

In version 2026.10.49, **File properties** includes the document's custom and configuration-specific properties even when their columns are hidden. Hiding a column does not remove that property from the picker.

Property and formula references appear as chips with descriptive names. Evaluated values appear by default; the active cut list is read from SOLIDWORKS for current values. Switch a column to its expressions or enter edit mode to inspect the source without replacing it. Mixed text and chips wrap within the cell so you can read and edit them without widening the column.

![Property Doctor editing a value containing text and two Description reference chips](/images/pdmpublisher/solidworks/property-chips-20261049.png)

These property-picker and chip changes also apply to the shared editors used by ERP Sync, property templates, and Smart Pack. Evaluating a draft does not write it to the document; review it before applying changes.

To delete one property across multiple documents, right-click its column header or open the column-options menu and select **Mark property for deletion (visible rows)**. To delete several properties together, select their visible column checkboxes and use **Mark selected properties for deletion (visible rows)** from any selected column. Using the command from an unselected column affects only that column. Property Doctor marks the properties in every editable visible row; filtered-out and read-only rows are not changed. Select the checked command again to undo the affected columns, or use a header's delete icon to undo only that column. Select **Apply changes** to remove the properties from the documents.

## Refresh After Apply

After Property Doctor successfully applies property edits, deletions, or profile actions, it asks whether to refresh the displayed properties. Select **Yes** to update the current grid without closing and reopening Property Doctor. Unsaved changes in SOLIDWORKS remain open.

Refresh processes only documents affected by the Apply operation, once per document. It skips unchanged documents and drawings. A progress window shows the current document and overall completion. You can cancel between documents; all changes already applied are retained.

A fully deleted property column disappears immediately after Apply, even if you decline the refresh. The column remains when the property still exists in any document, configuration, or cut-list row. An existing property with an empty value also keeps its column.

Property Doctor does not show the refresh prompt when Apply contains no changes, Apply fails, a profile runs silently, or you select **OK** to close the window.

## Select Multiple Cells

From **2026.10.46**, hold **Ctrl** and click cells to add them to the selection. Ctrl-click a selected cell again to remove it. This works while a cell editor is active; Ctrl-clicking another cell selects it without starting an edit there.

Press **Escape** while the grid has focus to clear all selected cells. This also cancels an active fill drag. Clearing a selection does not discard pending property changes; use **Reset to original** or **Discard changes** for that.

## Find, Filter, and Fill

- Search document names, configurations, property names, and values.
- Open Find and Replace for plain-text, case-sensitive, or regular-expression replacements.
- Filter parts, assemblies, drawings, custom properties, configuration properties, cut lists, and empty values.
- Drag the green cell handle vertically to fill rows or horizontally to copy into visible columns.
- Use **Columns** to show, hide, add, and organize property columns.
- Import an exported Property Doctor CSV, review the pending values, then apply them.

## Find and Replace Property Values

Right-click a property cell and choose **Find and replace in this column...**. The Find and Replace panel shows the selected column, such as **Column: Cost**. Its Find text is separate from the table filter, so replaced rows stay visible.

1. Enter the text in **Find** and the new text in **Replace with**. Leave the replacement empty to remove matching text.
2. Use **Find next** to inspect a match, then **Replace**, or select **Replace all** to update matching values in the displayed rows.
3. Review the draft changes in the grid, then select **Apply** or **OK** to commit them.

For example, to change `$6.87` into `6.87` for an ERP price mapping, open Find and Replace from the **Cost** column, find `$`, leave **Replace with** empty, and keep regular expressions disabled. Select **Replace all**. Other property columns remain unchanged.

You can also open the panel with **Ctrl+H** or **Ctrl+F**. Check the displayed scope before replacing. Select **Search all displayed columns** to remove the column restriction. **Match case** and regular expressions are optional; in regular-expression mode, characters such as `$` have special meanings.

Replacements affect draft property values in displayed rows and columns. Hidden rows, hidden columns, removed properties, and read-only values are skipped. Use **Reset to original** on a cell to undo its pending replacement before applying. Find and Replace does not save a reusable profile action.

## Document Commands

The document menu can load a document in SOLIDWORKS, reopen references for editing, resolve lightweight references, check files in or out, get latest, select the item, zoom to it, or isolate it. Availability depends on document state and PDM access.

## Profiles and Column Templates

A Property Doctor profile is an ordered set of property actions. An action can set a value, delete properties, reset property values, or set a part material from a property for selected scopes and conditions. Preview a profile to inspect its changes in the grid before selecting **Apply**.

Column templates control which properties appear. In **Settings > Property Doctor**, choose the default template, edit its columns, manage profiles, or hide thumbnails for faster loading.

Actions run from top to bottom. Later matching actions can replace values produced by earlier actions. Saving a profile stores the automation; it does not change any document until the profile is previewed and applied.

## Upgrade Legacy Custom Properties

Enable **Upgrade legacy custom properties** in **Settings > Property Doctor** to upgrade obsolete SOLIDWORKS custom-property storage when Property Doctor loads the documents. A Property Doctor profile can also enable the same upgrade for documents processed by that profile.

Each document is upgraded once on its own. Referenced documents shown in Property Doctor are processed through their own document rows instead of being upgraded recursively from a parent assembly.

## Set Material from a Property

Use the **Set material from property** action to assign a SOLIDWORKS material to part configurations from a property value.

1. Select the source property and the part-configuration scopes that the action should process.
2. Select one or more SOLIDWORKS material libraries (`.sldmat`) to search.
3. Add mappings when the property value is a material code or does not exactly match a material name. A mapping pattern can contain `*` as a wildcard.
4. Preview the profile and review each proposed material change before selecting **Apply**.

Material mappings can be imported from or exported to a two-column CSV with `Pattern` and `Material` headings. Property Doctor skips empty, linked, unresolved, or ambiguous values and shows the reason in the preview. This action supports part configurations; it does not assign materials to cut-list bodies.

## Shared Resources

To calculate a property from other properties, use an [advanced formula with arithmetic](pdmpublishersolidworks_advanced-formulas.md#arithmetic-with-properties), available from **2026.10.45**. For example, `=Property("UnitCost") * Property("Quantity")` multiplies two numeric custom-property values.

Property Doctor can use named [Advanced Formulas](pdmpublishersolidworks_settings.md#settings-pages), SQL Server external sources, and drawing search folders configured under **Shared Resources** in Settings. Complete settings transfer includes these definitions but never includes SQL credentials.
