---
title: "Demandez à l'utilisateur de spécifier des fichiers sur les options de lancement de tâches PDMPublisher"
description: "Demander aux utilisateurs de sélectionner des fichiers et des formats lorsque la publication commence."
ms.date: 08/09/2026
ms.topic: reference
---

# Demander à l'utilisateur de spécifier les fichiers lors du lancement des tâches

![Demander à l'utilisateur de spécifier le réglage des fichiers](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-007-property-ask-user-to-specify-files-on-task-launch.png)
Lorsque cette option est activée, PDMPublisher affiche une boîte de dialogue de sélection de fichiers lors du lancement des tâches. L'utilisateur peut choisir les fichiers à exporter, les configurations à traiter, les formats à créer, et où la sortie doit aller sur la machine qui a lancé la tâche.

![Demander à l'utilisateur de spécifier la boîte de dialogue de fichiers](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/ask-user-specify-files-dialog.png)
Utilisez cette option lorsque la personne qui lance la tâche doit pouvoir choisir les fichiers, les configurations, les formats et l'emplacement d'exportation au lieu d'utiliser seulement la configuration de tâche fixe de l'outil d'administration PDM SOLIDWORKS.

<a id="add-files"></a>
## Ajouter des fichiers

Sélectionnez **Add** pour ajouter manuellement des fichiers lors du lancement des tâches. Ceci est utile lorsque l'utilisateur sait exactement quel assemblage, partie, dessin ou document doit être exporté.

Après le complément d'un fichier, il apparaît dans la liste de fichiers avec une case à cocher. Les fichiers vérifiés sont inclus lorsque la publication commence. Les fichiers non vérifiés restent visibles dans la boîte de dialogue mais sont ignorés lorsque l'utilisateur sélectionne **OK**.

<a id="import-from-csv"></a>
## Importation à partir de CSV

Sélectionnez **From CSV** pour ajouter plusieurs fichiers d'une liste CSV. Ceci est utile pour les lots répétables, les paquets de libération ou les listes générées à partir d'un autre système.

Les fichiers du CSV doivent être résolus par l'utilisateur dans le coffre-fort ou le cache local. Après importation, l'utilisateur peut encore consulter la liste, effacer les cases à cocher pour les fichiers qui devraient être ignorés, et ajuster les choix de configuration ou de format avant la publication.

<a id="file-list"></a>
## Liste de fichiers

Le côté gauche de la boîte de dialogue affiche les fichiers qui seront considérés pour l'exportation.

| Colonne | Ce que cela signifie |
| --- | --- |
| **File Name** | Le fichier sélectionné pour l'exportation. Les assemblages peuvent s'étendre pour montrer des pièces et des dessins référencés. |
| **Configuration** | La configuration qui sera traitée pour cette ligne. Les dessins montrent généralement la vue uniquement parce que la feuille de dessin est exportée plutôt qu'une configuration de modèle. |
| **Found In** | Le coffre-fort ou le dossier cache local où PDMPublisher a trouvé le fichier. |

Les assemblages peuvent être élargis afin que les utilisateurs puissent inclure ou exclure des composants référencés. Lorsque la recherche de dessin est activée, les dessins associés peuvent apparaître sous le fichier modèle afin que l'utilisateur puisse décider si le dessin doit également être exporté.

<a id="selected-file-details"></a>
## Détails du fichier sélectionné

Le côté droit de la boîte de dialogue change en fonction de la ligne sélectionnée.

Le nom et le chemin du fichier en haut confirment quel fichier est actuellement sélectionné. Cela aide les utilisateurs à vérifier qu'ils éditent le bon fichier, surtout lorsque plusieurs fichiers ont des noms similaires.

La liste **Configuration** contrôle la configuration utilisée pour le fichier sélectionné. Les utilisateurs peuvent choisir une configuration différente par fichier lorsque la tâche doit publier plusieurs variantes.

La liste de contrôle **File Formats** contrôle les formats de sortie du fichier sélectionné. Par exemple, un dessin peut être exporté vers PDF, DWG ou DXF, alors qu'une partie ou un ensemble peut être exporté vers STEP, STL, eDrawings ou un autre format de modèle pris en charge. Voir [Formats de fichiers](file-formats.md) pour un comportement spécifique au format.

<a id="export-location"></a>
## Lieu d'exportation

L'emplacement d'exportation au bas montre le tracé de sortie sélectionné lors du lancement de la tâche. Il peut inclure des placeholders tels que `(FileFolder)` donc les fichiers exportés sont placés par rapport au fichier source.

Par exemple:

```text
(FileFolder)\Sheet\Export
```

Cela place les fichiers exportés dans un dossier `Sheet\Export` sous le dossier du fichier sélectionné.

Le chemin d'exportation peut utiliser les mêmes règles de placeholder que l'option de tâche principale. Voir [Export Location](export-location.md) pour des exemples de placeholder, des chemins du coffre-fort, des chemins de réseau et des redéfinitions spécifiques à l'extension.

<a id="administration-message"></a>
## Message d'administration

Le message jaune explique que l'administrateur peut toujours contrôler comment les exportations de STEP, PDF et eDrawings sont configurées à partir de l'outil d'administration PDM SOLIDWORKS.

Cette boîte de dialogue ne remplace pas les paramètres de l'administrateur. Il donne à l'utilisateur une façon contrôlée de choisir les fichiers, les configurations, les formats et l'emplacement de sortie sur la machine qui a lancé la tâche.

<a id="start-or-cancel"></a>
## Démarrer ou annuler

Sélectionnez **OK** pour commencer à publier avec les fichiers, configurations, formats et emplacement d'exportation sélectionnés.

Sélectionnez **Cancel** pour fermer la boîte de dialogue sans exécuter la tâche.

Pour les workflows entièrement automatisés, laissez cette option désactivée et configurez les paramètres des tâches directement dans l'outil d'administration.
