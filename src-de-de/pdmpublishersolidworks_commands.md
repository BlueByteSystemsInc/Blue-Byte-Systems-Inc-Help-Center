---
title: "Befehle | PDMPublisher für SOLIDWORKS"
description: "Finden Sie jeden PDMPublisher-Befehl im SOLIDWORKS CommandManager und verstehen Sie, welche Dokumenttypen ihn unterstützen."
ms.date: 09/19/2026
ms.topic: overview
---

# PDMPublisher Befehle

PDMPublisher-Befehle sind über die Registerkarte **PDMPublisher** im SOLIDWORKS CommandManager und im **Tools > PDMPublisher**-Menü verfügbar. Der Aufgabenbereich ist jetzt ein Dokumentationsbrowser; Veröffentlichungs- und Dienstprogrammbefehle laufen nicht mehr innerhalb des Bereichs.

![PDMPublisher CommandManager und Hilfsaufgabenbereich in SOLIDWORKS 2026](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
The screenshot shows PDMPublisher 2026.09.08 in SOLIDWORKS 2026 SP3.2. Commands run against the active SOLIDWORKS document. The Help task pane on the right provides documentation links and does not run the commands.

| Gruppe | Kommando | Zweck |
| --- | --- | --- |
| Versorgungsunternehmen | [Save As New](pdmpublishersolidworks_save-as-new.md) | Speichern Sie das aktive Dokument als separate native SOLIDWORKS-Datei mit einem wiederverwendbaren Namens- und Zielprofil. |
| Versorgungsunternehmen | [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Überprüfen und Bearbeiten benutzerdefinierter, konfigurationsspezifischer und Cut-List-Eigenschaften in einem Dokument und seinen Referenzen. |
| Versorgungsunternehmen | [Übersetzen](pdmpublishersolidworks_translate.md) | Reserviert für einen zukünftigen Übersetzungsworkflow. Sie ist noch nicht verfügbar. |
| Versorgungsunternehmen | [Clone Tree](pdmpublishersolidworks_smart-pack.md) | Kopieren Sie einen Dokumentsatz mit einzelnen Dateinamen und -zielen, optionalen Begleitdateien, PDM-Revisionshandling und ZIP-Ausgabe. |
| Veröffentlichen | [Publish](pdmpublishersolidworks-publish.md) | Konfigurieren und Ausführen eines Veröffentlichungsauftrags für das aktive Dokument. |
| Veröffentlichen | [Anmerkungen](pdmpublishersolidworks_annotations.md) | Bearbeiten Sie die in einem Publish-Profil gespeicherten Anmerkungen. |
| Veröffentlichen | [Bedingungen](conditions_solidworks.md) | Bearbeiten Sie die in einem Publish-Profil gespeicherten Bedingungen. |
| Veröffentlichen | [Logs](pdmpublishersolidworks_logs.md) | Überprüfen Sie die Veröffentlichung von Nachrichten und Fehlern. |
| Einstellungen | [Einstellungen](pdmpublishersolidworks_settings.md) | Konfigurieren Sie alle Utility-, Publishing- und Shared-Ressource-Einstellungen aus einem durchsuchbaren Dialog. |
| Einstellungen | [Lizenzschlüssel](pdmpublishersolidworks_license.md) | Öffnen SOLIDWORKS Add-in-Lizenz Aktivierung und Deaktivierung. |
| Aktualisierungen | Überprüfen Sie auf Updates | Überprüfen Sie, ob ein neuerer PDMPublisher Build verfügbar ist. |
| Aktualisierungen | Versionsangaben | Offene Produkt-, Support-, Rechts- und Versionsinformationen. |

<a id="commandmanager-controls"></a>
## CommandManager Steuerungen

| Kontrolle | Was passiert, wenn ausgewählt | Pfeilmenü |
| --- | --- | --- |
| **Save As New** | Öffnet den Save As New-Workflow für das aktive Teil, die Baugruppe oder die Zeichnung. | Wählen Sie ein gespeichertes Save As New-Profil aus, bevor Sie den Workflow öffnen. |
| **Property Doctor** | Öffnet ein Eigenschaftsraster für das aktive Dokument und unterstützte Referenzen. | Wählen Sie ein gespeichertes Property Doctor-Profil aus. |
| **Translate** | Derzeit deaktiviert, weil der Übersetzungsworkflow noch nicht verfügbar ist. | Keine. |
| **Clone Tree** | Öffnet den Kopier-/Paket-Workflow für das aktive Dokumentset. | Wählen Sie ein gespeichertes Clone Tree-Profil aus. |
| **Publish** | Öffnet oder führt den Publishing-Workflow mit dem aktiven Publish-Profil aus. | Wählen Sie ein gespeichertes Publish-Profil aus. |
| **Annotations** | Bearbeitet Anmerkungen im aktiven Publish-Profil. | Keine. |
| **Conditions** | Bearbeitet Bedingungen im aktiven Publish-Profil. | Keine. |
| **Logs** | Öffnet den PDMPublisher Log Viewer. | Keine. |
| **Settings** | Öffnet den durchsuchbaren Einstellungsdialog. | Keine. |
| **License Key** | Öffnet Lizenzaktivierung und -deaktivierung. | Keine. |

Der Updatebereich rechts meldet, ob der installierte Build aktuell ist. Wenn ein Update verfügbar ist, verwenden Sie den angezeigten Update-Befehl und schließen Sie SOLIDWORKS, bevor Sie das MSI installieren.

<a id="profile-drop-downs"></a>
## Profil Drop-Downs

Der Pfeil neben **Save As New**, **Property Doctor**, **Clone Tree** und **Publish** listet die gespeicherten Profile für diesen Befehl auf. Wählen Sie **Profile: Default** aus, um die aktuellen Standardeinstellungen zu verwenden, oder wählen Sie ein benanntes Profil aus, um mit dieser Konfiguration zu beginnen.

Für eine in einer Assembly ausgewählte Komponente werden im Rechtsklickmenü auch **Property Doctor** und die verfügbaren **Save As New**-Profile angezeigt.

<a id="when-a-command-is-available"></a>
## Wenn ein Befehl verfügbar ist

Dokumentenbefehle erfordern ein aktives Teil, eine Montage oder eine Zeichnung. Speichern Sie das aktive Dokument, bevor Sie Workflows verwenden, die Dateipfade oder Referenzen auflösen müssen. Property Doctor und Clone Tree können warten, während SOLIDWORKS die Ladereferenzen beendet; das Ändern des aktiven Dokuments während dieser Vorbereitung storniert den Vorgang.

> [!NOTE]
> Die Registerkarte **PDMPublisher** CommandManager wird für Teile, Baugruppen und Zeichnungen neu erstellt. Wenn die Registerkarte ausgeblendet ist, aktivieren Sie das Add-in und klicken Sie mit der rechten Maustaste auf den Registerbereich CommandManager, um **PDMPublisher** anzuzeigen.
