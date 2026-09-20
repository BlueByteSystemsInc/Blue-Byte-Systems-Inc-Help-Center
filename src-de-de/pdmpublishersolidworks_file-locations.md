---
title: "Dateistandorte | PDMPublisher für SOLIDWORKS"
description: "Konfigurieren Ordner suchte nach zugehörigen SOLIDWORKS Zeichnungen."
ms.date: 09/16/2026
ms.topic: how-to
---

# Dateistandorte

Öffnen Sie **PDMPublisher > Settings > File Locations**, um zu definieren, wo PDMPublisher nach Zeichnungen sucht, die mit Teilen und Baugruppen verknüpft sind.

![Dateistandorteinstellungen zeichnen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)
<a id="search-order-and-controls"></a>
## Suchanweisung und Kontrollen

| Kontrolle | Verhalten |
| --- | --- |
| **Add** | Fügt einen Ordner zur Suchliste hinzu. |
| **Remove** | Entfernt den ausgewählten Ordner aus dieser Liste, ohne den Ordner zu löschen. |
| **Include subfolders** | Sucht unter jedem aufgelisteten Ordner. Aktivieren Sie es nur dort, wo die Ordnerstruktur gesteuert wird; breite Bäume können die Suche verlangsamen. |
| **Include SOLIDWORKS File Locations > Referenced Documents folders** | Fügt die in SOLIDWORKS konfigurierten Ordner referenzierte Dokumente zur Suche hinzu. |

PDMPublisher durchsucht zuerst den Ordner des aktiven Modells, dann die konfigurierten Ordner in Listenreihenfolge. Eine Zeichnung ist nur dann enthalten, wenn ihr Dateiname mit dem Part- oder Assembly-Dateinamen übereinstimmt. Halten Sie die Liste eng und platzieren Sie die wahrscheinlichsten Standorte zuerst.

Diese Orte helfen, eine gleichnamige oder anderweitig zugeordnete Zeichnung zu finden; sie ändern keine SOLIDWORKS-Referenzpfade und sind keine Exportziele. Konfigurieren Sie Ausgabeordner in [Exportstandort](pdmpublisher-options/export-location.md).
