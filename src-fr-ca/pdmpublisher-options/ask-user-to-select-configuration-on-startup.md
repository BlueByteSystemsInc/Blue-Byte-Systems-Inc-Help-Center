---
title: "Demander à l'utilisateur de sélectionner la configuration sur les options de lancement des tâches PDMPublisher"
description: "Demander aux utilisateurs de choisir une configuration avant de publier."
ms.date: 08/09/2026
ms.topic: reference
---

# Demander à l'utilisateur de sélectionner la configuration lors du lancement des tâches

![Demander à l'utilisateur de sélectionner le paramètre de configuration](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-006-property-ask-user-to-select-configuration-on-startup.png)
Demande à l'utilisateur de choisir une configuration lors du lancement de la tâche.

![Demander à l'utilisateur de sélectionner la boîte de dialogue de configuration](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/ask-user-specify-configuration-dialog.png)
Utilisez ceci pour des cas simples où l'utilisateur n'a besoin que de choisir une configuration et un multiplicateur de quantité sur la machine qui a lancé la tâche.

- **Configuration** sélectionne la configuration du modèle à exporter.
- La configuration sélectionnée est utilisée pour l'exportation, les valeurs variables et le nommage de fichier.
- **Custom Quantity Multiplier** multiplie le détenteur de place `(BOMQuantity)`.
- Exemple : si `(BOMQuantity)` est `2` et que le multiplicateur est `3`, la tâche utilise `6`.
- Lorsque le suivi des activités est activé, le journal note qu'un multiplicateur de quantité personnalisé a été utilisé.
- Sélectionnez `OK` pour continuer ou `Cancel` pour arrêter avant la publication.

> [!NOTE]
> [Demander à l'utilisateur de spécifier des fichiers sur le lancement des tâches](ask-user-to-specify-files-on-task-launch.md) remplace cette option parce qu'elle contrôle les fichiers, les configurations, les formats et l'emplacement d'exportation.
