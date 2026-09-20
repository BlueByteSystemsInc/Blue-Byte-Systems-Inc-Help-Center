---
title: "Suchen und Lesen von Protokollen | PDMPublisher für SOLIDWORKS"
description: "Filtern Sie PDMPublisher-Jobprotokolle und interpretieren Sie Verarbeitungs-, Erfolgs-, Warn- und Fehlereinträge."
ms.date: 08/23/2026
ms.topic: how-to
---

# Logs suchen und lesen

Das **PDMPublisher > Logs**-Fenster sammelt Nachrichten aus der aktuellen Sitzung. Einträge können Dateiverarbeitung, Zustandsbewertung, Mengen, Zeichnungsbögen, Exporte, Warnungen und Fehler umfassen.

![PDMPublisher Logs window filtered to errors](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)

<a id="search-logs"></a>
## Suchprotokolle

Geben Sie Text in **Find** ein, um die angezeigten Einträge beim Tippen zu filtern. Matching ist nicht fallsensibel. Verwenden Sie den Filter des benachbarten Typs, um Nachrichten von **All entries**, **Errors**, **Warnings**, **Completed**, **Processing** oder **Skipped** anzuzeigen.

Die Suche ändert nur das, was angezeigt wird. Es entfernt keine Protokolleinträge und [Save...](pdmpublishersolidworks-log-files.md) schreibt immer noch die komplette Sammlung.

Nützliche Suchanfragen umfassen einen Dateinamen, eine Ausgabeerweiterung, eine Konfiguration, `warning`, `failed` oder `saved`.

Aktivieren Sie **Follow newest**, während Sie einen aktiven Job überwachen. Die gezeigten, Gesamt- und ausgewählten Zähler machen deutlich, ob ein Such- oder Typfilter Einträge ausblendet.

<a id="entry-colors"></a>
## Eintrittsfarben

| Farbe | Typische Meldung |
| --- | --- |
| Gelb | Jobstart, Verarbeitung oder allgemeiner Fortschritt. |
| Grün | Gespeichert, abgeschlossen, hinzugefügt oder steps bestanden. |
| Hellrot | Warn-, Fehl- oder Fehlereinträge. |

Lesen Sie die Einträge rund um eine Warnung oder einen Fehler, nicht nur die hervorgehobene Zeile. Frühere Nachrichten identifizieren häufig die Quelldatei, die Konfiguration oder den ausgewerteten Wert, der zum Ergebnis geführt hat.
