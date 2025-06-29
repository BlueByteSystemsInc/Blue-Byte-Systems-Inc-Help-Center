---
title: Bill Of Materials | PDM2Excel | SOLIDWORKS PDM
description:  Configuring the PDM2Excel Task with the Correct BOM Template
---

# Configuring the PDM2Excel Task with the Correct BOM Template

To ensure the **PDM2Excel** task exports the correct Bill of Materials (BOM), it is critical to configure the task to use the appropriate BOM template. This ensures that the quantity and other key fields are included and accurately represented.

## Step 1: Set the Template in the Task Options

When creating or editing a **PDM2Excel** task in the SOLIDWORKS PDM Administration Tool:

1. Go to the **Tasks** section.
2. Right-click to create a **New task...** or edit an existing task.
3. In the **Options** tab, locate the **Template** dropdown.
4. Select a BOM template. 

    For example: **Engineering BOM**
    ![bomsetting](/images/bomsetting.png)

**Important:** If the correct template is not selected, the exported Excel file may be missing essential fields like quantity, or may include incorrect ones.

## Step 2: Verify the BOM Layout in PDM

In the **SOLIDWORKS PDM Administration Tool**:

1. Expand the **Bills of Materials** section.
2. Open the **BOM** template you previously set in your task.
3. Ensure that the following columns are included:

   - `<Name>`
   - `<Description>`
   - `<Configuration>`
   - `<Part Number>`
   - `Revision`
   - `<Reference Count>` (**REQUIRED**)

The column `<Reference Count>` is essential as it represents the correct BOM quantity based on the number of references.

![bom](/images/bom.png)


**Do not use** discarded or deprecated quantity variables, as they may result in incorrect exports or missing data.


## Support

For help configuring this setup, contact Blue Byte Systems Inc. at: amen@bluebyte.biz