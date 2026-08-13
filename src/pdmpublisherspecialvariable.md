---
title: Special and Dynamic Variables | PDMPublisher | SOLIDWORKS PDM
description: Learn how to use special and dynamic variables to create advanced custom output paths in PDMPublisher.
ms.date: 08/13/2026
ms.topic: reference
---

# Special/Dynamic Variables

With PDM Publisher, special/dynamic variable allow you to create advanced custom paths when printing PDFs. This quick demo showcases how you can make use of this powerful feature.

>[!Video https://www.loom.com/embed/377f21c2f0b4423c914fae5767b44a21?sid=02cb620e-f91c-421e-8b25-7576d6e5cb0b]


> [!NOTE]
> PDMPublisher evaluates special and dynamic variables when it creates output paths and filenames.

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
