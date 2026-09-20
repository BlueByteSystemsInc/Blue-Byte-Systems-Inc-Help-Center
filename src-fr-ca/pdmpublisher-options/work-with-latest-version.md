---
title: "Fonctionne avec les options PDMPublisher de la dernière version"
description: "Forcez PDM à utiliser les dernières versions de fichiers lors de la publication."
ms.date: 09/08/2026
ms.topic: reference
---

# Fonctionne avec la dernière version

![Travailler avec le réglage de la dernière version](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-036-property-work-with-latest-version.png)
Force PDM à récupérer la dernière version de fichiers avant de publier.

Si [Get last revision only](get-latest-revision-only.md) est activé, PDMPublisher utilise plutôt la version associée à la plus récente révision enregistrée. **Get latest revision only** a priorité sur ce paramètre.

> [!WARNING]
> Utilisez ceci soigneusement dans les flux de travail de publication. Si le workflow s'attend à ce que l'ensemble de référence enregistré, la dernière version de publication peut changer ce qui est exporté.
