---
title: RevisionSync Add-in Settings | SOLIDWORKS PDM
description: Overview of the available configuration settings for the RevisionSync add-in by Blue Byte Systems Inc.
---

# RevisionSync Settings

RevisionSync is a SOLIDWORKS PDM add-in that synchronizes revisions and data card variables between drawings and documents.

## Accessing the Settings

To configure the add-in:
1. Right-click on `RevisionSync` under *Add-ins* in the **Administration Tool**.

   ![revisionsyncrmb](/images/revisionsyncrmb.png)

2. Choose from the available options:
    - **Workflow Transitions...**: This option allows you to cancel transitions if the file revisions do not match. In the workflow transition window, you can specify which transitions the add-in should monitor:
     ![revisionsynctransition](/images/revisionsynctransition.png)

    - **Manage License...**: Activate, deactivate your license.

    - **General Settings...**: Configure how the add-in behaves, set the revision variable, and adjust other settings (see below for details).

    - **Data Card Variable Sync Settings...**: Specify which variables should sync from the part or assembly to the drawing:
    ![revisiondatacardsettings](/images/revisiondatacardsettings.png)
   

>[!WARNING]
> You must activate your license from *Manage License...* command before starting to use RevisionSync.

>[!NOTE]
> Start by configuring the add-in from **General Settings**.


---

## General Settings Overview


![Settings](/images/revisionsyncconfig.png)


### Sync Mode

| Option | Description |
|--------|-------------|
| `SyncDrawingToDocument` | The **drawing** will be updated to match the revision of the **document**. This is the most common use case when the drawing is behind. |
| `SyncDocumentToDrawing` | The **document** will be updated to match the revision of the **drawing**. Use this if the document is behind. |

> **Note:** The selected sync mode will control the direction in which the revision is enforced.

---

### Task Settings

- **Sync revision when used as a task**:  
  Enables revision synchronization when the add-in is executed as a task.

- **Sync variables when used as a task**:  
  Controls whether variable values are synchronized when run as a task. Set to `True` to enable.

---

### Variable Settings

- **Revision**:  
  Specifies the variable name used for the revision (e.g., `Revision`).

>[!WARNING]
> **You must set this**.


- **Update revision variable**:  
  When set to `True`, the revision variable will be updated during sync.

>[!WARNING]
> This will perform a checkout and checkin operation. Please make sure the user running the add-in has the right-permissions.

---

### Workflow Settings

- **Enable transition watching**:  
  When set to `True`, the add-in will listen for file workflow transitions and automatically **only allow files with matching revisions through**.

---


## How do I trigger RevisionSync

-**Manually:** From the right-click menu, go to **Blue Byte Systems**, and select **Sync data card variables...**.

![data card sync](/images/datacardsync.png) 


    You can: 
    * Sync revisions: Copy the revision from/to the drawing (depending on the sync direction).
    * Sync datacard: Push selected variables from model to drawing datacard.

- **Automated action from workflow transition**: Trigger **RevisionSync** by creating a **task** from the task list. You can control the behavior of the task from the **General Settings**.

    