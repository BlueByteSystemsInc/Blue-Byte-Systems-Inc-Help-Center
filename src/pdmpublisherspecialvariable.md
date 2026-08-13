---
title: Placeholder Reference | PDMPublisher | SOLIDWORKS PDM
description: Reference every built-in, PDM variable, and SQL placeholder available in PDMPublisher.
ms.date: 08/13/2026
ms.topic: reference
---

# Placeholders and Dynamic Variables

Placeholders let one task create paths, filenames, sheet filters, bookmarks, and annotations from information about the file being processed. PDMPublisher evaluates each placeholder on the machine that processes the task and replaces it with its current value.

>[!Video https://www.loom.com/embed/377f21c2f0b4423c914fae5767b44a21?sid=02cb620e-f91c-421e-8b25-7576d6e5cb0b]

> [!NOTE]
> The placeholders available in a field are shown in its `>...` menu. Not every field offers every placeholder.

## Built-in Placeholders

| Placeholder | Value | Example |
| --- | --- | --- |
| `(VaultRootFolder)` | Local root folder of the current PDM vault on the task host. | `C:\PDMVault` |
| `(FileNameWithoutExtension)` | Source filename without its extension. | `Bracket` |
| `(FileName)` | Source filename with period characters removed. | `BracketSLDPRT` for `Bracket.SLDPRT` |
| `(FileNameNumberRange)` | Numeric filename grouped into a range of 1,000. Non-numeric names return the filename without its extension. | `11000-11999` for `11345.SLDPRT` |
| `(FileFolder)` | Local folder containing the file currently being processed. | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyFolder)` | Folder of the top-level file that launched the task. For a task launched on one part or drawing, this is that file's folder. | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyName)` | Filename of the top-level file without its extension. This also represents the top-level part or drawing when the task was not launched on an assembly. | `speaker` |
| `(State)` | Current PDM workflow state of the source file. | `Released` |
| `(ConfigurationName)` | SOLIDWORKS configuration being exported. The PDM `@` configuration is written as `At`. | `Default` or `Machined` |
| `(Version)` | Current PDM file version number. | `12` |
| `(Revision)` | Current PDM revision. The result is empty if the file has no revision. | `B` |
| `(Date)` | Current date on the task host, using its short-date format with `/` replaced by `-`. | `8-13-2026` |
| `(Extension)` | Source file extension without the period. | `sldprt` |
| `(TargetExtension)` | Destination format extension when the current operation supplies a target format. | `pdf`, `dxf`, or `step` |
| `(User)` | PDM user logged in on the computer processing the task. | `TaskHostUser` |
| `(LaunchingUser)` | PDM user who launched the task. This can differ from `(User)` when another computer or account processes it. | `jsmith` |
| `(BOMQuantity)` | Quantity calculated for the file from the selected BOM template and task reference data. | `4` |

### File and Top-Level Values

`(FileFolder)` follows the individual file currently being exported. `(TopAssemblyFolder)` and `(TopAssemblyName)` remain tied to the file that launched the task while PDMPublisher processes its references.

For example, when `Speaker.SLDASM` launches a task and PDMPublisher processes `Components\Cone.SLDPRT`:

