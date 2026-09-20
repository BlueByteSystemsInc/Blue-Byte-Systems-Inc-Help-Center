---
title: "Utiliser la recherche PDM pour localiser les dessins Options PDMPublisher"
description: "Trouvez les dessins à travers la recherche PDM quand ils ne sont pas à côté du modèle."
ms.date: 08/09/2026
ms.topic: reference
---

# Utiliser la recherche PDM pour localiser les dessins

![Utilisez la recherche PDM pour localiser le réglage des dessins](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-033-property-use-search-to-locate-drawings.png)
Utilise la recherche PDM ou le comportement Où Utilisé lorsqu'un dessin ne peut être trouvé dans le même dossier que le modèle.

Cette option est également utilisée par [Utilisez BOM Drawing-Derived] (use-drawing-derived-bom.md). Lorsque les deux paramètres sont activés, PDMPublisher recherche les parents **Where Used** immédiats de l'ensemble pour le dessin qui contient le BOM nommé. Si aucun dessin n'est retourné, il vérifie un dessin du même nom dans le dossier d'assemblage.

> [!NOTE]
> Les noms de dessin et de modèle doivent correspondre pour que cette recherche soit fiable.
