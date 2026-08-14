---
title: Filename | PDMPublisher Options
description: Configure the output filename pattern used by PDMPublisher.
ms.date: 08/13/2026
ms.topic: reference
---

# Filename

![Filename setting](/images/pdmpublisher/screenshots/options-017-property-filename.png)

Defines the output filename pattern. You can combine static text with SOLIDWORKS custom properties or PDM variables.

Use unique values such as part number, revision, configuration name, or sheet name when one source file may create several exports.

Use the **File Number** placeholders to extract the first 3, 4, 5, or 6 digits from the first numeric sequence in a source filename. Use the **File Number Range** placeholders to organize outputs into numeric ranges. See [File Number Placeholders](../pdmpublisherspecialvariable.md#file-number-placeholders) for all available placeholders, examples, and fallback behavior.

> [!IMPORTANT]
> If **Convert multiple configurations** is enabled, include `ConfigurationName` or another configuration-specific value in the filename.

## Existing Files in PDM

If the exported file already exists in PDM, PDMPublisher overwrites the file by creating a new version.

When PDMPublisher adds or checks in the exported file, the check-in comment identifies that the file was added or checked in by PDMPublisher.
