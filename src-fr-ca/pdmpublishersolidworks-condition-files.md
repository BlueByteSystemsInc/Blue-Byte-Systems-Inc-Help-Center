---
title: "Conditions d'importation et d'exportation de PDMPublisher pour SOLIDWORKS"
description: "Exporter un arbre de condition d'un PDMPublisher pour un profil SOLIDWORKS ou des conditions d'importation compatibles."
ms.date: 09/16/2026
ms.topic: how-to
---

# Conditions d'importation et d'exportation

Utilisez **Export...** et **Import...** dans la fenêtre **PDMPublisher > Conditions** pour déplacer les règles d'état séparément du profil complet Publier.

Le format `.edmtdf` est conservé pour être compatible avec les exportations existantes. Traiter l'importation d'une définition de tâche PDM comme un chemin de migration; échanger de nouvelles configurations supplémentaires SOLIDWORKS sous forme de profils Publier ou de paquets de paramètres complets.

![Éditeur des conditions](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/conditions-editor-controls-20260908.png)
<a id="export-conditions"></a>
## Conditions d'exportation

1. Sélectionnez **Export...**.
2. Choisissez un emplacement et un nom de fichier.
3. Enregistrer la configuration de l'état en tant que fichier `.edmtdf`.

Le fichier exporté conserve les groupes de condition, le comportement ET/OU, les champs, les types de comparaison, les valeurs, les configurations et les états activés.

<a id="import-conditions"></a>
## Conditions d'importation

L'élément sélectionné dans les contrôles de l'arbre d'état où les règles importées sont placées:

| Sélection avant importation | Résultat |
| --- | --- |
| Aucun groupe sélectionné | L'arbre de condition racinaire importé remplace l'arbre racinaire actuel. |
| Un groupe d'état sélectionné | Les éléments de racine importés sont ajoutés en tant qu'enfants du groupe sélectionné. |
| Une ligne de condition sélectionnée | L'importation est arrêtée. Sélectionner un groupe ou effacer la sélection en premier. |

Après l'importation, examinez les relations de groupe et testez les règles avant de publier.

> [!IMPORTANT]
> Exportez les conditions actuelles ou le profil complet avant de remplacer l'arbre racine lorsque les règles existantes peuvent être nécessaires plus tard.

Pour une sauvegarde qui inclut également Options et Annotations, utilisez [Déplacer les profils entre ordinateurs] (pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
