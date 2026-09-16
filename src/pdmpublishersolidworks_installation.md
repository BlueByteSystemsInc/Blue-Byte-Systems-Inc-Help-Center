---
title: Install PDMPublisher for SOLIDWORKS
description: Download, unblock, install, and enable the PDMPublisher for SOLIDWORKS add-in.
ms.date: 08/24/2026
ms.topic: how-to
---

# Install PDMPublisher for SOLIDWORKS

Use the PDMPublisher MSI installer to install the SOLIDWORKS desktop add-in. SOLIDWORKS must be closed while you install or update the add-in.

<p align="center">
<a class="bbs-download-button" href="https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher">Download PDMPublisher for SOLIDWORKS</a>
</p>

## Before You Begin

- Save your work and close every running SOLIDWORKS window.
- Make sure your Windows account can install applications. Your organization may require administrator approval.
- Download the PDMPublisher MSI installer to the local computer. Do not run it directly from an email attachment, ZIP archive, or network preview.

> [!IMPORTANT]
> Keep SOLIDWORKS closed until the installation wizard finishes. An open SOLIDWORKS process can prevent the installer from replacing or registering add-in files correctly.

## Unblock the Downloaded MSI

Windows may block files downloaded from the internet. Unblock the MSI before running it:

1. Open **File Explorer** and locate the downloaded `.msi` file.
2. Right-click the MSI and select **Properties**.
3. On the **General** tab, select **Unblock** under **Security**.
4. Select **Apply**, and then select **OK**.

> [!NOTE]
> If the **Unblock** option is not shown, Windows has not marked the file as blocked and you can continue with the installation.

## Run the Installation Wizard

1. Confirm that SOLIDWORKS is closed.
2. Double-click the unblocked MSI file.
3. Approve the Windows security or administrator prompt if one appears.
4. Follow the installation wizard through each page.
5. Select **Install** when prompted.
6. Wait for the installer to finish, and then select **Finish**.

## Enable PDMPublisher in SOLIDWORKS

1. Start SOLIDWORKS.
2. Select **Tools > Add-Ins**.
3. Expand **Partner Solution Add-Ins** if the group is collapsed.
4. Find **PDMPublisher (SOLIDWORKS)**.
5. Select the checkbox in **Active Add-ins** to load it in the current SOLIDWORKS session.
6. Select the checkbox in **Start Up** to load PDMPublisher automatically whenever SOLIDWORKS starts.
7. Select **OK**.

![PDMPublisher for SOLIDWORKS enabled under Partner Solution Add-Ins](/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)

After the add-in loads, open the **PDMPublisher** CommandManager tab. Use **Settings** to configure profiles and shared resources; the task pane now displays the product documentation.

## Update PDMPublisher

To install a newer version, close SOLIDWORKS, download the current MSI, unblock it, and run the installation wizard again. Reopen SOLIDWORKS only after the update finishes.

## Next Steps

- [Open the PDMPublisher for SOLIDWORKS overview](pdmpublishersolidworks.md).
- [Create and manage profiles](pdmpublishersolidworks_profiles.md).
- [Manage your license](licensespdmpublisher.md).
- [Watch the video demos](pdmpublisherdemo.md).

If PDMPublisher does not appear in **Tools > Add-Ins**, close SOLIDWORKS and run the installer again. For additional help, contact `support@bluebytesystemsinc.zohodesk.com` and include your SOLIDWORKS version and a screenshot of the Add-Ins dialog.
