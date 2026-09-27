---
title: "Lancer un travail Publier PDMPublisher pour SOLIDWORKS"
description: "Publier le document SOLIDWORKS actif avec le profil PDMPublisher sélectionné et examiner le journal d'emploi qui en résulte."
ms.date: 10/07/2026
ms.topic: how-to
---

# Lancer un travail de publication

La commande **Publish** traite le document actuellement ouvert dans SOLIDWORKS en utilisant le profil Publier sélectionné.

<a id="before-publishing"></a>
## Avant publication

1. Ouvrez la pièce, l'assemblage ou le dessin au processus.
2. Sélectionnez le bon [profil](pdmpublishersolidworks_profiles.md).
3. Examiner l'emplacement de sortie, le nom du fichier et les formats de fichier.
4. Pour un montage, vérifier si les fichiers référencés, les conditions, les configurations multiples ou les PDF fusionnés doivent être traités.

> [!IMPORTANT]
> Enregistrer le document SOLIDWORKS actif et résoudre ses références avant de publier. Les références manquantes ou non résolues ne peuvent pas être traitées de façon fiable.

<a id="start-the-job"></a>
## Commencez le travail

Sélectionnez **PDMPublisher > Publish** dans le CommandManager. Utilisez la flèche de commande pour publier immédiatement avec un profil nommé, ou ouvrez la commande pour examiner les paramètres d'abord.

![Publier le menu de sélection de profil](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)
La flèche à côté de **Publish** sélectionne le profil Publier utilisé pour le travail. Il ne sélectionne ni n'associe un coffre PDM. Lorsqu'un workflow utilise des valeurs PDM, des numéros de série, un check-in automatique ou des dossiers racine Vault, configurez le coffre partagé sous **PDMPublisher > Settings > PDM**. Voir [Paramètres PDM](pdmpublishersolidworks_pdm-settings.md).

Lorsque [Afficher la boîte de dialogue de sortie des conditions](pdmpublishersolidworks-condition-output.md) est activé pour un assemblage, PDMPublisher affiche les références passées avant le début de l'exportation. Confirmez les fichiers pour continuer ou annuler le travail.

![Réviser les fichiers et leurs chemins de sortie avant la publication](/images/pdmpublisher/solidworks/publish-review-20261007.png)

<a id="review-the-result"></a>
## Examiner le résultat

Après le traitement, utilisez **Publishing results** pour examiner les fichiers générés par document source et configuration, rechercher et filtrer les résultats, ouvrir les destinations ou consulter les détails techniques.

![Résultats de publication regroupés par fichier et configuration](/images/pdmpublisher/solidworks/publishing-results-20261007.png)

Sélectionnez **PDMPublisher > Logs** pour consulter l'historique complet de la session. Utilisez [Enregistrer et effacer les journaux](pdmpublishersolidworks-log-files.md) pour joindre l'enregistrement complet du travail à une demande de soutien.

Voir [Publishing Workflow and Results](pdmpublishersolidworks_workflow.md) pour la séquence complète, y compris l'examen, l'abandon des fichiers, l'annulation et les résultats de dépannage.
