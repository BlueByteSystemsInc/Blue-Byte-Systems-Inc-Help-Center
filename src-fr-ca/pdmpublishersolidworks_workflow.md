---
title: "Flux de travail et résultats d'édition PDMPublisher pour SOLIDWORKS"
description: "Suivez un travail PDMPublisher depuis la préparation du document jusqu'à l'examen, l'exportation, l'enregistrement et le dépannage."
ms.date: 09/16/2026
ms.topic: how-to
---

# Flux de travail et résultats de la publication

Utilisez cette séquence pour un travail PDMPublisher répétable pour SOLIDWORKS.

<a id="1-prepare-the-document"></a>
## 1. Préparer le document

1. Ouvrez et enregistrez la partie source, l'assemblage ou le dessin.
2. Résoudre les références supprimées, légères, manquantes ou périmées comme le requiert le workflow.
3. Activez la configuration et les feuilles de dessin que vous voulez évaluer.
4. Confirmez que tout profil PDM-aware utilise le coffre-fort locale prévue.

<a id="2-select-and-review-the-profile"></a>
## 2. Sélectionnez et examinez le profil

Choisissez le profil nommé dans la flèche à côté de **Publish**.

![Publier le menu de sélection de profil](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)
Consultez l'emplacement d'exportation, le nom du fichier, les formats, le mode feuille, les références, les configurations, les annotations et les conditions. Activez **Show dialog before processing** lorsqu'un opérateur doit confirmer la tâche résolue avant l'écriture des fichiers.

<a id="3-review-assembly-selection"></a>
## 3. Examen de la sélection de l'assemblée

PDMPublisher énumère les références qui ont fait l'objet d'une évaluation. Effacer un fichier pour l'omettre de cette course. Confirmer de poursuivre, ou annuler d'arrêter le traitement avant l'exportation.

![Revoir les fichiers à publier après évaluation des conditions](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-condition-review-20260916.png)
La sélection de l'examen n'affecte que la course actuelle. Il ne réécrit pas l'arbre de profil ou de condition.

<a id="4-process-outputs"></a>
## 4. Produits du processus

Pendant le traitement, PDMPublisher résout les détenteurs de place pour chaque document source et configuration, crée les dossiers requis, invoque l'exportateur SOLIDWORKS correspondant, applique des annotations ou des opérations PDF, et crée en option une archive.

Ne fermez pas SOLIDWORKS, ne modifiez pas le document actif ou ne modifiez pas les fichiers référencés pendant l'exécution de la tâche.

<a id="5-interpret-the-result"></a>
## 5. Interpréter le résultat

| Résultat | Signification | Action suivante |
| --- | --- | --- |
| Achevé | Le produit demandé a été produit. | Inspectez la destination et vérifiez les fichiers. |
| Avertissement | Le traitement s'est poursuivi, mais il y a eu un repli ou un problème non fatal. | Lisez les entrées précédentes et vérifiez le fichier touché. |
| Échec | Une condition, une combinaison source/format non pris en charge, une entrée manquante ou un choix d'opérateur excluaient l'élément. | Confirmez que le skip était prévu. |
| Erreur | L'article n'a pas pu être exporté ou un step nécessaire après le traitement a échoué. | Enregistrez le journal, corrigez la cause et réexécutez un travail contrôlé. |
| Annulé | L'opérateur a annulé un examen ou un travail en cours. | Vérifiez la destination; les fichiers complétés avant l'annulation peuvent rester. |

<a id="6-review-and-preserve-the-log"></a>
## 6. Examiner et conserver le registre

Ouvrez **PDMPublisher > Logs**. Filtrer par **Errors**, **Warnings**, **Completed**, **Processing** ou **Skipped**, puis inspecter les messages immédiatement avant le résultat.

![Contrôles du journal de publication](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)
Utilisez **Save...** pour le journal de session complet ou **Copy selected** pour un extrait ciblé. Inclure le nom du profil, le nom du fichier source, la sortie prévue et le journal enregistré lors de la communication avec le support.

> [!IMPORTANT]
> Annulation ne retourne pas les fichiers déjà exportés. Inspectez le dossier de sortie avant de recommencer afin qu'un résultat partiel antérieur ne soit pas confondu avec le nouveau travail.