| Placeholder | Example result |
| --- | --- |
| `(FileFolder)` | `C:\PDMVault\Projects\Speaker\Components` |
| `(TopAssemblyFolder)` | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyName)` | `Speaker` |

### Configuration Name

`(ConfigurationName)` returns the configuration associated with the current output. It is especially important when [Convert Multiple Configurations](pdmpublisher-options/convert-multiple-configurations.md) is enabled because it prevents outputs from different configurations from using the same name.

The placeholder can also be used by [Sheet Name Pattern](pdmpublisher-options/sheet-name-pattern.md). For a multi-sheet drawing, PDMPublisher evaluates it from the associated model and matches the resulting configuration name against the drawing sheets.

### BOM Quantity

`(BOMQuantity)` uses the quantity calculated from the selected [Template](pdmpublisher-options/template.md). Reference-aware quantity calculation requires the template fields described on that page.

When [Ask User to Select Configuration](pdmpublisher-options/ask-user-to-select-configuration-on-startup.md) is enabled, the quantity entered on task launch multiplies `(BOMQuantity)`. For example, a calculated quantity of `2` and a custom multiplier of `3` produce `6`. The task log records the applied quantity information.

### Source and Target Extensions

`(Extension)` describes the source file. For example, a drawing exported to PDF has an `(Extension)` value of `slddrw`.

`(TargetExtension)` describes the requested output format when that operation supplies one. PDMPublisher normally adds the output extension automatically, so do not add another period and extension after this placeholder unless the destination field specifically requires it.

## PDM Variable Placeholders

PDM variables use this format:

`($VariableName)`

The `PDM Variables` submenu lists the variables available in the vault. Select a variable from the menu instead of typing it manually so its name and `$` prefix are correct.

Examples:

| Placeholder | Example value |
| --- | --- |
| `($Document Number)` | `11345` |
| `($ProjectNumber)` | `P-24017` |
| `($Description)` | `Speaker frame` |

By default, PDMPublisher reads the value associated with the configuration being processed. Enable [Use @ Tab to Evaluate Paths](pdmpublisher-options/use-at-tab-to-evaluate-paths.md) when the variables used by Export Location or Filename are stored on the file's `@` tab.

> [!NOTE]
> An empty or unavailable PDM variable evaluates to an empty value. When PDMPublisher evaluates an associated drawing and its value is empty, it may read the variable from the matching part or assembly.

## SQL Placeholders for Annotations

SQL placeholders are available only for annotation SQL queries. They replace the token in the query with a filename before PDMPublisher runs the query.

| Placeholder | Filename supplied to the query |
| --- | --- |
| `($SQL-Filename)` | Current filename with its existing extension. |
| `($SQL-Part)` | Current filename changed to `.sldprt`. |
| `($SQL-Assembly)` | Current filename changed to `.sldasm`. |
| `($SQL-Drawing)` | Current filename changed to `.slddrw`. |

For connection strings, query examples, testing, and security guidance, see [SQL Query Placeholders](pdmpublisher-annotations/sql-query-placeholders.md).

## Combined Path Example

The following Export Location combines built-in and PDM variable placeholders:

```text
(VaultRootFolder)\Released PDFs\($ProjectNumber)\(FileNameNumberRange)\(State)
```

For `11345.SLDPRT`, project `P-24017`, and state `Released`, it evaluates to:

```text
C:\PDMVault\Released PDFs\P-24017\11000-11999\Released
```

## File Name Number Range

Use `(FileNameNumberRange)` to group files with numeric filenames into folders or output names covering 1,000 numbers.

PDMPublisher removes the file extension, reads the complete filename as a number, rounds down to the nearest thousand, and returns the beginning and end of that range.

| Source filename | `(FileNameNumberRange)` result |
| --- | --- |
| `1000.SLDPRT` | `1000-1999` |
| `11345.SLDASM` | `11000-11999` |
| `19999.SLDDRW` | `19000-19999` |
| `25001.SLDPRT` | `25000-25999` |

For example, this export location:

`(VaultRootFolder)\Released PDFs\(FileNameNumberRange)`

evaluates for `11345.SLDPRT` as:

`C:\PDMVault\Released PDFs\11000-11999`

> [!IMPORTANT]
> The complete filename without its extension must be numeric. A filename such as `11345-A.SLDPRT`, `PART11345.SLDPRT`, or `Bracket.SLDPRT` is not treated as a number. When the filename is not numeric, `(FileNameNumberRange)` returns the actual filename without the extension.

| Source filename | Fallback result |
| --- | --- |
| `11345-A.SLDPRT` | `11345-A` |
| `PART11345.SLDPRT` | `PART11345` |
| `Bracket.SLDPRT` | `Bracket` |

You can insert this placeholder from the `>...` placeholder menu in fields that support dynamic values, including [Export Location](pdmpublisher-options/export-location.md) and [Filename](pdmpublisher-options/filename.md).

For filenames below `1000`, the range begins at zero. For example, `245.SLDPRT` returns `0-999`. Leading zeros are not preserved: `00123.SLDPRT` also returns `0-999`.

## Invalid Characters and Empty Values

When placeholders are used to create paths or filenames, values containing characters that Windows does not permit in a filename are cleaned before the output is saved. The task reports the variable that contained an invalid character.

If a value such as Revision or a PDM variable is empty, the placeholder contributes an empty string. Include separators carefully so an empty value does not leave an unwanted trailing dash or extra folder level.
