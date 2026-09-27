---
title: "Examen des résultats de la condition avant l'exportation de PDMPublisher pour SOLIDWORKS"
description: "Utilisez la boîte de dialogue de sortie des conditions pour examiner et ajuster les fichiers d'assemblage sélectionnés pour l'exportation."
ms.date: 10/07/2026
ms.topic: how-to
---

# Examen des résultats des conditions avant exportation

Activez **Show conditions output dialog** lorsque vous souhaitez revoir les références de montage après l'évaluation de l'arbre de condition et avant le début de l'exportation.

![Réviser les fichiers et les destinations évaluées avant la publication](/images/pdmpublisher/solidworks/publish-review-20261007.png)
Cette option est activée par défaut. Il s'applique lorsque le document actif est un assemblage, des références sont disponibles et **Export references to file formats individually** est activé.

<a id="what-the-dialog-shows"></a>
## Que montre la boîte de dialogue

La boîte de dialogue liste les fichiers qui ont passé le traitement de condition, y compris les informations disponibles telles que:

- Nom de fichier et dossier source
- Dossier et nom de fichier de destination évalués pour chaque format sélectionné
- Configuration référencée
- Quantité calculée
- Indique si un dessin du même nom a été trouvé
- La raison d'exclusion des dossiers qui n'ont pas réussi

Les rapports sommaires incluaient les dossiers, les dossiers exclus et le nombre qui a passé les conditions.

| Contrôle | Ce qu'il fait |
| --- | --- |
| **Use** | Inclut ou exclut un fichier individuel sans changer l'arborescence des conditions sauvegardées. |
| **Output formats for this run** | Surpasse les formats de sortie sélectionnés pour cette exécution seulement. |
| **Export sheet metal parts to 1:1 flat pattern DXF** | Active la sortie à profil plat DXF pour cette exécution. |
| **Export location** | Affiche le dossier de sortie de base évalué. Le message sous le champ indique si un format sélectionné utilise un emplacement personnalisé. |
| **Edit profile** | Retourne aux paramètres du profil avant publication. |
| **Cancel** | Arrête l'examen sans commencer l'opération de publication. |
| **Publish** | Démarre le traitement des fichiers et formats actuellement sélectionnés. |

La modification des formats actualise l'aperçu **Publish to (folder and filename)**. Les emplacements propres à chaque format sont inclus dans les chemins évalués.

Les fichiers sont sélectionnés par défaut. Effacer un fichier quand il ne doit pas être traité dans cette tâche, puis confirmer le dialogue pour continuer.

L'annulation de la boîte de dialogue annule la tâche de publication avant le début du traitement des fichiers.

Si une tâche est annulée après le début du traitement, les fichiers complétés avant l'annulation peuvent rester dans le dossier de sortie. Voir [Édition du flux de travail et des résultats] (pdmpublishersolidworks_workflow.md#5-interpret-the-result).

> [!NOTE]
> Ce dialogue est un examen final des tâches. Il ne réécrit pas l'arborescence des conditions ou ne modifie pas en permanence le profil sélectionné.

Voir [Règles d'évaluation](pdmpublisher-conditions/evaluation-rules.md) pour savoir comment les références passent ou échouent les conditions configurées.
