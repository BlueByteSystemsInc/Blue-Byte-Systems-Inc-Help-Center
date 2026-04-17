---
title: PDMPublisher Change Log | Feature Updates, Enhancements & Fixes
description: View the PDMPublisher change log with detailed feature updates, enhancements, bug fixes, and improvements across all releases.
---

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






