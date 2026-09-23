---
title: Company Settings | PDMPublisher for SOLIDWORKS
description: Publish selected PDMPublisher settings for a company, control whether users may opt in, and safely manage company-wide configuration revisions.
ms.date: 10/03/2026
ms.topic: how-to
---

# Company Settings

Company Settings lets an administrator publish selected PDMPublisher for SOLIDWORKS settings once and make them available to every licensed user whose activated license has the same company name. Users do not need a website account or the administrator password to download the settings.

Open **PDMPublisher > Settings > Company Settings**.

![Company Settings page showing download, use-company-settings, and administrator controls](/images/pdmpublisher/solidworks/company-settings-20261003.png)

> [!IMPORTANT]
> Company Settings requires an activated, unexpired license with a company name. Settings are matched using that company name. Connector credentials, license keys, SQL credentials, vault configuration, and other computer-specific secrets are not shared.

## Use company settings

The page shows whether this computer is using local or company settings and when it last downloaded the company configuration.

- Select **Download company settings** to retrieve the latest published revision immediately. Save and close other PDMPublisher tool windows first because downloading reloads the settings dialog and publishing controls.
- When the administrator chooses **Let users choose**, select **Use company settings** to apply the managed values. Clear it to return to the locally saved values.
- When the administrator chooses **Required**, the checkbox is locked. Managed pages show a padlock and are read-only.
- If the service cannot be reached, the protected local cache remains available. PDMPublisher also checks for an update once at startup when no operation or dialog is active; it does not poll continuously.

## Publish settings as the company administrator

The administrator password is created separately for the exact company name on the activated license. Select **Company administrator**, enter that password, and select **Unlock**.

![Company administrator password dialog](/images/pdmpublisher/solidworks/company-settings-admin-unlock-20261003.png)

After the password is verified:

1. Choose how the published settings apply:
   - **Off** — every user keeps local settings.
   - **Let users choose** — users can enable or disable **Use company settings**.
   - **Required** — the selected settings are enforced and their pages become read-only.
2. Select the setting groups to publish. Available groups include **Advanced Formulas**, **BOM Manager**, **Clone Tree**, **ERP Sync**, **Languages**, **PDM**, **Property Doctor**, **Publish**, and **Save As New**.
3. Save any edits in the normal Settings dialog.
4. Return to Company Settings and select **Publish company settings**.

![Unlocked company administrator page with policy and setting-group selections](/images/pdmpublisher/solidworks/company-settings-admin-publish-20261003.png)

Only the selected groups are managed. Unselected settings continue to use each computer's local values. Referenced macros, ERP connectors, material libraries, external SQL sources, and other required resources must still be installed or configured on each computer.

## Edit an existing company configuration

Unlocking starts with this computer's existing local values; it does not overwrite them with the company values. The administrator password remains only in memory during the editing session. Save changes normally, then publish them from Company Settings.

Publishing, downloading company settings, finishing the editing session, changing the license or company, or restarting SOLIDWORKS ends the session and forgets the password. Finishing without publishing leaves the saved edits only on this computer.

## Revision conflicts and overwrite

Each publish is based on the revision that the administrator last downloaded. If another administrator has already published a newer revision, PDMPublisher stops the upload so that the newer settings are not silently replaced. Download the current revision, review it, and publish again.

Use **Overwrite newer company settings** only when the newer revision must intentionally be replaced. PDMPublisher verifies the password and asks for confirmation. This option bypasses only the stale-revision check; validation, atomic updates, revision history, and preservation of settings created by newer versions still apply.

Company-settings payloads are transferred over HTTPS. The local cache is encrypted for the current Windows user.
