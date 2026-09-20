---
title: "Task Details Log-Tab | PDMPublisher | SOLIDWORKS PDM"
description: "Erklärt die Registerkarte Task Details Log in PDMPublisher und wie sie erfolgreiche Dateiinformationen aus Aufgabenprotokollen liest."
ms.date: 06/19/2026
ms.topic: conceptual
---

# Tabulator für Aufgabendetails


Die Registerkarte **Task Details Log** in PDMPublisher bietet eine schnelle Zusammenfassung der Dateien, die erfolgreich konvertiert und wieder in SOLIDWORKS PDM gespeichert wurden.

Diese Ansicht soll es einfacher machen, zu bestätigen, welche Ausgabedateien von der Aufgabe erstellt wurden, ohne die Aufgabenprotokolldatei manuell zu öffnen.

![PDMPublisher Task Details tab](https://pdmpublisher.com/help/images/detailstab.png)
<a id="what-the-details-tab-shows"></a>
## Was der Tab Details zeigt

Die Registerkarte Details zeigt eine Tabelle erfolgreicher Dateien an, die im PDMPublisher-Taskprotokoll gefunden wurden.

Die Tabelle kann Folgendes enthalten:

| Säule | Beschreibung |
|---|---|
| Zeitstempel | Die Zeit, in der die Datei gespeichert oder eingecheckt wurde. |
| Bestimmungsdatum | Die Ausgabedatei, die von PDMPublisher erstellt wurde. |
| Vers | Die PDM-Version der gespeicherten Ausgabedatei. |
| Originaldatei | Die Quelldatei, die zum Erstellen der Ausgabe verwendet wurde. |
| Gefunden in | Der PDM-Ordner, in dem die Zieldatei gespeichert wurde. |

<a id="important-requirements"></a>
## Wichtige Anforderungen

Die Registerkarte Details Log hängt von der Task-Log-Datei ab.

Damit der Tab Details Log korrekt funktioniert:

1. **Logging must be enabled in the PDMPublisher task.**
2. Der Benutzer, der die Details öffnet, muss die Berechtigung haben, die Protokolldatei zu lesen.
3. Der Benutzer muss Zugriff auf den Workflowzustand und den Ordner haben, in dem die Protokolldatei gespeichert ist.

Wenn auf die Protokolldatei nicht zugegriffen werden kann, kann die Registerkarte Details Log möglicherweise die erfolgreichen Dateien nicht anzeigen.

> [!IMPORTANT]
> Dateien, die außerhalb des PDM-Tresors gespeichert sind, sind **not tracked** in der Registerkarte Details Log. Die Registerkarte Details Log meldet nur Dateien, die in SOLIDWORKS PDM gespeichert oder eingecheckt und im Task-Log aufgezeichnet wurden.




<a id="log-file-permissions"></a>
## Berechtigungen für Protokolldateien

PDMPublisher liest die Task-Log-Datei, um die Registerkarte Details zu erstellen.

Wenn der Benutzer keine Berechtigung zum Zugriff auf die Protokolldatei hat, zeigt die Registerkarte Details möglicherweise ein leeres Ergebnis an oder zeigt eine Warnung an.

Häufige Ursachen sind:

- Der Benutzer hat keine Leseberechtigung für die Protokolldatei.
- Der Benutzer hat keine Leseberechtigung für den Protokollordner.
- Der Ordner ist durch Workflow-Berechtigungen eingeschränkt.
- Die Datei befindet sich in einem Workflow-Zustand, auf den der Benutzer nicht zugreifen kann.
- Die Protokolldatei wurde verschoben oder gelöscht.
- Die Task-Log-Referenz ist nicht mehr gültig.

<a id="open-log-file"></a>
## Open Log File

Die Schaltfläche **Open Log File** öffnet die ursprüngliche Task-Log-Datei.

Verwenden Sie diese Option, wenn:

- Die Registerkarte Details zeigt nicht die erwarteten Dateien an.
- Sie möchten die vollständige Aufgabenausgabe überprüfen.
- Sie müssen eine fehlgeschlagene oder teilweise abgeschlossene Aufgabe beheben.
- Sie möchten bestätigen, ob die Ausgabedateien innerhalb oder außerhalb von PDM gespeichert wurden.

<a id="help"></a>
## Hilfe

Die Schaltfläche **Help** öffnet diese Dokumentationsseite.

<a id="troubleshooting"></a>
## Fehlerbehebung

<a id="the-details-tab-is-empty"></a>
### Der Tab Details ist leer

Überprüfen Sie Folgendes:

- Bestätigen Sie, dass die Protokollierung in der Aufgabe PDMPublisher aktiviert ist.
- Bestätigen Sie, dass die Aufgabe Dateien im PDM-Tresor erstellt hat.
- Öffnen Sie die Log-Datei und prüfen Sie, ob erfolgreiche Check-in-Nachrichten vorhanden sind.
- Bestätigen Sie, dass der Benutzer Lesezugriff auf die Protokolldatei und den Protokollordner hat.
- Bestätigen Sie, dass die Ausgabedateien nicht außerhalb von PDM gespeichert wurden.

<a id="the-log-file-cannot-be-opened"></a>
### Die Protokolldatei kann nicht geöffnet werden

Dies bedeutet normalerweise, dass die Datei nicht gefunden werden kann oder der Benutzer nicht über genügend Berechtigungen verfügt, um darauf zuzugreifen.

Bitten Sie Ihren PDM-Administrator zu überprüfen:

- Ordnerberechtigungen
- Berechtigungen für den Workflow-Zustand
- Berechtigungen zum Auslesen von Dateien
- Ort der Protokolldatei
- Ob die Protokolldatei noch im Tresor existiert

<a id="notes"></a>
## Anmerkungen

Die Registerkarte Details ist eine Darstellung des tatsächlichen PDMPublisher-Taskprotokolls. Es erstellt keine separaten Tracking-Datensätze. Wenn die erforderlichen Informationen in der Protokolldatei nicht verfügbar sind, können sie im Tab Details nicht angezeigt werden.
