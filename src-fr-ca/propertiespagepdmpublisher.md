---
title: "Création d'une nouvelle tâche PDMPublisher"
description: "Créez votre première tâche PDMPublisher dans SOLIDWORKS PDM Administration."
ms.date: 08/09/2026
ms.topic: conceptual
---

# Configurez votre première tâche PDMPublisher

<p class="bbs-read-time">Heure de lecture: 2 minutes</p>

> [!NOTE]
> Avant de créer une tâche, assurez-vous :
> - **PDMPublisher** a été ajouté à votre coffre.
> - Vous avez activé votre licence. Voir [licenciement](licensespdmpublisher.md).
>
> Après avoir validé la licence et avant d'enregistrer votre première tâche, examinez ces paramètres importants:
> - Sélectionnez le bon [template] (pdmpublisher-options/template.md). Ceci est critique lorsque PDMPublisher doit calculer des références, des configurations ou des quantités d'assemblage.
> - Confirmer [Utilisez cette version de SOLIDWORKS](pdmpublisher-options/use-this-version-of-solidworks.md) indique une version SOLIDWORKS installée sur l'ordinateur hôte des tâches.
> - Définir un [lieu d'exportation] valide(pdmpublisher-options/export-location.md) et [nom du fichier](pdmpublisher-options/filename.md). Évitez les contre-slashs dans les chemins d'exportation, et utilisez les noms de fichiers comme la révision, la configuration ou le nom de feuille quand un fichier source peut créer plusieurs sorties.
> - Si vous avez besoin d'enregistrements de dépannage, activez [Logs d'activités par défaut](pdmpublisher-options/turn-on-activity-tracking.md) et définissez [Log dossier (Vault Only)](pdmpublisher-options/log-folder-vault-only.md) sur `(VaultRootFolder)\Logs\PDMPublisher`. Créez ce dossier manuellement et assurez-vous que l'utilisateur exécutant la tâche, ou le compte hôte de tâche, peut y ajouter des fichiers journaux.

<a id="create-the-task"></a>
## Créer la tâche

1. Ouvrez l'outil d'administration PDM SOLIDWORKS.

2. Faites un clic droit sur **Tasks**, puis sélectionnez **New Task...**.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublishernewtask.png" alt="Create a new tâche PDM" width="300">
</p>

3. Saisissez un nom unique pour la tâche. Utilisez un nom qui décrit clairement ce que la tâche exporte, puis examinez les notes ci-dessus avant d'économiser.

4. Sur la page **Add-in**, choisissez **PDMPublisher** dans le menu déroulant **Add-in**.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-addin.png" alt="PDMPublisher selected as the task add-in" width="800">
</p>

5. Cliquez sur **Next**.

6. Sur la page **Execution Method**, choisissez quels ordinateurs sont autorisés à exécuter la tâche.

Cette page vient après la sélection complément. Seuls les ordinateurs vérifiés dans cette liste sont considérés comme des machines d'exécution des tâches.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-execution-method.png" alt="PDMPublisher task execution method" width="800">
</p>

Si la liste des ordinateurs est vide, faites un clic droit sur l'icône SOLIDWORKS PDM dans le plateau Windows et ouvrez **Task Host Configuration**.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmicontry.png" alt="SOLIDWORKS PDM tray icon" width="300">
</p>

7. Dans **Task Host Configuration**, autorisez **PDMPublisher** sur l'ordinateur hôte des tâches.

<p align="center">
<img src="https://pdmpublisher.com/help/images/taskhostconfiguration.png" alt="Permit PDMPublisher in Task Host Configuration" width="800">
</p>

8. Configurez la page **Scheduling** si SOLIDWORKS PDM doit lancer cette tâche automatiquement. Voir [Items programmés](scheduleditems.md) lorsque la tâche programmée doit traiter une liste de fichiers sauvegardés.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduling.png" alt="SOLIDWORKS tâche PDM scheduling page" width="800">
</p>

Scheduling est le propre cadre de programmation de SOLIDWORKS PDM. Il contrôle quand la tâche commence.

9. Consultez les pages de configuration PDMPublisher énumérées ci-dessous.

10. Cliquez sur **OK** pour enregistrer la tâche.

La tâche apparaît dans l'Explorateur de fichiers sous **Tasks** dans le menu à clic droit.

Si le menu **Tasks** n'apparaît pas, voir [Pourquoi le menu Tâches manque-t-il?](pdmpublisher-task-menu-missing.md).

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublishertaskrmb.png" alt="PDMPublisher task in the File Explorer right-click menu" width="800">
</p>

<a id="setup-pages"></a>
## Configuration des pages

Utilisez ces pages pour configurer ce que PDMPublisher exporte et comment il gère chaque fichier.

| onglet | Utilisez cette page pour |
| --- | --- |
| [Options](options.md) | Configurez les formats de fichiers, les chemins de sortie, les noms de fichiers, la version SOLIDWORKS, les modèles, les journaux et autres comportements d'exportation. |
| [Annotations](annotations.md) | Ajoutez des notes ou des filigranes qui peuvent inclure des variables de texte fixe, PDM et des propriétés SOLIDWORKS. |
| [Conditions](conditions.md) | Décider quels fichiers référencés doivent être inclus lors du traitement des assemblages. |
| [Articles programmés](scheduleditems.md) | Définir les fichiers qui doivent être traités lorsque la tâche s'exécute sans les fichiers sélectionnés. |

<a id="options"></a>
### Options

![Page de configuration des options PDMPublisher](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-options.png)
Examinez les éléments de configuration recommandés dans [Options Task Page](options.md), en particulier l'emplacement d'exportation, le nom de fichier, les formats de fichier, la version SOLIDWORKS, le modèle et le suivi des activités.

<a id="annotations"></a>
### Annotations

![Page de configuration des annotations PDMPublisher](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-annotations.png)
La table d'annotation est l'espace de travail où vous créez et gérez des notes ou des filigranes qui seront placés sur les PDF exportés. Chaque annotation peut avoir son propre texte, formatage, position, règle de feuille, et état actif.

<a id="conditions"></a>
### Conditions

![Page de configuration des conditions PDMPublisher](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-conditions.png)
Utilisez des conditions pour contrôler quels fichiers référencés sont traités lors de la publication des assemblages.

<a id="scheduled-items"></a>
### Éléments prévus

![Page de configuration des éléments programmés PDMPublisher](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduled-items.png)
Utilisez des éléments programmés lorsque cette tâche doit toujours traiter une liste de fichiers enregistrés. Les articles programmés remplacent les autres fichiers sélectionnés.
