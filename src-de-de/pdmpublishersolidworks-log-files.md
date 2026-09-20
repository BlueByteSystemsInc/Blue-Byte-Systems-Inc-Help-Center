---
title: "Speichern und Löschen von Protokollen | PDMPublisher für SOLIDWORKS"
description: "Speichern Sie das vollständige PDMPublisher-Sitzungsprotokoll in einer Datei oder löschen Sie die In-Memory-Logliste."
ms.date: 09/16/2026
ms.topic: how-to
---

# Speichern und Löschen von Logs

Verwenden Sie die Befehle im **PDMPublisher > Logs**-Fenster, um einen Auftragsdatensatz zu speichern, oder beginnen Sie mit einer leeren Logliste.

![Copy, save, clear, and close controls in the Publishing Logs window](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)
<a id="save-logs"></a>
## Logs speichern

1. Wählen Sie **Save...**.
2. Wählen Sie ein Ziel und einen Dateinamen.
3. Speichern Sie als `.log` oder `.txt` Datei.

PDMPublisher schlägt einen Dateinamen vor, der den Produktnamen, den Computernamen und die Jobsitzungskennung enthält. Die gespeicherte Datei enthält alle aktuellen Protokolleinträge, einschließlich der vom Suchfilter ausgeblendeten Einträge.

Speichern Sie das Protokoll unmittelbar nach dem Job, den Sie untersuchen müssen, damit nicht verwandte Einträge aus späteren Jobs nicht in den Support-Datensatz gemischt werden.

<a id="clear-logs"></a>
## Klare Protokolle

Wählen Sie **Clear**, um die aktuellen In-Memory-Einträge zu entfernen. Verwenden Sie **Copy selected** oder **Copy all**, wenn Sie nur Einträge in eine Nachricht einfügen müssen, anstatt eine Datei zu speichern.

Durch das Löschen des Fensters werden keine Protokolldateien gelöscht, die bereits auf der Festplatte gespeichert wurden. Speichern Sie alles, was Sie benötigen, bevor Sie **Clear** auswählen, da die In-Memory-Einträge nicht aus dem Fenster wiederhergestellt werden können.

> [!TIP]
> Fügen Sie das gespeicherte Protokoll und den Quelldateinamen bei der Kontaktaufnahme mit `support@bluebytesystemsinc.zohodesk.com` hinzu.
