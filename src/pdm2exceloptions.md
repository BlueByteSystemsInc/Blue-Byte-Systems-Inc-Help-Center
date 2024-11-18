
# Options

The Options setup tab allows you to define the characteristics of the BOM you would like to export.


| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Export Location**                         | Specifies the location where the Bill of Materials (BOM) should be saved. The location can be within or outside the vault.                                        |
| **Save copy in original folder?**          | If enabled, a copy of the exported file is saved in the same folder as the original document, preserving the file organization.                                 |
| **File name**                               | The name of the exported Bill of Materials file. This name will be used when saving the file in the specified export location.                                    |
| **Hyperlink the filename column**          | Creates hyperlinks in the filename column of the BOM, linking to the document’s location in File Explorer.                                                        |
| **Web2Client base url**                    | Provides the base URL for the Web2Client, which can be used to create hyperlinks in the BOM for accessing files through a web-based interface.                  |
| **Add a level column**                     | Adds an additional column in the BOM that represents the hierarchical level of each assembly or part.                                                             |
| **Add parent column**                      | Includes a parent column in the BOM, showing the parent assembly for each part or sub-assembly in the BOM.                                                        |
| **Thumbnail API Key**                      | Specifies the API key required for fetching thumbnails of the documents. More details can be found on the SolidWorks website.                                      |
| **Individual Thumbnails Export Location**  | Defines the location where individual thumbnails (images of documents) will be exported. This is useful for visually identifying parts in the BOM.                |
| **Ignore columns**                         | Specifies which columns to ignore during export, using a semicolon (`;`) to separate multiple column names.                                                        |

## Export Settings

| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Print All Configurations**                | When enabled, all configurations of an assembly will be printed in the BOM. Ensure the configuration names are included in the file name for clarity.             |
| **Ignore @ configuration**                 | If checked, the `@` configuration of the assembly will be ignored during the export process, which is often used for default or assembly-level configurations.    |
| **Process all sub assemblies**             | Ensures that all sub-assemblies are processed and included in the BOM, not just the top-level assemblies.                                                         |
| **Top-level assembly row**                 | If enabled, a row representing the top-level assembly will be added to the BOM, ensuring that the highest-level part is clearly marked in the export.             |

## Bill of Materials (BOM) Settings

| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **PDM BOM Layout**                          | Defines which BOM layout to use for exporting the Bill of Materials. Layouts might be pre-defined templates that determine the structure and order of BOM columns.   |
| **Starting address**                        | Specifies the cell address in Excel where the BOM should begin. The format should be `Row:Column`, e.g., `10:12` for starting at row 10, column 12.                |
| **Display state**                           | Determines the display state of the BOM, such as showing only top-level parts, indented structure, or all parts of an assembly.                                   |

## Templates Settings

| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Xlsx template**                           | Specifies the Excel template file (`.xls`, `.xlsx`, `.xlsm`) to be used when exporting the Bill of Materials, which can define formatting and data layout.         |

> [!NOTE]
> The Export and Import button allows you to save your settings and import them after upgrading. Only use them with task setup.