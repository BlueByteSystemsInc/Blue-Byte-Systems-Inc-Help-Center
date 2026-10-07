---
title: "Options PDMPublisher"
description: "Exporter des pièces multi-corps dans des fichiers de corps séparés."
ms.date: 10/06/2026
ms.topic: reference
---

# Corps divisés

![Configuration des corps séparés dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox8_Split_bodies_Light_100.png)
Exporte des corps d'une partie multi-corps dans des fichiers séparés. Le nom du corps est annexé au nom de fichier généré.

> [!NOTE]
> Ce réglage est disponible dans les **tâche PDM** et **SOLIDWORKS add-in**.

## Choisir le regroupement des corps

Lorsque **Split Bodies** est activé, sélectionnez **Cut-list item grouping...** à la page Publish.

![Choix de regroupement par article de liste de pièces soudées](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-split-body-grouping-20260933.png)

- **Every body** exporte un fichier distinct pour chaque corps et ajoute le nom du corps au nom de fichier.
- **One per cut-list item** exporte un corps représentatif pour les corps ayant une géométrie et un matériau correspondants dans le même article de liste de pièces soudées. Le nom de fichier comprend la quantité par pièce. Un corps qui ne peut pas être vérifié dans son groupe est exporté séparément.

Le choix est enregistré avec la tâche et inclus dans l'importation, l'exportation ou le partage par NIP des paramètres. Les tâches existantes continuent d'utiliser **Every body** jusqu'à ce que le réglage soit modifié.

> [!IMPORTANT]
> Ce réglage ne s'applique pas aux exportations de patrons plats de tôlerie. Dans le complément SOLIDWORKS, activez [Exporter les pièces en tôle au format DXF de patron plat 1:1](export-sheet-metal-flat-pattern-dxf.md), puis sélectionnez **Export each sheet-metal body to a separate DXF** sous **Flat Pattern Settings**. **Split Bodies** n'est pas requis pour ce flux de travail.
