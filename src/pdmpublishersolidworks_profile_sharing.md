---
title: Share Profiles Using a PIN | PDMPublisher for SOLIDWORKS
description: Share selected PDMPublisher for SOLIDWORKS profile settings with another user by using an expiring six-digit PIN.
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher for SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Share Profiles Using a PIN

PDMPublisher for SOLIDWORKS can share a profile by using a six-digit PIN. Another PDMPublisher for SOLIDWORKS user can enter that PIN to download, save, and apply the shared settings.

This feature belongs to **PDMPublisher for SOLIDWORKS**. The PDM Professional task stores settings in its task definition and does not use profile PINs.

> [!IMPORTANT]
> Both users need an internet connection. A PIN remains available for 30 days.

## What a Shared Profile Can Include

Before uploading or applying a profile, PDMPublisher lets you select these sections:

- **Options**
- **Annotations**
- **Conditions**

All available sections are selected by default. Select at least one section to continue.

The recipient can apply only the included sections they need. Settings in sections that are not selected remain unchanged in the recipient's current profile.

## Share a Profile

1. Select the profile you want to share.
2. Open **Export**, then select **Share using PIN...**.

![Profile Shared dialog with an expiring six-digit PIN](/images/pdmpublisher/solidworks/profile-shared-pin.png)

3. Select the Options, Annotations, and Conditions sections to include.
4. Select **Share** and wait for the upload to finish.
5. In the **Profile Shared** dialog, select **Copy PIN** and send the PIN to the recipient.

The dialog shows the PIN expiration in the sender's local time.

## Load a Shared Profile

1. Open **Load From...**, then select **Load using PIN...**.

![Load Profile using PIN dialog](/images/pdmpublisher/solidworks/profile-load-pin.png)

2. Enter the six-digit PIN supplied by the sender.

3. Select **Load Profile**.
4. Select which available sections to apply, then select **Load Selected**.

PDMPublisher downloads the profile, saves it locally, applies the selected sections, and makes it the active profile. Other current sections remain unchanged.

If a local profile already has the shared profile's name, PDMPublisher asks whether to replace it, import it under another name, or cancel the import.

## Security and Expiration

> [!WARNING]
> Anyone who has an active PIN can download the shared profile. Use PIN sharing for convenient, short-lived configuration exchange, not for confidential information.

Review the selected sections before sharing. Profiles can contain export paths, filenames, annotations, conditions, PDM property names, and SQL annotation settings. Do not share passwords, private connection strings, or other secrets.

An expired or invalid PIN cannot be loaded. Ask the sender to share the profile again to receive a new PIN.

For file-based transfer instead of PIN sharing, see [Move Profiles Between Computers](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
