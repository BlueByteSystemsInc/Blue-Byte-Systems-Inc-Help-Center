---
title: "Paramètres d'exportation de eDrawings"
description: "Comprendre les préférences de mesure et de propriété de fichiers appliquées par la tâche PDM PDMPublisher lors de l'exportation des fichiers eDrawings."
ms.date: 08/31/2026
ms.topic: reference
---

# Paramètres d'exportation de eDrawings

PDMPublisher PDM Tâche peut créer ces fichiers eDrawings :

| Document de base | Sortie eDrawings |
| --- | --- |
| Partie SOLIDWORKS (`.sldprt`) | Partie eDrawings (`.eprt`) |
| Assemblage SOLIDWORKS (`.sldasm`) | Assemblage eDrawings (`.easm`) |
| Dessin SOLIDWORKS (`.slddrw`) | Dessin de eDrawings (`.edrw`) |

![formats eDrawings dans le sélecteur de formats de fichiers](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-dropdown-000-file-formats.png)
Avant d'enregistrer un fichier eDrawings, la tâche PDM PDMPublisher applique ces paramètres:

- Permettre la mesure dans le fichier eDrawings exporté.
- Enregistrer les propriétés du fichier dans le fichier exporté.
- Enregistrer les propriétés des fichiers pour chaque composant où la sortie contient des composants d'assemblage.

Cela empêche l'exportation de dépendre des préférences eDrawings précédemment stockées pour le compte Windows sous SOLIDWORKS sur l'hôte de tâche.

> [!IMPORTANT]
> Cette correction ne s'applique qu'à **PDMPublisher Tâche PDM**. Il ne change pas PDMPublisher pour SOLIDWORKS.

<a id="task-setup"></a>
## Configuration des tâches

Il n'y a pas de nouvelle case à cocher pour cette correction. Sélectionnez les extensions eDrawings requises sous [Formats de fichiers](file-formats.md); PDMPublisher applique automatiquement les préférences corrigées lorsque la tâche crée la sortie.

Mettre à jour PDMPublisher sur chaque ordinateur qui peut exécuter la tâche. Le compte Windows exécutant la tâche doit également pouvoir démarrer la version SOLIDWORKS configurée.

Pour un déploiement de tâches géré, voir [Installer ou mettre à jour PDMPublisher avec PDMDeploy](../updateaddinswithcdpdm.md).
