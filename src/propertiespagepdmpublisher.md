---
title: Creating a new task | PDMPublisher | SOLIDWORKS PDM
description: This section will detail the setup pages that require explanation.
---
# Setting your first task

>[!Note]
> This article *requires* that:
> - **PDMPublisher** has been added to your vault.
> - you can have activated your license. [Follow instructions in this article to do that](../src/licensespdmpublisher.html). 

## Your first task

To create a new task with **PDMPublisher**: 

- Right-click on *Tasks* in the Administration tool and click *New task...*
  <p align="center">
    <img src="../images/pdmpublishernewtask.png"  width="300">
  </p>

- Choose a unique name for the task.
- Choose **PDMPublisher** from the dropdown in the first page of the task setup dialog like below: 
  <p align="center">
    <img src="../images/newtask.png"  width="800">
  </p>

- Configure the *Execution Method* page to allow which computers in your organization's network to run the task. 
  - If the computers list is empty, right-click on the SOLIDWORKS PDM icon in the icon tray to access the *Task Host Configuration*.
    <p align="center">
      <img src="../images/pdmicontry.png"   width="300">
    </p>

  - You must *permit* **PDMPublisher** in the *Task Host Configuration* dialog. 
    <p align="center">
      <img src="../images/taskhostconfiguration.png"   width="800">
    </p>
- Configure the three setup pages:
  - **Options**
  - **Annotations**
  - **Conditions**
- Click OK to save your task. 
- Your task will be accessible from the right-click menu Under *Tasks* in your vault's File Explorer:
  <p align="center">
    <img src="../images/pdmpublishertaskrmb.png" alt="Tabs" width="800">
  </p>

>[!Warning]
> If you **do not see** the *Tasks* menu in File Explorer, it is possible that your PDM user setting have been configured to hide add-ins. You can configure the user settings dialog in the Administration tool:
> <p align="center">
>  <img src="../images/adminsettings.png" alt="Tabs" width="800">
> </p>

---

## Setup Pages

<p align="center">
  <img src="../images/tabs.png" alt="Tabs" width="800">
</p>

|Tab|Description|
|:---|:---|
|[Options](../src/options.html)|Options define how files will be printed. See the options page for more details.|
|[Annotations](../src/annotations.html)|Defines aliased notes that can contain text and datacard variables and define their locations in the drawing.|
|[Conditions](../src/conditions.html)|Defines which files to include in the save queues when processing top-level assemblies.|
