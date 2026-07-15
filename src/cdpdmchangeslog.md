---
title: PDMDeploy Change Log | Feature Updates, Enhancements & Fixes
description: View the PDMDeploy change log with detailed feature updates, enhancements, bug fixes, and improvements across all releases.
ms.date: 07/04/2026
ms.topic: conceptual
---

# PDMDeploy Change Log

## 34
- Fixed bug related to registry nodes permissions.

## 31
*Redesigned interface and activation codes*

- New dark interface across the add-in manager, the configuration dialog, and the settings window.
- Activation codes: configure PDMDeploy by typing the code from your welcome email, with no more emailing configuration files around. The `.cdg` Customer Configuration File remains fully supported as a fallback. The menu command is now called *Load Customer Configuration (Activation Code or File)...*
- Add-in manager improvements:
  - The window opens instantly and loads in the background. The blocking "Please wait" dialog is gone. A status bar shows live progress (reading installed add-ins, then loading from the server).
  - New Status column: *Not installed*, *Update available*, or *Up to date* at a glance.
  - The newest server version is preselected for each add-in.
  - Single-click checkboxes and a select-all checkbox in the header.
  - First-run experience: if PDMDeploy is not configured, the window shows the activation panel directly instead of an empty list.
  - Window title shows the PDMDeploy version and the vault name.
- Reliability fixes:
  - Clear error messages instead of silent failures when loading configurations or contacting the server.
  - Add-in COM registration failures are now detected and reported (previously they could fail silently), and registration uses the correct 64-bit framework.
  - The installed-version column updates immediately after an install.

## 30
*CDPDM Add-in is now PDMDeploy*

- CDPDM has been **renamed to _PDMDeploy_ in version 30**.
- Documentation updates reflecting the new name and versioning are planned for **March 2026**.
