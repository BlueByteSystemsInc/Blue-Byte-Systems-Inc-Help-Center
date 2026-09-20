---
title: PDMPublisher Produkt-Roadmap | Aktuelle Ausrichtung und geplante Funktionen
description: Überblick über den aktuellen PDMPublisher-Produktstand, veröffentlichte Meilensteine und geplante Arbeiten für PDM Task und das SOLIDWORKS Add-in.
ms.date: 09/19/2026
ms.topic: conceptual
---

# PDMPublisher Produkt-Roadmap

PDMPublisher wird als zwei unabhängig versionierte Produkte bereitgestellt: **PDMPublisher for SOLIDWORKS**, das interaktive SOLIDWORKS Add-in, und **PDMPublisher PDM Task**, die in SOLIDWORKS PDM Professional konfigurierte Automatisierungsaufgabe.

Diese Seite trennt bereits verfügbare Funktionen von weiterhin geplanten Arbeiten. Termine und Prioritäten können sich aufgrund von Entwicklung, Tests, Kundenfeedback und SOLIDWORKS-Kompatibilitätsanforderungen ändern.

> [!NOTE]
> Eine geplante Funktion ist erst nach ihrer Veröffentlichung verbindlich verfügbar. Das [PDMPublisher-Änderungsprotokoll](changeslog.md) ist die maßgebliche Übersicht der veröffentlichten Versionen und Änderungen.

## Aktueller Produktstand

### PDMPublisher for SOLIDWORKS

Das aktuelle Add-in verwendet die Registerkarte **PDMPublisher** im CommandManager und das Menü **Tools > PDMPublisher**. Der SOLIDWORKS Task-Bereich zeigt jetzt die Dokumentation an und enthält nicht mehr die Veröffentlichungssteuerung.

Verfügbare Arbeitsabläufe:

- [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md) und [Clone Tree](pdmpublishersolidworks_smart-pack.md).
- [BOM Manager](pdmpublishersolidworks_bom-manager.md) für Stücklistenspalten, Struktur, Gruppierung und Komponentenausschlüsse.
- [Publish](pdmpublishersolidworks-publish.md) mit Anmerkungen, Bedingungen, Zeichenblattsteuerung, Konfigurationsverarbeitung und Protokollen.
- Befehlsspezifische Profile sowie die vollständige Einstellungsübertragung per Datei oder sechsstelliger PIN.
- Gemeinsame PDM-Einstellungen, Sprachen, Zeichnungssuchpfade, externe SQL-Quellen und erweiterte Formeln.
- Ein einheitlicher, durchsuchbarer Dialog für [Einstellungen](pdmpublishersolidworks_settings.md) und ein integrierter [Hilfe-Task-Bereich](pdmpublishersolidworks_help-pane.md).

Unter [PDMPublisher for SOLIDWORKS](pdmpublishersolidworks.md) finden Sie den vollständigen aktuellen Funktionsumfang.

### PDMPublisher PDM Task

Der aktuelle PDM Task unterstützt:

- Automatisierte Veröffentlichung durch SOLIDWORKS PDM Professional-Aufgabenaktionen und geplante Ausführungen.
- Interaktive Dateiauswahl beim Start und konfigurierte [geplante Elemente](scheduleditems.md).
- Mehrformat-Ausgabe, Anmerkungen, Bedingungen, Konfigurationsfilterung, Zeichenblattauswahl, PDF-Zusammenführung und Fertigungsausgaben.
- Verarbeitung einer aus der Zeichnung abgeleiteten Stückliste mit Rückgriff auf die konfigurierte berechnete Stückliste.
- Veröffentlichung der neuesten aufgezeichneten PDM-Revision und ihrer gespeicherten Referenzen.
- Explizite eDrawings-Exporteinstellungen für Messungen sowie Dokument- und Komponenteneigenschaften.
- Aktivitätsprotokolle, Aufgabendetails, PDM-Variablenzuordnung, Ausgabereferenzen und Duplikatbehandlung.

