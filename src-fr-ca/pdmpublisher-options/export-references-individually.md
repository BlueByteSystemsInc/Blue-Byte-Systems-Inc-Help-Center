---
title: "Exporter des références vers des formats de fichiers individuellement"
description: "Exporter les documents référencés comme fichiers de sortie autonomes."
ms.date: 08/09/2026
ms.topic: reference
---

# Exporter des références aux formats de fichiers individuellement

![Exporter les références individuellement dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox3_Export_references_to_file_formats_individually_Light_100.png)
Exporte les composants référencés comme leurs propres fichiers dans les formats sélectionnés.

> [!NOTE]
> Ce réglage est partagé par les **tâche PDM** et **SOLIDWORKS add-in**, mais les deux produits obtiennent leurs références de montage différemment.

Dans la pratique, cela est utilisé lorsqu'un ensemble publie devrait également créer des sorties pour les composants de cet ensemble. Il est le plus utile pour les assemblages avec des composants répétés, des configurations multiples ou des références imbriquées.

<a id="requirements-by-product"></a>
## Exigences par produit

| Produit | Exigences |
| --- | --- |
| **tâche PDM** | Exécutez la tâche sur un ensemble et sélectionnez un BOM [Template](template.md) avec le nom, la configuration et les colonnes de quantité requis. |
| **SOLIDWORKS add-in** | Ouvrez l'assemblage dans SOLIDWORKS. L'complément lit les références d'assemblage résolues directement et ne nécessite pas le réglage de la tâche PDM BOM Template. |

Dans les deux produits, les composants supprimés, non résolus, exclus ou filtrés sous condition peuvent modifier l'ensemble de références traitées.

<a id="bom-template"></a>
## Modèle BOM

> [!IMPORTANT]
> Pour le **tâche PDM**, il est essentiel de configurer l'option PDMPublisher [Template](template.md) avant d'activer ce paramètre. Si le modèle n'est pas sélectionné ou s'il n'inclut pas le nom, la configuration et les colonnes de quantité requis, PDMPublisher peut exporter des fichiers de référence manquants ou incorrects. Cette exigence ne s'applique pas à l'additif SOLIDWORKS.

La tâche PDM peut en option utiliser la première BOM nommée sauvegardée sur le dessin d'assemblage associé. Voir [Utilisez BOM Drawing-Derved] (use-drawing-derived-bom.md). Le modèle configuré reste requis comme un retour en arrière.

Pour les exigences de configuration des modèles, voir [Template](template.md).

> [!NOTE]
> Ce réglage est indépendant de la fusion PDF et de l'archivage ZIP.
