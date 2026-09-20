---
title: "Importer et exporter des annotations de PDMPublisher pour SOLIDWORKS"
description: "Exporter les annotations d'un PDMPublisher pour le profil SOLIDWORKS ou importer les paramètres d'annotation compatibles."
ms.date: 09/16/2026
ms.topic: how-to
---

# Importations et exportations annotations

La fenêtre Annotation peut enregistrer sa collection d'annotation séparément du profil complet Publier. Ceci est utile lorsque la même disposition d'annotation doit être réutilisée dans un autre profil.

Le format `.edmtdf` est conservé pour être compatible avec les exportations existantes. Traiter l'importation d'une définition de tâche PDM comme un chemin de migration; échanger de nouvelles configurations supplémentaires SOLIDWORKS sous forme de profils Publier ou de paquets de paramètres complets.

![Éditeur des annotations](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/annotations-editor-controls-20260908.png)
<a id="export-annotations"></a>
## Annotations d'exportation

1. Ouvrez **PDMPublisher > Annotations** et sélectionnez **Export...**.
2. Choisissez un emplacement et un nom de fichier.
3. Enregistrer les paramètres comme un fichier `.edmtdf`.

Le fichier contient la collection d'annotation courante, y compris le texte d'annotation, le formatage, le placement, la sélection de feuilles et l'état actif.

<a id="import-annotations"></a>
## Importation des annotations

1. Sélectionnez le profil qui devrait recevoir les annotations.
2. Sélectionnez **Import...** dans la fenêtre Annotations.
3. Choisissez le fichier `.edmtdf`.
4. Examiner les annotations importées avant de publier.

> [!WARNING]
> Importer des annotations remplace la collection d'annotation actuellement affichée pour le profil sélectionné. Exportez les annotations actuelles ou le profil complet d'abord quand elles peuvent être nécessaires plus tard.

Pour une sauvegarde qui inclut également Options et Conditions, utilisez [Déplacer les profils entre ordinateurs] (pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
