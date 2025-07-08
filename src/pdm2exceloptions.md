---
title: Options | PDM2Excel | SOLIDWORKS PDM
description: Configure the Options page in the task setup dialog.
---
## Options

The **Options** tab allows you to configure how the Bill of Materials (BOM) is exported to Excel, including layout, naming, structure, and formatting preferences.

![alt text](/images/pdm2excel_options.png)

| **Option**                         | **Description**                                                                                                                                                        |
|:----------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Export Location**                | The output folder where the Excel BOM will be saved. In the example, it's set to a path under the vault: `Vault root folder\API\Sandbox`.                             |
| **Save copy in original folder?** | When enabled, also saves the exported file in the same folder as the original document. This is disabled in the current configuration.                                 |
| **File name**                      | Defines how the output file is named. The current format uses: `$(Description)-{FileName\withoutExtension}-{ConfigurationName}`.                                       |

## Export Settings

| **Option**                                      | **Description**                                                                                                                                                     |
|:------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Export All Configurations BOMs**              | If enabled, exports BOMs for all configurations. This is unchecked in the current setup.                                                                            |
| **Ignore @ Configuration**                      | Skips the default `@` configuration during export. This is unchecked in the current setup.                                                                          |
| **Add Level Column**                            | Adds a level column to indicate the assembly hierarchy in the BOM. This is **enabled** in the current setup.                                                       |

## Bill of Materials (BOM) Settings

| **Option**                                      | **Description**                                                                                                                                                     |
|:------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **PDM BOM Layout**                              | Specifies the BOM layout to use. In the example, the layout is set to **Engineering BOM**.                                                                          |
| **Group By**                                     | (Optional) Specifies a column to group BOM rows by (e.g., Part Number or Description). This is empty in the current setup.                                         |
| **Display Style(s)**                            | Specifies how to display BOMs: **Indented, PartsOnly, Flattened**. Multiple styles can be selected.                                                                 |
| **Export All Sub-Assemblies As Separate BOMs**  | If enabled, creates separate BOM files for each sub-assembly. This is **disabled** in the current setup.                                                            |
| **Omit Columns**                                 | Allows hiding specific columns during export. In the current setup, the columns `#`, `Description`, and `Revision` are omitted.                                     |

## Excel Template

| **Option**                   | **Description**                                                                                                                                         |
|:----------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Xlsx template**           | The Excel `.xlsx` template file to use for formatting the exported BOM. In the example, it is set to `Vault root folder\API\Sandbox\template.xlsx`.     |
| **Starting address**        | Defines the starting cell (row:column) in Excel. The example uses `2:1`, meaning row 2, column 1.                                                        |

## Thumbnails

| **Option**           | **Description**                                                                                       |
|:---------------------|:------------------------------------------------------------------------------------------------------|
| **Enable Rhumbnails**| Adds  a thumbnail column.   |
| **Background Color**| Background color (shades of green) for each level: ![background color](/images/pdm2excelbackcolor.png)   |