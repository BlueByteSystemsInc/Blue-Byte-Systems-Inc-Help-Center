---
title: "Articles programmés Page des tâches PDMPublisher"
description: "Découvrez comment utiliser la page de configuration des tâches des éléments programmés dans PDMPublisher pour définir les fichiers qui devraient être traités lorsqu'une tâche s'exécute sans les fichiers sélectionnés."
ms.date: 06/21/2026
ms.topic: conceptual
---
# Page de tâche des éléments prévus

La page **Scheduled Items** permet aux administrateurs de définir les fichiers que PDMPublisher doit traiter lorsque la tâche démarre.

Ceci est utile pour les tâches programmées et les lancements automatisés de tâches où SOLIDWORKS PDM ne fournit pas une sélection de fichiers à la tâche.

![Page de configuration des éléments programmés](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduled-items.png)
L'agenda lui-même est géré par le propre cadre de programmation de SOLIDWORKS PDM. La page **Scheduling** contrôle quand la tâche commence. La page **Scheduled Items** contrôle les fichiers enregistrés PDMPublisher lorsque cette tâche programmée commence.

![SOLIDWORKS Page de programmation PDM](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduling.png)
<a id="when-to-use-this-page"></a>
## Quand utiliser cette page

Utilisez **Scheduled Items** lorsque la tâche doit être exécutée sur un calendrier ou à partir d'une automatisation qui ne passe pas les fichiers sélectionnés à PDMPublisher.

Si les fichiers sont configurés sur cette page, PDMPublisher utilise la liste des éléments programmés comme entrée de tâche.

> [!IMPORTANT]
> Les articles programmés remplacent toutes les autres sélections de fichiers. Si cette page contient des fichiers, PDMPublisher traite les fichiers listés ici et ignore les fichiers sélectionnés dans le menu de clic droit **Tasks**, les fichiers sélectionnés lors du lancement des tâches ou les fichiers passés par une autre méthode de lancement. Configurez uniquement les éléments programmés pour les tâches qui devraient toujours traiter la même liste de fichiers enregistrés.

<a id="adding-files"></a>
## Ajout de fichiers

Cliquez sur **Add** pour choisir un ou plusieurs fichiers SOLIDWORKS dans le coffre-fort.

PDMPublisher stocke l'ID de fichier sélectionné et l'ID de dossier parent. Ces ID sont utilisés plus tard pour reconstruire la liste d'entrée des tâches lorsque la tâche programmée s'exécute.

Le tableau affiche :

|Colonne|Désignation des marchandises|
|:---|:---|
|Nom du fichier|Le nom du fichier sélectionné.|
|Trouvé dans|Le dossier du coffre-fort où le fichier a été sélectionné.|

<a id="removing-files"></a>
## Suppression des fichiers

Sélectionnez une ou plusieurs lignes et cliquez sur **Remove** pour les supprimer de la liste des articles programmés.

<a id="important-notes"></a>
## Notes importantes

- Les fichiers sélectionnés doivent rester disponibles dans le coffre.
- L'hôte de tâches doit avoir la permission d'accéder aux fichiers sélectionnés et à leurs dossiers.
- La tâche utilise toujours les paramètres des autres pages de configuration, y compris **Options**, **Annotations** et **Conditions**.
- Si cette page contient des fichiers, ces fichiers sont utilisés même lorsque la tâche est lancée à partir d'un fichier sélectionné dans File Explorer.
- Si cette page contient des fichiers, ces fichiers sont également utilisés lorsque la tâche commence à partir de la planification PDM SOLIDWORKS.
- Si aucun fichier n'est sélectionné au lancement et qu'aucun élément programmé n'est configuré, la tâche s'arrêtera avec une erreur.

<a id="selecting-files-at-task-launch"></a>
## Sélection des fichiers au lancement de la tâche

La version **2026.06.21** ajoute une boîte de dialogue de sélection interactive des fichiers pour les tâches configurées afin de demander à l'utilisateur quels fichiers traiter au lancement.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher_task_launch_selection.png" alt="PDMPublisher task launch file selection dialog" width="900">
</p>

La boîte de dialogue permet à l'utilisateur :

- Ajoutez des fichiers de la chambre forte.
- Importer les noms de fichiers à partir d'un fichier CSV.
- Réviser les références de montage calculées automatiquement.
- Voir les dessins connexes sous forme de lignes pour enfants.
- Choisissez des formats de fichiers spécifiques au lancement pour l'exécution des tâches.
- Examiner l'emplacement d'exportation configuré avant de commencer la tâche.

L'avertissement en haut rappelle aux utilisateurs que le comportement d'exportation des tâches est configuré par un administrateur dans l'outil d'administration PDM SOLIDWORKS.

<a id="csv-import"></a>
### Importation de CSV

Cliquez sur **From CSV** pour importer des fichiers depuis une liste de fichiers séparés par des virgules.

PDMPublisher lit les noms de fichiers d'une colonne de fichiers reconnue comme `filename`, `file`, `filepath` ou `path`. Si aucun en-tête reconnu n'est trouvé, PDMPublisher scanne chaque ligne pour le premier nom de fichier utilisable. Les chemins complets sont pris en charge car seul le nom du fichier est utilisé pour la recherche dans la chambre forte.

Pour chaque ligne importée, PDMPublisher recherche le coffre-fort et utilise le premier résultat correspondant. Les fichiers dupliqués déjà affichés dans la boîte de dialogue sont ignorés.

<a id="drawing-rows"></a>
### Lignes de dessin

Lorsqu'une partie ou un ensemble référencé a un dessin associé, le dessin est indiqué sous ce point pour examen. Les lignes de dessin marquées **View only** ne sont pas passées à la liste d'entrée des tâches. Ils ne sont vérifiés que lorsqu'un format de sortie 2D tel que `pdf`, `dwg` ou `dxf` est sélectionné et que le fichier parent est vérifié.
