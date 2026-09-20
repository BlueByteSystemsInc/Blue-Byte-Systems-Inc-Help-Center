---
title: "PDM Task vs SOLIDWORKS Add-in | PDMPublisher"
description: "Vergleichen Sie PDMPublisher für SOLIDWORKS PDM Professional mit PDMPublisher für SOLIDWORKS und wählen Sie die richtige Dokumentation."
ms.date: 09/16/2026
ms.topic: overview
---

# PDM Task vs SOLIDWORKS Add-in

PDMPublisher ist in zwei Workflows verfügbar. Sie teilen sich die gleiche Publishing-Engine und viele Exporteinstellungen, aber sie starten Jobs und erhalten Dateiinformationen anders.

![PDMPublisher für SOLIDWORKS Befehle im SOLIDWORKS CommandManager](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
| | PDMPublisher für PDM Professional | PDMPublisher für SOLIDWORKS |
| --- | --- | --- |
| Runs from | Eine im SOLIDWORKS PDM Administration Tool konfigurierte Aufgabe | Die Registerkarte PDMPublisher CommandManager und das Menü Werkzeuge im SOLIDWORKS |
| Beginnt von | Ausgewählte Vault-Dateien, eine Workflow-Aktion oder ein PDM-Zeitplan | Das Dokument ist derzeit in SOLIDWORKS geöffnet |
| Speichert Einstellungen als | PDM-Aufgabendefinition | Wiederverwendbare Profile |
| SOLIDWORKS Version | Ausgewählt in den Aufgabeneinstellungen | Die aktuell laufende SOLIDWORKS Version |
| Dateiinformationen | PDM-Variablen, Karten, Stücklistenvorlagen und SOLIDWORKS-Eigenschaften | SOLIDWORKS benutzerdefinierte Eigenschaften und das aktive Dokument oder Assembly Referenzen |
| Nutzerinteraktion | Kann Task-Launch-Datei und Konfigurationsaufforderungen anzeigen | Nutzt das aktive Dokument und das ausgewählte Profil direkt |
| Protokolle | Optionale Vault- und Server-Synced Task Logs | Ein dedizierter **Logs**-Tab für jeden Veröffentlichungsauftrag |

<a id="shared-documentation"></a>
## Gemeinsame Dokumentation

Beide Produkte verwenden die gleichen Dokumentationsseiten für Einstellungen, deren Verhalten geteilt wird:

- Standort, Dateiname und Dateiformate exportieren
- Referenzexport und Zustandsfilterung
- Mehrere Konfigurationen und Konfigurationsfilter
- Zeichnungsblattauswahl und Blattnamenmuster
- PDF merge, Inhaltsverzeichnis, Tabellenspalten und Lesezeichen
- Flat-Muster DXF und Split-Body-Ausgang
- Annotation Formatierung und Platzierung
- Bedingungsgruppen, Felder, Vergleiche und Bewertungsregeln
- Platzhalternummer

Jede freigegebene Seite identifiziert jeden Unterschied zwischen der PDM-Task und dem SOLIDWORKS-Add-in.

<a id="pdm-task-only"></a>
## Nur PDM-Task

Verwenden Sie die [PDM-Task-Dokumentation](pdmpublisher.md) für geplante Elemente, Task-Launch-Prompts, BOM-Vorlagen, Zeichnung abgeleitete BOMs, Berechnungsmethoden, Auswahl eines Task-Hosts SOLIDWORKS-Version, PDM-Suche, Vault-Aktivitätsprotokolle, Variable Mapping, PDM-Referenzen und File Explorer Aufgabensichtbarkeit.

<a id="solidworks-add-in-only"></a>
## SOLIDWORKS Add-in Nur

Verwenden Sie die [SOLIDWORKS-Add-in-Dokumentation](pdmpublishersolidworks.md) für Veröffentlichungsprofile, [vollständige Einstellungen](pdmpublishersolidworks_settings.md), [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md), [Clone Tree](pdmpublishersolidworks_smart-pack.md), interaktives Veröffentlichen, Logs, Updates und Lizenzierung.

> [!TIP]
> Wenn Sie eine Aufgabe im PDM-Administrationstool konfigurieren, folgen Sie dem Abschnitt **PDM Professional** des TOC. Wenn Sie die Befehle PDMPublisher CommandManager innerhalb von SOLIDWORKS verwenden, folgen Sie dem Abschnitt **SOLIDWORKS add-in**.
