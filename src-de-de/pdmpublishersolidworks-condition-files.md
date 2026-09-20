---
title: "Import- und Exportbedingungen | PDMPublisher für SOLIDWORKS"
description: "Exportieren Sie einen Zustandsbaum aus einem PDMPublisher für das SOLIDWORKS-Profil oder importieren Sie kompatible Bedingungen."
ms.date: 09/16/2026
ms.topic: how-to
---

# Einfuhr- und Ausfuhrbedingungen

Verwenden Sie **Export...** und **Import...** im **PDMPublisher > Conditions**-Fenster, um Zustandsregeln getrennt vom vollständigen Publish-Profil zu verschieben.

Das `.edmtdf`-Format wird für die Kompatibilität mit bestehenden Exporten beibehalten. Behandeln Sie das Importieren einer PDM-Task-Definition als Migrationspfad; tauschen Sie neue SOLIDWORKS-Add-in-Konfigurationen als Veröffentlichungsprofile oder vollständige Einstellungspakete aus.

![Bedingungen Editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/conditions-editor-controls-20260908.png)
<a id="export-conditions"></a>
## Ausfuhrbedingungen

1. Wählen Sie **Export...**.
2. Wählen Sie einen Ort und einen Dateinamen.
3. Speichern Sie die Bedingung als `.edmtdf`-Datei.

In der exportierten Datei werden die Bedingungsgruppen, UND/ODER-Verhalten, Felder, Vergleichstypen, Werte, Konfigurationen und aktivierte Zustände beibehalten.

<a id="import-conditions"></a>
## Einfuhrbedingungen

Das ausgewählte Element in der Bedingung Baum steuert, wo importierte Regeln platziert werden:

| Auswahl vor der Einfuhr | Ergebnis |
| --- | --- |
| Keine Gruppe ausgewählt | Der importierte Root Condition Tree ersetzt den aktuellen Root Tree. |
| Eine Bedingungsgruppe ausgewählt | Importierte Root Items werden als Kinder der ausgewählten Gruppe hinzugefügt. |
| Eine Bedingungszeile ausgewählt | Der Import wird gestoppt. Wählen Sie eine Gruppe oder löschen Sie die Auswahl zuerst. |

Überprüfen Sie nach dem Import die Gruppenbeziehungen und testen Sie die Regeln vor der Veröffentlichung.

> [!IMPORTANT]
> Exportieren Sie die aktuellen Bedingungen oder das vollständige Profil, bevor Sie den Wurzelbaum ersetzen, wenn die bestehenden Regeln später benötigt werden.

Für ein Backup, das auch Optionen und Anmerkungen enthält, verwenden Sie [Profile zwischen Computern verschieben](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
