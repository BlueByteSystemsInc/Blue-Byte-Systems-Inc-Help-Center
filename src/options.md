
## Options Setup Page

When you choose PDM Publisher from the dropdown in the new task dialog, you will be prompted a window that is similar to the one below:

# Export Settings

| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Export Location**                         | Location where to export the files. The location can be within or outside the vault. It is important that the path does **not** end with a backslash (`\`).       |
| **File Formats**                            | Specifies the available file formats to export documents to, including formats like PDF, DWG, DXF, U3D, and others.                                            |
| **Export referenced components of the assembly to selected file formats individually** | When enabled, all referenced components of the assembly will be exported to the selected file format individually, rather than as a single file.                |
| **Merge exported PDFs into one master PDF** | Combines all exported PDFs of the affected assembly into one master PDF file, rather than keeping them separate.                                                 |
| **Work with latest version**               | Ensures that the task works with the latest version of the file, automatically fetching the most recent version from the PDM vault.                             |
| **Quick view mode (Drawings Only)**        | Enables quick view mode for drawings to improve performance, especially for large and complex drawings.                                                           |
| **Convert multiple configurations**        | If enabled, the task will attempt to export all part and assembly configurations. The configurations will be saved with the configuration name appended to the filename. |
| **Archive all exported documents (.zip)**  | Packages all exported documents into a single `.zip` file for easy storage and distribution.                                                                     |
| **Add a pack & go of the top-level assembly to the archive (.zip)** | Adds a "Pack and Go" of the top-level assembly to the `.zip` archive, which includes all necessary files for that assembly.                                    |
| **Export sheet metal parts to 1:1 flat pattern DXF** | Exports sheet metal parts as DXF files in a 1:1 scale. The filename will have `FlatPattern` appended.                                                            |
| **Use search to locate drawings**          | When enabled, the task will search the PDM vault for drawings that are not found in the same folder as the assembly, ensuring they are still included in the export. |

# Export History Settings

| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Turn on activity tracking**              | Enables tracking of all task activity, generating a detailed log that documents each step performed during the task, which can be saved in the log folder.         |
| **Server-Synced Activity Logs**             | Syncs the activity logs with the server, allowing for centralized storage and review of the task's history, including all performed steps.                        |
| **Log Folder (Vault Only)**                 | Specifies the folder within the PDM vault where log files will be stored. This ensures that logs are maintained in a secure location, following PDM’s file structure. |

# Table of Content Settings

| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Add table of content to merged PDF**     | When enabled, a table of contents will be automatically generated and inserted into the merged PDF, making it easier to navigate and reference the document.       |
| **Table type**                              | Specifies the type of table to include: either a Table of Contents (TOC) or a Simple Bill of Materials (BOM). The BOM includes item descriptions and quantities.    |
| **Paper size**                              | Specifies the paper size used for the table of contents or BOM in the merged PDF. Options include standard sizes like A4, Letter, and others.                     |

# Watermark Settings

| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Watermark**                               | Defines the watermark that will be applied to the printed PDF documents. This can include both static text and dynamic expressions, such as filenames or dates.     |

# SOLIDWORKS Settings

| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Use this version of SOLIDWORKS**          | Specifies which version of SOLIDWORKS to use for processing the files. Options range from specific years (e.g., 2018, 2019) to the latest version available.        |

# Miscellaneous Settings

| **Option**                                  | **Description**                                                                                                                                                 |
|:--------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **PDF bookmarks**                           | Allows you to define the text pattern for the bookmarks section in the merged PDF, making it easier to navigate between sections within the document.               |



### Important Notes About Creating Tasks

Please consider the following recommendations when creating a new task using PDM Publisher:
1. **Execution method**
    1. In the execution method tab that appears on the blue left sidebar, please: 
    2. Choose the radio box option **“Let the system decide which computer to execute the task“**.
    3. Choose **one computer**. We recommend that our customers opt for the server. The server needs to have a SOLIDWORKS PDM Client installed with a local view as well as SOLIDWORKS 3D.
2. On the first page of the task, execute the task with a user that has the right workflow and file/folder permissions.

> [!TIP]
> We also recommend disabling the auto-add extensions by removing all the extensions the task uses including txt.  
> This prevents race conditions between SOLIDWORKS PDM and the task during files add process.

To change the auto-add extensions list, 
1. *Go to* the PDM Administration tool
2. *Right click* on the username (or all users)
3. *Select* ***Settings***
4. *Click* on the ***Adding Files*** selection and edit the file extensions

<p align="center">
  <img src="../images/pdmconverttaskextendedaddingfiles.png" alt="Adding Files" width="800">
</p>
