---
title: "Import und Export Anmerkungen | PDMPublisher für SOLIDWORKS"
description: "Exportieren Sie Anmerkungen aus einem PDMPublisher für das SOLIDWORKS-Profil oder importieren Sie kompatible Anmerkungseinstellungen."
ms.date: 09/16/2026
ms.topic: how-to
---

# Import und Export Anmerkungen

Das Fenster Annotations kann seine Annotationssammlung separat vom kompletten Publish-Profil speichern. Dies ist nützlich, wenn das gleiche Annotationslayout in einem anderen Profil wiederverwendet werden muss.

Das `.edmtdf`-Format wird für die Kompatibilität mit bestehenden Exporten beibehalten. Behandeln Sie das Importieren einer PDM-Task-Definition als Migrationspfad; tauschen Sie neue SOLIDWORKS-Add-in-Konfigurationen als Veröffentlichungsprofile oder vollständige Einstellungspakete aus.

![Annotations Editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/annotations-editor-controls-20260908.png)
<a id="export-annotations"></a>
## Ausfuhranmerkungen

1. Öffnen Sie **PDMPublisher > Annotations** und wählen Sie **Export...**.
2. Wählen Sie einen Ort und einen Dateinamen.
3. Speichern Sie die Einstellungen als `.edmtdf`-Datei.

Die Datei enthält die aktuelle Annotationssammlung, einschließlich Annotationstext, Formatierung, Platzierung, Blattauswahl und aktiver Zustand.

<a id="import-annotations"></a>
## Anmerkungen zu den Einfuhren

1. Wählen Sie das Profil aus, das die Anmerkungen erhalten soll.
2. Wählen Sie **Import...** im Fenster Annotations.
3. Wählen Sie die `.edmtdf`-Datei.
4. Überprüfen Sie die importierten Anmerkungen vor der Veröffentlichung.

> [!WARNING]
> Das Importieren von Anmerkungen ersetzt die Annotationssammlung, die derzeit für das ausgewählte Profil angezeigt wird. Exportieren Sie die aktuellen Anmerkungen oder das vollständige Profil zuerst, wenn sie später benötigt werden.

Für ein Backup, das auch Optionen und Bedingungen enthält, verwenden Sie [Profile zwischen Computern verschieben](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
