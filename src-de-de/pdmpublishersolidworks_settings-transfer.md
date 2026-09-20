---
title: "Import, Export und Reset Einstellungen | PDMPublisher für SOLIDWORKS"
description: "Sichern, Freigeben, Wiederherstellen oder Zurücksetzen der vollständigen PDMPublisher für die SOLIDWORKS-Konfiguration."
ms.date: 09/16/2026
ms.topic: how-to
---

# Import, Export und Reset Einstellungen

Verwenden Sie die Befehle am unteren Rand von **PDMPublisher > Settings**, um die vollständige Add-in-Konfiguration zu übertragen oder wiederherzustellen.

![Reset, Import und Export Befehle am unteren Rand der Einstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)
| Kommando | Anwendungsbereich |
| --- | --- |
| **Reset** | Wiederherstellt die Standardeinstellungen für die aktuell ausgewählte Einstellungsseite. Wählen Sie **OK**, um den Reset beizubehalten. |
| **Export all settings to File...** | Schreibt ein komplettes Konfigurationspaket für Backup oder Offline-Übertragung. |
| **Share complete settings using PIN...** | Ladet ein komplettes Bundle hoch und gibt eine sechsstellige PIN zurück. |
| **Import all settings from File...** | Validiert und wendet ein Bundle von der Festplatte an. |
| **Import complete settings using PIN...** | Downloads, validiert und wendet ein PIN-Shared-Bundle an. |

<a id="recommended-transfer-workflow"></a>
## Empfohlener Transfer Workflow

1. Exportieren Sie auf dem Quellcomputer alle Einstellungen in eine Datei und bewahren Sie sie als Wiederherstellungskopie auf.
2. Exportieren Sie in eine Datei oder erstellen Sie eine PIN für den vorgesehenen Empfänger.
3. Importieren Sie auf dem Zielcomputer die Datei oder geben Sie die PIN ein.
4. Überprüfen Sie die Vault-Auswahl, externe Quellinformationen, lokale Dateispeicherorte und Ausgabepfade.
5. Öffnen Sie jedes wichtige Profil und führen Sie ein kontrolliertes Testdokument aus.

Das komplette Bundle umfasst Utility-Profile, Publish-Profile, Anmerkungen, Bedingungen, Formeln, Dateispeicherorte und externe Quelldefinitionen. SQL Server Geheimnisse sind ausgeschlossen. Lokale Pfade und Gewölbenamen existieren möglicherweise nicht auf einem anderen Computer.

PDMPublisher validiert die importierten Abschnitte und erstellt ein zeitgestempeltes lokales Backup, bevor Einstellungen ersetzt werden. Wenn die Anwendung eines Abschnitts fehlschlägt, versucht er, die vorherige Konfiguration wiederherzustellen.

> [!WARNING]
> Jeder mit einer aktiven PIN kann seine Konfiguration abrufen, bis die PIN abläuft. Verwenden Sie keine Profil- oder Einstellungsfreigabe für Passwörter oder vertraulichen Abfragetext.

Um nur ein Publish-Profil zu verschieben, verwenden Sie [Publish Profiles](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
