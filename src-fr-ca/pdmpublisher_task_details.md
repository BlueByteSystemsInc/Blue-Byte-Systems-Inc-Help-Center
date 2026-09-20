---
title: "Détails de la tâche Enregistrez-vous dans l'onglet PDMPublisher"
description: "Explique l'onglet Détails des tâches Log dans PDMPublisher et comment il lit les informations de fichiers réussies des journaux des tâches."
ms.date: 06/19/2026
ms.topic: conceptual
---

# Onglet Détails de la tâche


L'onglet **Task Details Log** de PDMPublisher fournit un résumé rapide des fichiers qui ont été convertis et sauvegardés avec succès dans SOLIDWORKS PDM.

Cette vue vise à faciliter la confirmation des fichiers de sortie créés par la tâche sans ouvrir manuellement le fichier du journal des tâches.

![PDMPublisher Task Details tab](https://pdmpublisher.com/help/images/detailstab.png)
<a id="what-the-details-tab-shows"></a>
## Ce que l'onglet Détails affiche

L'onglet Détails affiche une table des fichiers réussis trouvés dans le journal des tâches PDMPublisher.

Le tableau peut comprendre:

| Colonne | Désignation des marchandises |
|---|---|
| Timbre | Le moment où le fichier a été enregistré ou enregistré. |
| Fichier de destination | Le fichier de sortie créé par PDMPublisher. |
| Voir | La version PDM du fichier de sortie sauvegardé. |
| Fichier original | Le fichier source utilisé pour créer la sortie. |
| Trouvé dans | Le dossier PDM où le fichier de destination a été enregistré. |

<a id="important-requirements"></a>
## Exigences importantes

L'onglet Détails Log dépend du fichier du journal des tâches.

Pour que l'onglet Détails Log fonctionne correctement :

1. **Logging must be enabled in the PDMPublisher task.**
2. L'utilisateur qui ouvre les détails doit avoir la permission de lire le fichier journal.
3. L'utilisateur doit avoir accès à l'état du flux de travail et au dossier où le fichier journal est stocké.

Si le fichier journal ne peut pas être consulté, l'onglet Détails Log peut ne pas être en mesure d'afficher les fichiers reçus.

> [!IMPORTANT]
> Les fichiers enregistrés à l'extérieur du coffre PDM sont **not tracked** dans l'onglet Détails Log. L'onglet Détails Log ne rapporte que les fichiers enregistrés ou enregistrés dans SOLIDWORKS PDM et enregistrés dans le journal des tâches.




<a id="log-file-permissions"></a>
## Autorisations de fichier journal

PDMPublisher lit le fichier journal des tâches pour construire l'onglet Détails.

Si l'utilisateur n'a pas la permission d'accéder au fichier journal, l'onglet Détails peut afficher un résultat vide ou afficher un avertissement.

Les causes communes comprennent:

- L'utilisateur n'a pas l'autorisation de lire le fichier journal.
- L'utilisateur n'a pas l'autorisation de lire le dossier journal.
- Le dossier est limité par les autorisations de workflow.
- Le fichier est dans un état de flux de travail que l'utilisateur ne peut pas accéder.
- Le fichier journal a été déplacé ou supprimé.
- La référence du journal des tâches n'est plus valide.

<a id="open-log-file"></a>
## Ouvrir un fichier journal

Le bouton **Open Log File** ouvre le fichier original du journal des tâches.

Utilisez cette option lorsque :

- L'onglet Détails n'affiche pas les fichiers attendus.
- Vous voulez revoir la sortie complète de la tâche.
- Vous devez résoudre une tâche échouée ou partiellement terminée.
- Vous voulez confirmer si les fichiers de sortie ont été enregistrés à l'intérieur ou à l'extérieur de PDM.

<a id="help"></a>
## Aide

Le bouton **Help** ouvre cette page de documentation.

<a id="troubleshooting"></a>
## Dépannage

<a id="the-details-tab-is-empty"></a>
### L'onglet Détails est vide

Vérifiez ce qui suit :

- Confirmer que l'enregistrement est activé dans la tâche PDMPublisher.
- Confirmez que la tâche a créé des fichiers dans le coffre PDM.
- Ouvrez le fichier journal et vérifiez si des messages d'enregistrement réussis existent.
- Confirmez que l'utilisateur a lu l'accès au fichier journal et au dossier journal.
- Confirmer que les fichiers de sortie n'ont pas été enregistrés en dehors de PDM.

<a id="the-log-file-cannot-be-opened"></a>
### Le fichier journal ne peut pas être ouvert

Cela signifie généralement que le fichier ne peut pas être trouvé ou que l'utilisateur n'a pas assez de permissions pour y accéder.

Demandez à votre administrateur PDM de vérifier :

- Autorisations du dossier
- Autorisations d'état de flux de travail
- Autorisations de lecture de fichier
- Emplacement du fichier journal
- Indique si le fichier journal existe toujours dans le coffre-fort

<a id="notes"></a>
## Annexe

L'onglet Détails est une présentation du journal des tâches PDMPublisher. Il ne crée pas d'enregistrements de suivi séparés. Si les informations requises ne sont pas disponibles dans le fichier journal, elles ne peuvent pas être affichées dans l'onglet Détails.

