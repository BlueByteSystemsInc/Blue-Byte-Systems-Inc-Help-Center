---
title: "Règles d'évaluation Conditions PDMPublisher"
description: "Comment PDMPublisher évalue les groupes et les configurations de condition."
ms.date: 08/09/2026
ms.topic: reference
---

# Règles d'évaluation

PDMPublisher vérifie les conditions avant d'exporter un fichier.

Le module complémentaire SOLIDWORKS évalue les propriétés du document actif et résout les références.

![Groupe de conditions dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Default_Light_100.png)
Règles générales:

- Les groupes de condition activés sont évalués par leur réglage ET ou OU.
- Les personnes handicapées et les groupes de personnes handicapées sont exclus.
- Un fichier n'est traité que lorsque la configuration de l'état le permet.
- Si une condition utilise une configuration spécifique, PDMPublisher lit la valeur de cette configuration.

Pour l'édition de montage, les conditions sont évaluées en fonction des dossiers à exporter.
