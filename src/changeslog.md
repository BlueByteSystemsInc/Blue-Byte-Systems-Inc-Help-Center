---
title: PDMPublisher Change Log | Feature Updates, Enhancements & Fixes
description: View the PDMPublisher change log with detailed feature updates, enhancements, bug fixes, and improvements across all releases.
ms.date: 08/13/2026
ms.topic: conceptual
---
# PDMPublisher Changes Log

This page tracks all changes, fixes, improvements, and new features introduced in PDMPublisher, the SOLIDWORKS PDM Professional task add-in, and PDMPublisher for SOLIDWORKS, the SOLIDWORKS add-in.

Versions are identified by their compile date, which represents the build date of the released version. Each entry may include updates such as new functionality, bug fixes, performance improvements, compatibility updates, configuration changes, and known behavior changes.

> [!TIP]
> If you are using PDMPublisher (task), we highly recommend you use PDMDeploy to update PDMPublisher. Please see [here](/src/cdpdm.html).

## 2026.08.08
*Applies to **PDM Task***
- Added **File Number** placeholders that return the first 3, 4, 5, or 6 digits from the first numeric sequence in a filename.
- Added **File Number Range** placeholders that group those 3-, 4-, 5-, or 6-digit values into numeric ranges.
- Organized the new placeholders into **File Number** and **File Number Range** groups in the `>...` placeholder menu. See [File Number Placeholders](/src/pdmpublisherspecialvariable.html#file-number-placeholders).

## 2026.08.07
*Applies to **PDM Task***
- Added optional Windows light and dark theme synchronization for PDMPublisher task setup pages. Administrators can turn synchronization on or off from **Add-ins > PDMPublisher > Theme settings...**. See [Theme Settings](/src/pdmpublisher-theme-settings.html).
- Added the `(FileNameNumberRange)` placeholder for organizing numeric filenames into ranges of 1,000. See [File Name Number Range](/src/pdmpublisherspecialvariable.html#file-name-number-range).
- Updated drawing sheet selection so a drawing with only one sheet exports that sheet without applying the sheet-name matching pattern. Sheet-name matching continues to apply to drawings with two or more sheets.

## 2026.08.06
*Applies to **PDM Task***
- Fixed a keyboard focus issue on the Conditions page so users can type in the Value and Configuration columns after adding a condition.
- Made the SOLIDWORKS PDM task setup dialog resizable. The PDMPublisher setup pages now expand with the dialog.

## 2026.08.05
*Applies to **PDM Task** and **SOLIDWORKS Add-in***
- Added ACIS, 3D XML, VRML, VDAFS, CATIA Graphics, HCG, HOOPS HSF, Microsoft XAML, JPEG, TIF, Adobe Illustrator, and Adobe Photoshop export formats. See [File Formats](/src/pdmpublisher-options/file-formats.html).
- Added descriptive format names and Windows file-type icons to the File Formats selector and extension-specific export locations.
- Added visual icons to the BOM template and SOLIDWORKS version selectors.

## 2026.08.04
*Applies to **PDM Task***
- Added a drawing sheet mode selector to control which sheets are exported.
- Added a sheet name pattern field for export modes that filter drawing sheets by name.

## 2026.08.03
*Applies to **PDM Task***
- Improve path normalization, cleanup temp folder.
- Better UNC path handling.
- Add logic to delete temporary folder after successful task run, with error handling and warning message on failure.


## 2026.08.02
## 2026.08.01
*Applies to **PDM Task***
- Fixed bug when creating new tasks (Empty .net framework error dialog)

## 2026.07.27
*Applies to **PDM Task***
- Added (FolderName) for as a condition. 
## 2026.07.18
*Applies to **PDM Task***
- Fixed issue related to PDM failing to add files during check-in (E_EDM_FILE_SHARE_ERROR: HResult 0x8004020B) 
- Fixed issue related to creating TOC table when the character '#' is used.

## 2026.06.21
*Applies to **PDM Task***
- Added an interactive task launch file selection dialog for tasks that ask users to specify files at launch.
- Added CSV import to the task launch dialog. PDMPublisher reads file names or paths from the CSV, searches the vault, and uses the first matching result while skipping duplicates.
- Added automatic assembly reference calculation in the launch dialog.
- Added view-only drawing rows under parts and assemblies. These rows are shown for review but are not passed to the task input list.
- Added launch-time file format selection, export location visibility, and an administration notice that explains task export settings are controlled from the SOLIDWORKS PDM Administration tool. See [Scheduled Items Task Page](/src/scheduleditems.html).

## 2026.06.20
*Applies to **PDM Task***
- Added the **Scheduled Items** setup page. This page lets administrators choose files that PDMPublisher should process when a scheduled task runs without selected files. See [here](/src/scheduleditems.html).
- Added support for exporting Parasolid binary files with the `x_b` extension.
- Updated Scheduled Items task-run handling and task details log lookup behavior.

## 2026.05.31
*Applies to **PDM Task** and **SOLIDWORKS Add-in***
- Hot fix: PDF not printing due to split bodies.

## 2026.05.30
**PDM Task**:
- Added a log page in the details tab. See [here](/src/pdmpublisher_task_details.html).
- Added support for splitting multi-body part. See [here](/src/options.html).
- Limited `u3d` extension to assemblies export only.
- Fixed a bug when clicking on Add Task in the administration tool under Task List. The task now asks the user to select which files to process:
![Addtask](/images/add_task.png)

**SOLIDWORKS Add-in**:
- Fixed icon transparency issue in the taskpane and the add-in manager dialog in SOLIDWORKS
- Added support for splitting multi-body part. See [here](/src/pdmpublishersolidworks_options.html).  
- Limited `u3d` extension to assemblies export only.


## 2026.05.01
*Applies to **PDM Task***
- Improved retry count and wait time between retries during file checkin and file add.

## 2026.04.21
*Applies to **PDM Task***
- Added feature to suppress task commands in the tasks right-click menu in File Explorer. Setting is in options.

## 2026.04.17
*Applies to **PDM Task***
- Fixed issue related to sheet metal exports (views)

## 2026.04.12
*Applies to **PDM Task***
- Small bug fixes

## 2026.04.11
*Applies to **PDM Task***
- Fix bug when export location starts with `//`

## 2026.04.10
*Applies to **PDM Task***
- Added retry when adding files and checking files back into the vault.


## 2026.04.01
*Applies to **PDM Task***
- Added support for exporting views of sheet metal parts
- Added check-in retry
- Added extra logging to find when exported files are locked by other applications

## 2026.03.27
*Applies to **SOLIDWORKS add-in***
- Fixed crash related to GDI reaching +9999
- Minor changes in the progress dialog 

## 2026.03.26
*Applies to **PDM Task***
- Add custom quantity multiplier when the user is asked the configuration on startup.
- Added Download Center menu item in the Administration tool under the add-in for when PDMDeploy is blocked. This will take you to the PDMPublisher download center.

## 2026.03.22
*Applies to **PDM Task** and **SOLIDWORKS Add-in***
- Merge and TOC bugs fixes.
- Added support for exporting to `bmp`

## 2026.03.16
*Applies to **PDM Task*** 
- Added support for processing excel and word files to pdf 
- Added support for variable mapping between the destination file and the source file 
- Added support for creating a custom reference between the destination file and the source file 
- Added support for deleting duplicates outside the target destination
- Added support for the following extensions: `ifc`,`3mf`, `3dpdf` (pdf but for the parts and assemblies) 
- Minor bug fixes


## 2026.02.23
*Applies to both **PDM Task** and **SOLIDWORKS Add-in***
- Fixed bug when exporting flat pattern when `Convert Multiple Configurations` is enabled
- Added new option under Flat Pattern Settings to remove or add `-FlatPattern` to the dxf flat pattern filename.

## 2026.02.22
*Applies to both **PDM Task** and **SOLIDWORKS Add-in***
- Added support for filtering configurations to task enabled via the `Convert Multiple Configurations`
- Added support for the `3mf` extension for parts

## 2026.02.21
*Applies to **SOLIDWORKS Add-in***
- Fix bug related to drawings not closing when printing to PDF.

## 2026.02.20
*Applies to **SOLIDWORKS Add-in***
- Added ability to choose which configurations (include and exclude patterns) to process under the `Convert Multiple Configurations` option

## 2026.02.19
## 2026.02.18
*Applies to **SOLIDWORKS Add-in***
- Ghost rebuild


## 2026.02.17
*Applies to **SOLIDWORKS Add-in***
- Fix BOM calculation issue
## 2026.02.16
## 2026.02.15
## 2026.02.14
## 2026.02.13
*Applies to **SOLIDWORKS Add-in***
- Ghost rebuild 

## 2026.02.13
*Applies to **SOLIDWORKS Add-in***
- Fix: If taskpane fails, add-in will attempt to self re-register. You must be running SW as admin for this work.


## 2026-02-12 
*Applies to **SOLIDWORKS Add-in***
- Improved references dialog load speed

## 2026-02-11 
*Applies to **SOLIDWORKS Add-in***
- Fixed bug: Incomplete references dialog data when top level assembly is opened in lightweight.
- Decreased time it takes to build the reference tree in the progress dialog
- Minor UI changes in the about page (Renamed buttons captions and added support email address)

## 2026-02-10 
- Ghost build

## 2026-02-09 
*Applies to both **PDM Task** and **SOLIDWORKS Add-in***
- Started used seperator | instead of # (Caused issues with filenames containing #)
- Updated FAQ about merging PDFs error.
- Added `ConfigurationName` alias to conditions.

## 2026-01-17  
*Applies to both **PDM Task** and **SOLIDWORKS Add-in***
- Fixed  **outside diameter of countersink holes** when exporting **DXF flat patterns** bug.  

## 2026-01-16  
*Applies to **SOLIDWORKS Add-in***
- Fixed assembly conflict bug

## 2026-01-15  
*Applies to both **PDM Task** and **SOLIDWORKS Add-in***

- Added a new **Flat Pattern export setting** that removes the **outside diameter of countersink holes** when exporting **DXF flat patterns**: This helps produce cleaner DXFs for downstream manufacturing by excluding countersink outer geometry while preserving required cut profiles.






