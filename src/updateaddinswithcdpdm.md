---
title: Updating Blue Byte Systems PDM add-ins with PDMDeploy | SOLIDWORKS PDM
description: This article is about updating any SOLIDWORKS PDM add-in you purchase from Blue Byte Systems Inc using the PDMDeploy add-in.
---

>[!Important]
> **CDPDM is now PDMDeploy**. While screenshots and video tutorials are still referencing CDPDM, the changes in PDMDeploy are minimal.

# Updating Blue Byte Systems PDM add-ins with PDMDeploy


<video src="https://bluebyte.biz/wp-content/docsvideos/cdpdm.mp4" autoplay muted controls style="width: 100%; border-radius: 12px;"></video>


This article is about updating any SOLIDWORKS PDM add-in you purchase from Blue Byte Systems Inc using the PDMDeploy add-in. This tool streamlines the code delivery process for SOLIDWORKS PDM customers by utilizing the PDMDeploy continuous delivery platform. It allows you to access and update your purchased add-ins and all their versions efficiently.

### Installation Steps:

1. **Download PDMDeploy**: The link is provided in your *order email* and is also available in the downloads section of your account. This file is an archive zip file and it contains `PDMDeploy.cex` and `CustomerConfigurationFile.cfg`

<p align="center">
  <img src="../images/confirmationemail.png" alt="Order Email" />
  <br>
  <em>Order email</em>
</p>


> [!Note]
> To install PDMDeploy after downloading it, please follow the instructions in [this article](/src/cdpdm.html).


> [!Warning]
> **If PDMDeploy fails to install, the *order email* contains a downloadable CEX file that contains the add-in**.

2. **Unblock the downloaded file**: Right-click on the zip archive and select **Properties**. In the properties dialog, check the **Unblock** option and click **OK**.

3. **Unzip the archive**: Extract the contents of the zip archive.

4. **Open the administration tool**: Log into your vault.

5. **Import the add-in**:
    
    - Go to **File > Open** and browse to `PDMDeploy.cex` (unzipped content).
    
    - Click **OK** to open the CEX file.
    
    - Drag and drop the PDMDeploy add-in icon onto the add-ins node in the administration tool. This will add the add-in into the add-ins node.

6. **Upload the customer configuration file**:
    
    - Locate the customer configuration file `CustomerConfigurationFile.cfg`.
    
    - If needed unblock the downloaded configuration file: Right-click on the file, select **Properties**, check the **Unblock** option, and click **OK**.
    
    - Right-click on the PDMDeploy add-in and click on **Update customer configuration file...**
    
    - Browse to the unblocked customer configuration file and upload it.

### Updating an Add-in:

1. Right-click on PDMDeploy add-in (under Add-ins in the Administration tool):

![rightclickcdpdm](/images/rightclickcdpdm.png)

2. Click on **Update AddIns…** and confirm this dialog box:

![please wait](/images/cdpdmpleasewait.png)

3. The Add-in View Manager window will appear. This is where you can select from the dropdown list (and check the checkbox) the add-in you'd like to install:

![addinview](/images/addinview.png)

4. Click on the **Install Checked Add-Ins...** button to install the selected add-in. The process might take a few moments, so please wait.

5. You will be prompted at the end to restart your PDM session. This allows your local client to get the new version of the installed add-in. *This is optional* but highly recommended for tasks that are triggered from File Explorer.

### Warnings

> [!Warning]
> PDMDeploy **does not permit** new task add-ins in the *Task Host Configuration*. You must do that manually:
> ![taskhostconfiguration](/images/taskhostconfiguration.png)
> [!Warning]
> All client computers using the add-in's tasks must be restarted to use the new version.