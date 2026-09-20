---
title: "Conditions PDMPublisher pour SOLIDWORKS"
description: "Trouvez la documentation ciblée pour établir, évaluer, examiner, importer et exporter les règles relatives aux conditions."
ms.date: 09/15/2026
ms.topic: how-to
---

# Conditions de publication

Les conditions déterminent quels fichiers de montage sont inclus dans un travail de publication. Le [profil](pdmpublishersolidworks_profiles.md) sélectionné stocke l'arborescence des conditions.

> [!IMPORTANT]
> Activer [Exporter des références Individuellement](pdmpublisher-options/export-references-individually.md) lorsque les conditions doivent filtrer l'ensemble actif et ses fichiers référencés.

Sélectionnez **PDMPublisher > Conditions** pour modifier le profil actif Publier, ou utilisez la flèche de commande pour ouvrir un profil nommé. Utilisez les pages ciblées sous **Publishing Conditions** dans le TOC :

![Choisissez le profil Publier dont vous souhaitez modifier les conditions](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/conditions-profile-menu-20260908.png)
![Éditeur de conditions et ses commandes](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/conditions-editor-controls-20260908.png)
<a id="condition-editor-controls"></a>
## Contrôles de l'éditeur d'état

| Contrôle | Ce qu'il fait |
| --- | --- |
| Activer la case à cocher | Active la ligne racine, groupe ou condition. Les éléments handicapés restent dans le profil mais ne sont pas évalués. |
| Flèche d'expansion/d'effondrement | Affiche ou cache les enfants d'un groupe de condition. |
| **AND / OR** | Définit si chaque enfant doit passer (**AND**) ou si un enfant peut passer (**OR**). |
| **+ (AND/OR)** | Ajoute un groupe de condition imbriquée. |
| **+ (Condition)** | Ajoute une ligne d'état au groupe sélectionné. |
| **Variable** | Sélectionne la propriété, la valeur de fichier ou la variable spéciale à évaluer. |
| **Comparison** | Sélectionne le test appliqué à la variable. Une nouvelle ligne reste **Undefined** jusqu'à ce qu'une comparaison soit choisie. |
| **Value** | Fournit la valeur de comparaison. |
| **Configuration** | Limite l'évaluation des propriétés à la configuration SOLIDWORKS, le cas échéant. |
| Supprimer (×) | Supprime le groupe ou la condition correspondant. |
| **OK** / **Cancel** | Enregistre l'arborescence ou ferme l'éditeur sans l'enregistrer. |

Construire à partir de la racine vers le bas. Utilisez des groupes imbriqués quand une partie de la règle a besoin d'un comportement ET/OU différent de son parent.

| Catégorie | Pages |
| --- | --- |
| Règles de construction | [Ajouter des conditions et des groupes](pdmpublisher-conditions/add-conditions-and-groups.md) et [champs de condition](pdmpublisher-conditions/condition-fields.md) |
| Valeurs et comparaisons | [variables spéciales](pdmpublisher-conditions/special-variables.md) et [Types de conditions](pdmpublisher-conditions/condition-types.md) |
| Traitement | [Règles d'évaluation](pdmpublisher-conditions/evaluation-rules.md), [Résultats de l'examen de la condition avant exportation](pdmpublishersolidworks-condition-output.md), et [Conditions d'importation et d'exportation](pdmpublishersolidworks-condition-files.md) |
