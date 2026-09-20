---
title: "Emplacements des fichiers : PDMPublisher pour SOLIDWORKS"
description: "Configurer les dossiers recherchés pour les dessins SOLIDWORKS associés."
ms.date: 09/16/2026
ms.topic: how-to
---

# Emplacements des fichiers

Ouvrez **PDMPublisher > Settings > File Locations** pour définir où PDMPublisher recherche des dessins associés à des pièces et des assemblages.

![Démarche des paramètres de localisation des fichiers](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)
<a id="search-order-and-controls"></a>
## Ordre de recherche et contrôles

| Contrôle | Comportement |
| --- | --- |
| **Add** | Ajoute un dossier à la liste de recherche. |
| **Remove** | Supprime le dossier sélectionné de cette liste sans le supprimer. |
| **Include subfolders** | Recherche sous chaque dossier listé. Activez-le seulement là où la structure du dossier est contrôlée; les grands arbres peuvent ralentir les recherches. |
| **Include SOLIDWORKS File Locations > Referenced Documents folders** | Ajoute les dossiers Documents référencés configurés dans SOLIDWORKS à la recherche. |

PDMPublisher recherche d'abord le dossier du modèle actif, puis les dossiers configurés en ordre de liste. Un dessin n'est inclus que lorsque son nom de fichier correspond à la partie ou au nom de fichier d'assemblage. Gardez la liste étroite et placez les endroits les plus probables en premier.

Ces emplacements aident à localiser un même nom ou un dessin associé; ils ne changent pas les chemins de référence SOLIDWORKS et ne sont pas des destinations d'exportation. Configurer les dossiers de sortie dans [Export Location](pdmpublisher-options/export-location.md).
