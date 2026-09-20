---
title: "Verwenden Sie die PDM-Suche, um Zeichnungen zu finden | PDMPublisher Optionen"
description: "Finden Sie Zeichnungen über die PDM-Suche, wenn sie sich nicht neben dem Modell befinden."
ms.date: 08/09/2026
ms.topic: reference
---

# Verwenden Sie die PDM-Suche, um Zeichnungen zu finden

![Verwenden Sie die PDM-Suche, um die Zeichnungen zu finden](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-033-property-use-search-to-locate-drawings.png)
Verwendet die PDM-Suche oder das verwendete Verhalten, wenn eine Zeichnung nicht im selben Ordner wie das Modell gefunden werden kann.

Diese Option wird auch von [Use Drawing-Derived BOM](use-drawing-derived-bom.md) verwendet. Wenn beide Einstellungen aktiviert sind, durchsucht PDMPublisher die unmittelbaren **Where Used**-Eltern der Assembly nach der Zeichnung, die die benannte Stückliste enthält. Wenn keine Zeichnung zurückgegeben wird, wird im Assemblyordner nach einer Zeichnung mit gleichem Namen gesucht.

> [!NOTE]
> Zeichnung und Modellnamen müssen übereinstimmen, damit dieser Lookup zuverlässig ist.
