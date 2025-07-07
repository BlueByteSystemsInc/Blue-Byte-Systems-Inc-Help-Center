---
title: Triggering PDM2Excel from a Workflow Transition | SOLIDWORKS PDM
description: How to configure a workflow transition in SOLIDWORKS PDM to trigger the PDM2Excel export task.
---

## Triggering the PDM2Excel Task from a Workflow Transition

You can configure SOLIDWORKS PDM to automatically trigger the **PDM2Excel** task as part of a workflow transition. This allows you to export a Bill of Materials (BOM) automatically when a file moves to a specific workflow state, such as **Engineering Release**.

The image below shows a configuration example:

![workflow-task-binding](/images/pdm2excelworkflow.png)


- A **Bill Of Materials** task already exists in the **Task List** under the **Tasks** node.
- The workflow transition **"Major Engineering Change"** (from *Engineering Release* to *Dispatch Target 001*) has been configured to **execute a task**.
- In the **Transition Action** tab, the action type is set to `Execute task`, and the **"Bill Of Materials"** task is selected from the dropdown.
- The option **"Run for files"** is enabled, meaning the task will be executed for each file affected by the transition.

### Steps to Set This Up

1. **Create the PDM2Excel Task**  
   Ensure the PDM2Excel task is already created and configured in the Administration tool under **Tasks > Task List**.

2. **Edit the Workflow Transition**
   - Navigate to the workflow you want to modify (e.g., *Engineering*).
   - Double-click the desired transition (e.g., *Major Engineering Change*).

3. **Add an Execute Task Action**
   - Go to the **Actions** tab.
   - Click **Add Action**.
   - Set the **Type** to `Execute task`.
   - Choose **"Run for files"** or the appropriate scope depending on your requirements.
   - Select your task from the **Select task to execute** dropdown (e.g., *Bill Of Materials*).

4. **Save and Apply**
   - Click **OK** to save the transition.
   - Click **Save** to save the workflow.

### Notes

- If you recently updated the PDM2Excel task, you may need to **delete and recreate it** in the Task List to ensure the transition references the latest version.
- Always remember to configure the task's **execution method** after pulling the latest version from source control.
