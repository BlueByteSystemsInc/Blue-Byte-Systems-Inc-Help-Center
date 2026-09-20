---
title: "Externe Quellen | PDMPublisher für SOLIDWORKS"
description: "Erstellen und validieren Sie wiederverwendbare SQL Server-Datenquellen für unterstützte PDMPublisher-Felder."
ms.date: 09/16/2026
ms.topic: how-to
---

# Externe Quellen

Öffnen Sie **PDMPublisher > Settings > External Sources**, um wiederverwendbare SQL Server-Quelldefinitionen beizubehalten.

![Externe SQL Server Quellen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Sources_Default_Light_100.png)
Wählen Sie **Add** oder **Edit / Test**, um den Quelleditor zu öffnen.

![Externer SQL Server Source Editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Source_editor_Default_Light_100.png)
| Kommando | Verhalten |
| --- | --- |
| **Add** | Erstellt eine benannte Quell- und Abfragedefinition. |
| **Edit / Test** | Aktualisiert die ausgewählte Definition und testet sie mit einem Konfigurationsnamen, Dateinamen oder Eigenschaftswert. |
| **Delete** | Entfernt die ausgewählte Definition nach der Bestätigung. |

Verwenden Sie einen beschreibenden Namen, der den zurückgegebenen Wert erklärt. Testen Sie die Quelle mit repräsentativen Daten, bevor Sie sie in eine Eigenschaft, eine Formel, einen Dateinamen oder einen Annotationsworkflow einfügen. Eine erfolgreiche Verbindung garantiert nicht, dass jedes Dokument eine Zeile zurückgibt, also definieren Sie das erwartete Leerergebnisverhalten im verbrauchenden Workflow.

Standardwerte, externe Quellen und Formeln werden getrennt von den anderen Dienstprogrammeinstellungen gespeichert.

> [!IMPORTANT]
> Datenbankanmeldeinformationen bleiben lokal und werden nicht in exportierten Einstellungen oder PIN-Freigaben enthalten. Geben Sie die Anmeldeinformationen auf dem Zielcomputer nach dem Importieren einer Konfiguration erneut ein.

Verwenden Sie ein Datenbankkonto mit nur den Berechtigungen, die zum Ausführen der Abfrage erforderlich sind. Platzieren Sie keine Passwörter in Abfragetext, Profilnamen, Formeln oder Anmerkungen.
