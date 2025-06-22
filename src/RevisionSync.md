---
title: RevisionSync | SOLIDWORKS PDM
description: Getting started with RevisionSnyc, including requirements, installation instructions, and support resources.
---
# RevisionSync

Thank you for choosing **[RevisionSync](https://bluebyte.biz/product/RevisionSync/)**!

RevisionSync is a SOLIDWORKS PDM task add-in that sync **revisions** between your drawings and documents.

## Features

- **Two Sync Directions:**
  - **From Drawing to Document** (`SyncDrawingToDocument`):  
    Most common. Use this when the drawing is outdated. This will increment the document's revision.
  - **From Document to Drawing** (`SyncDocumentToDrawing`):  
    Use this when the document is outdated. This will increment the drawing's revision.

- Sync both the **PDM Revision** and the **PDM Revision Variable** between drawings and documents.

- Sync datacard values from the document to the drawing for *selected variables*.

- Trigger revision or card sync as a **task**, typically during a **workflow transition**.

- **Prevent file transitions** if revisions do not match (acts as a gatekeeper).

## Requirements

The minimum version RevisionSync supports is SOLIDWORKS PDM Professional 2017 SP0.  
> [!Tip]
> We highly recommend you use the latest version of PDM Professional.

## Installation

To install the RevisionSync add-in, you have two options:

1. **[Using CDPDM](/src/updateaddinswithcdpdm.html)**:  
   You can use **[CDPDM](/src/cdpdm.html)** to install the add-in directly from the cloud. This is the recommended method.

2. **[Using the CEX File](/src/installingpdmaddins.html)**:  
   Alternatively, you can download the `.cex` file from the order email you received after purchase. Once downloaded, import the `.cex` file into your vault via the Administration tool to complete the installation. 
   > [!Warning]
   > [Make sure to unblock the downloaded file.](/src/pdmqa.html)

## Settings 

All settings are accessible from the right-click menu on the add-in node in the Administration Tool:

![revisionsyncrmb](/images/revisionsyncrmb.png)


## Support

For additional support, please contact us through the **[contact](https://bluebyte.biz/contact/)** page.
<script
  src='https://cdn.jotfor.ms/agent/embedjs/0196efe63b1f79818c409ffed296766d11af/embed.js?skipWelcome=1&maximizable=1'>
</script>