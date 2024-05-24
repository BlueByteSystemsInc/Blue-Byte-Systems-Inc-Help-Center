
# Installation

This section contains information about installing the PDM add-in using the binaries or the CEX file available in your Blue Byte Systems Inc. account downloads section.

#### Where to Find and Download the CEX File

PDM2Excel is packaged as a CEX file. You can download it as follows:

1. **Order Confirmation Email**: If you purchased PDM2Excel through our website, the order confirmation email contains both the download link to the CEX file and a valid license key.
2. **Blue Byte Account**: Log into your Blue Byte account **[here](https://bluebyte.biz/my-account/)** and navigate to the **downloads** section.

#### Downloading

>[!Note]
>If you have a valid license and are unable to download the CEX file, please reach out to us via the **[contact](https://bluebyte.biz/contact/)** page.

- After logging into your **[account](https://bluebyte.biz/my-account/)**, go to **orders**.
- In the **downloads** tab, find the latest version of the CEX file. The CEX files are named after the add-in and the compile date. The latest version will be at the bottom of the table.
- The CEX will download within a .zip file.
- You may need to check if your Windows security policies have blocked the download.

###### Downloading a Blocked .zip File

In the downloads section of your web browser, do the following:

1. *Right-click* on the blocked .zip file.
2. Go to **Properties**.
3. *Uncheck* the **Unblock** checkbox.
4. *Click* **Apply** and then **OK**.

## Extracting the .zip File

To unzip the .zip file:

1. *Right-click* the .zip file.
2. *Select* **Extract**.

#### Loading the PDM Add-in into Your Vault

To load the PDM add-in, follow these steps:

1. *Open* the PDM Administration tool.
2. *Log in* to a user account that **has** permission to administer add-ins.
3. *Go to* **File**.
4. *Click* **Open...**
5. *Browse* to the CEX file.
6. *Select* the CEX file and *click* **Open**.
7. *Drag* the add-in icon from the opened CEX window onto the add-in node.

<center>
    <video src="../images/how-to-add-pdm2excel.mp4" controls type="video/mp4" width="600"/>
</center>


>[!Important]
>You need to permit the add-in in the task host configuration to show client computers in the execution method tab in the task setup dialog. You can permit the add-in by navigating to the PDM globe icon in the icon tray, right-clicking on it, and clicking *Task Host Configuration*.

#### Updating the PDM Add-in

To update the PDM add-in, follow the instructions from the **[start](#installation)** of this page.

###### Administrator

>[!Warning]
>Only perform updates when no one is using the task.

As an administrator, the process of updating the add-in is very involved.

- If you have existing tasks in the task list, we recommend that you export all the options from the task dialog. The options tab has an export button. You can re-import this data later when you recreate the task.
- Log in to the vault in the administration tool and remove the add-in.
- Perform the steps in the *Client* section below to clear your PDM session of an instances of the add-in or task in memory (PDM restart).
- Perform the steps in *Loading the PDM Add-in into Your Vault* to load the add-in.
- Alert your PDM users to follow the instructions in the *Client* section to use the new add-in.

###### Client

You have two options to restart PDM:

1. Restarting your Windows session will take care of updating the add-in.

2. Restarting PDM without leaving your Windows session can be done by performing the following sequence of instructions on the client machine:
    1. Open Windows Task Manager.
    2. Under **Details**, locate **explorer.exe** and end the process.
    3. Do the same for the **edmserver.exe** process.
    4. Click on **File  Run...** and type in **explorer.exe** to restart File Explorer.
    5. Navigate to your local vault view and log in. You may experience a slight delay because your local client is downloading any new version of the add-in from the server.

>[!Tip]
>To end a process in the **Details** tab, right-click on it and click **End**.

>[!Note]
>To avoid this issue, please consider using **[our continuous delivery process](https://bluebyte.biz/solidworks/auto-update-solidworks-pdm-add-ins/)**.
