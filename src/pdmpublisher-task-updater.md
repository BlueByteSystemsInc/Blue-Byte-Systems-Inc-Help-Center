---
title: Update the PDMPublisher PDM Task
description: Update PDMPublisher from PDM Administration.
ms.topic: how-to
---

# Update the PDMPublisher PDM Task

The updater downloads the latest public PDMPublisher task package and installs it in the selected vault. Your task settings are kept.

1. Save your work and close SOLIDWORKS and the local PDM task host.
2. In PDM Administration, expand the vault's Add-ins node.
3. Right-click PDMPublisher and select Update PDMPublisher.
4. Sign in to the vault if prompted. Your PDM account must have permission to update add-ins.
5. Review the installed and available versions, then select Update and restart PDM.

The updater runs in your normal Windows session and does not request administrator permission.

PDM Administration and File Explorer close and reopen on this computer after installation. Other computers are not restarted. Restart PDM on other task hosts before running the updated task there.

If the latest version is already installed, Reinstall and restart PDM installs that version again. Check the installed and available versions before reinstalling.

The public download code is included. A PDMPublisher license is still required to run publishing tasks.

## If the update stops

Read the details in the updater. If PDM reports that the add-in class is not registered, save the log and contact [support](https://support.bluebyte.biz). Logs are stored in `%LOCALAPPDATA%\Blue Byte Systems\PDMPublisher\Updates`. If installation completed but the restart failed, close and restart PDM before running tasks.

The updater confirms the expected English replacement and restart-required dialogs. Unexpected dialogs remain visible for you to review.

If Update PDMPublisher is not available, install the current task using [PDMDeploy](updateaddinswithcdpdm.md) or the [CEX file](installingpdmaddins.md).
