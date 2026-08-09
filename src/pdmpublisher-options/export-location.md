---
title: Export Location | PDMPublisher Options
description: Configure where PDMPublisher writes exported files.
ms.date: 08/09/2026
ms.topic: reference
---

# Export Location

![Export Location setting](/images/pdmpublisher/screenshots/options-013-property-export-location.png)

Sets the folder where PDMPublisher writes generated files. The export location can point to a folder inside the vault, a relative path, a UNC/server path, or a folder outside the vault.

## Path Types

PDMPublisher accepts several path styles:

| Path type | Example | Use when |
|---|---|---|
| Vault path | `(VaultRootFolder)\Released PDFs` | The exported files should be added back to the vault. Use the `VaultRootFolder` placeholder from the `>...` menu. |
| Relative path | `Exports\PDF` | The destination should be based on the source file or task working context. |
| UNC/server path | `\\server\engineering\exports` | The output should be written to a shared network location. |
| Outside the vault | `D:\Exports\PDMPublisher` | The exported files should stay outside PDM. |

> [!IMPORTANT]
> If the location is inside the vault, the task user must have permission to create, check out, check in, and overwrite files in that folder.

If the export folder does not exist, PDMPublisher creates it before saving the exported file.

`(VaultRootFolder)` is the preferred way to build a vault path because it resolves to the local vault root on the task machine.

## Browse Button

The browse button simply lets you select a static folder location and writes that folder path into **Export Location**.

Use it when the task should always export to the same fixed folder. If the path needs to change based on the file, revision, state, or folder, use placeholders from the `>...` menu instead.

## Placeholders

The blue entries in the export location field are placeholders. A placeholder is a dynamic value that PDMPublisher resolves at run time.

For example:

`(TopAssemblyFolder)\Exports\(State)\(Revision)`

If the top assembly is in:

`C:\PDMVault\Projects\1001`

and the file state is `Released` with revision `B`, PDMPublisher resolves the export location to:

`C:\PDMVault\Projects\1001\Exports\Released\B`

`(TopAssemblyFolder)` means the folder of the top-level file being processed. If the task is run on a single part or a single drawing instead of an assembly, PDMPublisher uses that part or drawing folder as the top folder.

For example, if the task is run on:

`C:\PDMVault\Projects\1001\Bracket.SLDPRT`

then:

`(TopAssemblyFolder)\Exports`

resolves to:

`C:\PDMVault\Projects\1001\Exports`

Placeholders are useful when the same task must write files to different folders depending on the file being processed. You can use them to include values such as the source folder, file name, revision, state, workflow, configuration, or other PDM/SOLIDWORKS variables exposed by the placeholder menu.

> [!TIP]
> Use placeholders for repeatable task setups. Hard-coded paths are fine for one fixed export folder, but placeholders make the task adapt to each source file.

If the path uses variables stored on the file's `@` tab, see [Use @ Tab to Evaluate Paths](use-at-tab-to-evaluate-paths.md).

## Extension-Specific Locations

Use **Customize Location** when different file formats need different output folders.

![Extension-specific export location dialog](/images/pdmpublisher/screenshots/options-dialog-extension-specific-location.png)

When an extension-specific location is enabled for a file format, it overrides the main **Export Location** for that format only.

For example:

| Format | Main Export Location | Extension-specific location | Final output folder |
|---|---|---|---|
| PDF | `C:\PDMVault\Exports` | `C:\PDMVault\Exports\PDF` | `C:\PDMVault\Exports\PDF` |
| DXF | `C:\PDMVault\Exports` | `\\server\laser\DXF` | `\\server\laser\DXF` |
| STEP | `C:\PDMVault\Exports` | Not enabled | `C:\PDMVault\Exports` |

Only checked/enabled formats use their custom location. Any format without an extension-specific override continues to use the main **Export Location**.

> [!NOTE]
> When activity tracking is enabled, the task log records that PDMPublisher is using a customized path for formats that have an extension-specific location enabled. This helps confirm which path was selected on the machine that launched the task.

> [!WARNING]
> Do not end the export location or extension-specific location with a trailing backslash.
