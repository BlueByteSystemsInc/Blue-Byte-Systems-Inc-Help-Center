---
title: "Variables spéciales Conditions PDMPublisher"
description: "Variables intégrées disponibles dans des conditions PDMPublisher."
ms.date: 08/09/2026
ms.topic: reference
---

# Variables spéciales

Des variables spéciales permettent de vérifier les informations communes de fichiers sans nécessiter une variable PDM.

Le complément SOLIDWORKS inclut des valeurs intégrées et des propriétés personnalisées disponibles dans le document actif et ses références. La liste déroulante n'indique que les valeurs disponibles dans le contexte actuel du document.

![Choix de la variable de condition dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Dropdown2_Light_100.png)
Les variables spéciales communes comprennent:

- `FileName`
- `FilePath`
- `FolderName`
- `FolderPath`
- `ConfigurationName`

Utilisez-les lorsque la condition dépend des informations de fichier ou de configuration communes. Les valeurs PDM ne sont disponibles que lorsque le complément a un contexte PDM applicable et que la valeur apparaît dans le menu.
