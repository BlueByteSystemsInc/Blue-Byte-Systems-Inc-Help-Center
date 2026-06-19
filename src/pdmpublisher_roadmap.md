---
title: PDMPublisher Product Roadmap | Upcoming Features & Planned Enhancements
description: View the PDMPublisher product roadmap with planned features, upcoming enhancements, and future development priorities by quarter.
ms.date: 06/19/2026
ms.topic: conceptual
---

# PDMPublisher Product Roadmap

This page outlines planned features and enhancements for PDMPublisher, the SOLIDWORKS PDM Professional task add-in, and PDMPublisher for SOLIDWORKS, the SOLIDWORKS add-in.

The roadmap is organized by quarter and provides visibility into features currently planned for future releases. Timelines are estimates and may change based on development priorities, customer feedback, testing results, and SOLIDWORKS or SOLIDWORKS PDM compatibility requirements.

> [!NOTE]
> This roadmap is intended to communicate product direction. Features listed here are planned but are not guaranteed until they are officially released and included in the PDMPublisher Changes Log.

> [!TIP]
> To see the list of implemented changes, please click [here](/src/changeslog.html).

## 2026 
---
### 2026 Q2
#### Scheduled Items Task Page
Implemented

**Applies to: PDM Task**

- Added a Scheduled Items setup page for scheduled tasks that need to process configured files when no files are passed in by the PDM task trigger. See details [here](/src/scheduleditems.html).

#### Parasolid Binary Export
Implemented

**Applies to: SOLIDWORKS add-in / PDM Task**

- Added support for exporting Parasolid binary files with the `x_b` extension.

#### Details Page 
Implemented 

**Applies to: PDM Task**

- Added a tab to the details page of the task outlining successful files. See details [here](/src/pdmpublisher_task_details.html).

#### Multi-Body Support
Implemented 

**Applies to: SOLIDWORKS add-in / PDM Task** 

- Planned support for exporting and processing multi-body parts, excluding sheet metal flat patterns.

Target: End of Q2 2026
---
### 2026 Q3
---
#### Presets / Profiles 
**Applies to: SOLIDWORKS add-in**

Planned support for reusable presets or profiles.

This feature will allow users and administrators to save commonly used PDMPublisher settings and apply them quickly instead of manually configuring the same options each time.

Planned areas of focus include:

- Saving export settings as reusable profiles
- Loading existing profiles for common export workflows
- Creating profiles for different departments, customers, projects, or output packages
- Reducing setup time for repeat publishing jobs
- Improving consistency across users and workstations

Target: End of Q3 2026
---
#### Shareable Settings / Profile Sharing by PIN Code 
**Applies to: SOLIDWORKS add-in**

Planned support for sharing PDMPublisher settings or profiles using a PIN code.

This feature is intended to make it easier for teams to distribute approved configurations without manually copying files or recreating settings.

Planned areas of focus include:

- Generating a shareable PIN code for a profile
- Importing shared settings using the PIN code
- Allowing administrators to distribute standard configurations
- Helping users quickly reproduce approved export settings
- Reducing configuration mistakes between users or machines

Target: End of Q3 2026
---
### 2026 Q4
**Applies to: PDM Task**
- Add support for scheduling to process:
  - Selected directory
  - Favorite Search
---
## 2027
---
### 2027 Q1
---
#### Drawing Creator
**Applies to: SOLIDWORKS Add-in**

Planned support for a Drawing Creator feature.

This feature is intended to help automate drawing creation workflows from SOLIDWORKS models, reducing repetitive manual work when generating drawings for parts or assemblies.

Planned areas of focus include:

- Creating drawings from selected models
- Applying predefined drawing templates
- Inserting standard model views
- Setting drawing sheet scale
- Setting drawing sheet margins
- Adding notes to the annotation table
- Updating existing annotation table notes
- Applying standard note formatting and placement rules
- Supporting reusable drawing setup rules
- Preparing drawings for downstream export through PDMPublisher

Target: End of Q1 2027
