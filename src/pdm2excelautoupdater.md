
# Auto-updater add-in

The auto-updater add-in is a tool developed by Blue Byte Systems, Inc. to streamline our code delivery process for our SOLIDWORKS PDM customers.

The tool is an add-in that allows you to access your purchased add-ins and all their versions.

To install the add-in:

1. **Download the auto-updater add-in**. The link is in your order confirmation. It’s also accessible from the downloads section in your account.
2. The auto-updater add-in is a zip archive, so make sure to right-click on it and unblock it from the file’s properties before you unzip its content.
3. In your administration tool, log into your vault and then go to **File > Open** and browse to `Auto-UpdaterAddInVX.cex` (unzipped content).
4. Click **OK** to open the CEX file.
5. Drag and drop the auto-updater add-in icon onto the add-ins node in the administration tool. This will add the add-in into the add-ins node.
6. Right-click on the add-in and click on **Server Credentials…**
7. Add your server credentials and click on **Close**. Your server credentials are your Blue Byte Systems account credentials.

To update an add-in:

1. Right-click on the add-in and click on **Update add-ins…**
2. This will show the main dialog of the add-in where you can select from the dropdown list the program you would like to install.
3. Click on the **Install** button to install the selected add-in.
4. The process might take a few moments, so please wait.
5. You will be prompted at the end to restart your PDM session. This allows your local client to get the new version of the installed add-in.

<p align="center">
  <video src="../images/preview.mp4" controls type="video/mp4" width="800"/>
</p>


# Warnings

>[!Warning]
> You must backup your tasks. The auto-updater does not update your existing tasks or permit the add-in the *Task Host Configuration*.


>[!Warning]
> All client computers using the add-in's tasks must be restarted to use the new version.


