---
title: "Profils de publication intégrés | PDMPublisher pour SOLIDWORKS"
description: "Créez un profil PDMPublisher pour SOLIDWORKS à partir d'un profil de départ DXF, PDF et STEP ou STEP fourni."
ms.date: 08/23/2026
ms.topic: how-to
bbsNom du produit: PDMPublisher pour SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Profils de publication intégrés

PDMPublisher fournit des profils de départ pour les flux de publication courants. Ils sont disponibles uniquement dans **PDMPublisher pour SOLIDWORKS**.

![Sélectionneur de profils et commandes de profils](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
## Créer un profil à partir d'un profil intégré

1. Ouvrez **New**.
2. Sélectionnez **New From**.
3. Choisissez un profil fourni.
4. Consultez le nouveau profil, ajustez ses paramètres et sélectionnez **Save**.

Les profils fournis sont :

| Profil | Objectif de départ |
| --- | --- |
| `DXF` | Dessin ou fabrication sortie DXF. |
| `PDF And Step` | Documentation PDF et sortie du modèle STEP. |
| `STEP` | Sortie du modèle STEP. |

> [!IMPORTANT]
> Un profil intégré ne publie pas seul. **New From** crée un profil modifiable à partir de la configuration fournie; ce nouveau profil est utilisé lorsque vous sélectionnez **PUBLISH**.

<a id="customize-the-new-profile"></a>
## Personnaliser le nouveau profil

Les profils intégrés sont des points de départ et non des configurations verrouillées. Examinez ces sections avant de publier :

- [Options](pdmpublishersolidworks_options.md), y compris le lieu d'exportation, le nom du fichier, les formats et le traitement des références
- [Annotations](pdmpublishersolidworks_annotations.md)
- [Conditions](conditions_solidworks.md)

La modification d'un profil créé à partir d'un profil intégré ne change pas la configuration de départ fournie. Vous pouvez créer plusieurs profils à partir du même profil intégré et personnaliser chacun pour un client, un projet ou un ensemble de sorties différent.

Pour la sélection des profils, le renommage, le transfert de fichiers, la suppression et d'autres commandes de profils, voir [Profiles](pdmpublishersolidworks_profiles.md).
