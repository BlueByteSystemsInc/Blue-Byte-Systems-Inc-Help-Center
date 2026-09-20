---
title: "Fusionner les PDF exportés en une seule option Master PDF"
description: "Combiner les PDF exportés en un seul maître PDF."
ms.date: 08/09/2026
ms.topic: reference
---

# Fusionner les PDF exportés en un seul maître PDF

![Merge exporté PDF paramètre dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox9_Merge_exported_PDFs_into_one_master_PDF_Light_100.png)
Combine les PDF exportés en un seul maître PDF.

> [!NOTE]
> Ce réglage est disponible dans les **tâche PDM** et **SOLIDWORKS add-in**.

Cette option est pour le traitement de montage. Il ne fonctionne que lorsque [Exporter des références aux formats de fichiers individuellement](export-references-individually.md) est activé, car PDMPublisher a besoin des références d'assemblage pour créer les PDF individuels avant de pouvoir les fusionner.

Configuration requise :

- Sélectionnez `PDF` dans [formats de fichiers](file-formats.md).
- Activer [Exporter des références aux formats de fichiers individuellement] (export-references-individually.md).
- Procéder à un assemblage : lancer la tâche PDM sur un assemblage ou ouvrir l'assemblage dans SOLIDWORKS avant de publier à partir de le complément.

> [!TIP]
> Activer [PDF Signet](pdf-bookmarks.md) et [Ajouter une table de contenu à PDF](add-table-of-content-to-merged-pdf.md) lorsque le PDF fusionné a besoin de navigation.
