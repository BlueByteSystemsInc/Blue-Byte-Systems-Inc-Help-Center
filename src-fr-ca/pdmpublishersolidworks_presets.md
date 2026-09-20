---
title: "Préréglage PDMPublisher pour SOLIDWORKS"
description: "Créez un profil PDMPublisher pour SOLIDWORKS à partir d'un préréglage DXF, PDF et STEP ou STEP intégré."
ms.date: 08/23/2026
ms.topic: how-to
bbsNom du produit: PDMPublisher pour SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Préréglage

Les préréglages sont des configurations de démarrage intégrées pour des flux de travail de publication communs. Ils sont disponibles uniquement dans **PDMPublisher for SOLIDWORKS**.

![Sélectionneur de profils et commandes de profils](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
<a id="create-a-profile-from-a-preset"></a>
## Créer un profil à partir d'un preset

1. Ouvrez **New**.
2. Sélectionnez **New From**.
3. Choisissez un préréglage fourni.
4. Consultez le nouveau profil, ajustez ses paramètres et sélectionnez **Save**.

Les préréglages fournis sont:

| Préréglage | Objectif de départ |
| --- | --- |
| `DXF` | Dessin ou fabrication sortie DXF. |
| `PDF And Step` | Documentation PDF et sortie du modèle STEP. |
| `STEP` | Sortie du modèle STEP. |

> [!IMPORTANT]
> Un preset ne publie pas seul. **New From** crée un profil à partir du preset; le nouveau profil est la configuration utilisée lorsque vous sélectionnez **PUBLISH**.

<a id="customize-the-new-profile"></a>
## Personnaliser le nouveau profil

Les préréglages sont des points de départ, pas des configurations verrouillées. Examiner ces domaines avant de publier :

- [Options](pdmpublishersolidworks_options.md), y compris le lieu d'exportation, le nom du fichier, les formats et le traitement des références
- [Annotations](pdmpublishersolidworks_annotations.md)
- [Conditions](conditions_solidworks.md)

Modifier un profil créé à partir d'un préréglage ne change pas le préréglage original. Vous pouvez créer plusieurs profils à partir du même préréglage et personnaliser chacun pour un client, un projet ou un paquet de sortie différent.

Pour la sélection des profils, le renommage, le transfert de fichiers, la suppression et d'autres commandes de profils, voir [Profiles](pdmpublishersolidworks_profiles.md).