Unter [PDMPublisher für PDM Professional](pdmpublisher.md) finden Sie den vollständigen aktuellen Funktionsumfang.

## Bereits veröffentlichte Roadmap-Meilensteine

Die folgenden Punkte waren früher als geplant aufgeführt und sind inzwischen verfügbar. Sie bleiben als Roadmap-Historie erhalten und stellen keine zukünftigen Zusagen dar.

### 2026 Q2

- `2026.06.21` - [Dateiauswahl beim Aufgabenstart](scheduleditems.md) für PDM Task.
- `2026.06.20` - [Seite für geplante Elemente](scheduleditems.md) für PDM Task.
- `2026.06.20` - Binärer Parasolid-Export (`x_b`) für PDM Task und das SOLIDWORKS Add-in.
- `2026.05.30` - [Aufgabendetails und Ausgabeprotokoll](pdmpublisher_task_details.md) für PDM Task.
- `2026.05.30` - Mehrkörperverarbeitung für PDM Task und das SOLIDWORKS Add-in.

### 2026 Q3

- `2026.09.08` - [Nur neueste Revision abrufen](pdmpublisher-options/get-latest-revision-only.md) für PDM Task.
- `2026.08.10` - [Profilfreigabe per PIN](pdmpublishersolidworks_profile_sharing.md) für das SOLIDWORKS Add-in.
- `2026.08.09` - [Aus Zeichnung abgeleitete Stückliste](pdmpublisher-options/use-drawing-derived-bom.md) für PDM Task.
- `2026.08.08` - [Wiederverwendbare Publish-Profile](pdmpublishersolidworks_profiles.md) und [Voreinstellungen](pdmpublishersolidworks_presets.md) für das SOLIDWORKS Add-in.

## Geplante Arbeiten

### 2026 Q4: Erweiterte Quellen für geplante Aufgaben

**Gilt für: PDM Task**

Geplante Quellen:

- Ein ausgewähltes Verzeichnis.
- Eine gespeicherte Favoritensuche.

### 2027 Q1: Drawing Creator

**Gilt für: SOLIDWORKS Add-in**

Drawing Creator soll die wiederholbare Erstellung von Zeichnungen aus SOLIDWORKS-Teilen und -Baugruppen automatisieren. Das aktuelle Ziel ist das Ende des ersten Quartals 2027.

Geplante Schwerpunkte:

- Zeichnungen aus ausgewählten Modellen erstellen.
- Vordefinierte Zeichnungsvorlagen anwenden.
- Standardmodellansichten einfügen.
- Zeichenblattskalierung und -ränder festlegen.
- Notizen in Anmerkungstabellen hinzufügen oder aktualisieren.
- Wiederverwendbare Regeln für Notizformatierung und -platzierung anwenden.
- Erstellte Zeichnungen für nachgelagerte PDMPublisher-Arbeitsabläufe vorbereiten.

## Geplante Bereiche ohne zugesagten Zeitplan

Das aktuelle SOLIDWORKS Add-in reserviert Bereiche der Benutzeroberfläche für die folgenden Funktionen. Die zugehörigen Befehle oder Einstellungsseiten sind Platzhalter und stehen nicht für Produktionsabläufe zur Verfügung.

- [Translate](pdmpublishersolidworks_translate.md) soll Eigenschaften, Feature-Namen und andere Texte in SOLIDWORKS-Dokumenten übersetzen.
- [ERP Sync](pdmpublishersolidworks_erp-sync.md) ist jetzt im SOLIDWORKS-Add-in für die konnektorbasierte Synchronisierung von Artikeln, Eigenschaften, Teilenummern und Stücklisten verfügbar.
- [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) soll PDMPublisher-Veröffentlichungsaufgaben planen. Dies ist unabhängig von der in Save As New verfügbaren Makroausführung.
