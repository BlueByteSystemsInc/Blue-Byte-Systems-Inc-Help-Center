---
title: "Rechercher et lire les journaux -PDMPublisher pour SOLIDWORKS"
description: "Filtrer les journaux de tâches PDMPublisher et interpréter les entrées de traitement, de succès, d'avertissement et d'erreur."
ms.date: 08/23/2026
ms.topic: how-to
---

# Recherche et lecture des journaux

La fenêtre **PDMPublisher > Logs** recueille les messages de la session en cours. Les entrées peuvent comprendre le traitement des dossiers, l'évaluation de l'état, les quantités, les feuilles de dessin, les exportations, les avertissements et les échecs.

![PDMPublisher Logs fenêtre filtrée aux erreurs](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)
<a id="search-logs"></a>
## Journaux de recherche

Entrez le texte dans **Find** pour filtrer les entrées affichées lorsque vous tapez. L'appariement n'est pas sensible aux cas. Utilisez le filtre de type adjacent pour afficher les messages **All entries**, **Errors**, **Warnings**, **Completed**, **Processing** ou **Skipped**.

La recherche ne change que ce qui est affiché. Il ne supprime pas les entrées de journal, et [Save...](pdmpublishersolidworks-log-files.md) écrit toujours la collection complète.

Les recherches utiles comprennent un nom de fichier, une extension de sortie, une configuration, `warning`, `failed` ou `saved`.

Activez **Follow newest** tout en surveillant un travail actif. Les compteurs affichés, totaux et sélectionnés indiquent clairement si un filtre de recherche ou de type cache des entrées.

<a id="entry-colors"></a>
## Couleurs d'entrée

| Couleur | Message typique |
| --- | --- |
| Jaune | Début du travail, traitement ou progrès général. |
| Vert | Enregistré, complété, ajouté ou passé step. |
| Rouge clair | Avertissement, échec ou erreurs. |

Lire les entrées autour d'un avertissement ou d'un échec, pas seulement la ligne surlignée. Les messages antérieurs identifient souvent le fichier source, la configuration ou la valeur évaluée qui a mené au résultat.
