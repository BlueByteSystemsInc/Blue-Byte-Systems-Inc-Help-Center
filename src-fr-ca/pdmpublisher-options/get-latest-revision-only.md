---
title: "Obtenez la dernière révision seulement."
description: "Publier la plus récente révision PDM enregistrée et les références enregistrées avec cette révision au lieu de versions de travail en cours non révisées."
ms.date: 09/08/2026
ms.topic: reference
---

# Obtenez la dernière révision seulement

![Obtenez la dernière révision seulement](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-property-get-latest-revision-only.png)
Utilisez **Get latest revision only** lorsqu'une tâche doit publier la plus récente révision PDM enregistrée au lieu de la plus récente version cochée.

Une fois activé, PDMPublisher :

- Recherche la plus récente révision créée dans l'historique PDM du fichier.
- Récupère la version de fichier exacte associée à cette révision.
- Récupère les références comme elles ont été enregistrées avec cette version.
- Écrire le nom de la révision sélectionnée et le numéro de version PDM dans le journal des tâches.

<a id="example"></a>
## Exemple

Supposons qu'un assemblage ait une révision `B` à la version PDM `12`, mais les versions `13` à travers `15` contiennent des travaux non révisés en cours.

| Réglage | Version utilisée par la tâche |
| --- | --- |
| **Get latest revision only** activé | Version `12`, y compris les références enregistrées avec la révision `B` |
| [Travailler avec la dernière version](work-with-latest-version.md) activé | Version `15` |

> [!IMPORTANT]
> **Get latest revision only** remplace **Work with latest version**. Un fichier sans révision PDM enregistrée ne peut pas être exporté pendant que cette option est activée, et la tâche signale un échec au lieu de publier une version non révisée.

Cette option s'applique uniquement à **PDMPublisher Tâche PDM**.
