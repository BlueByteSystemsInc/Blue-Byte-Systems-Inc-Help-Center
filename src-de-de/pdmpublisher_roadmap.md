---
title: "PDMPublisher Produkt-Roadmap | Kommende Features & geplante Verbesserungen"
description: "Sehen Sie sich die PDMPublisher-Produkt-Roadmap mit geplanten Funktionen, bevorstehenden Verbesserungen und zukünftigen Entwicklungsprioritäten nach Quartalen an."
ms.date: 08/23/2026
ms.topic: conceptual
---

# PDMPublisher Produkt-Roadmap

Auf dieser Seite werden die geplanten Funktionen und Verbesserungen für PDMPublisher, das SOLIDWORKS PDM Professional Task Add-in und PDMPublisher für SOLIDWORKS, das SOLIDWORKS Add-in, beschrieben.

Die Roadmap ist nach Quartalen geordnet und bietet Einblick in die derzeit für zukünftige Releases geplanten Funktionen. Timelines sind Schätzungen und können sich basierend auf Entwicklungsprioritäten, Kundenfeedback, Testergebnissen und SOLIDWORKS oder SOLIDWORKS PDM-Kompatibilitätsanforderungen ändern.

> [!NOTE]
> Diese Roadmap soll die Produktrichtung kommunizieren. Die hier aufgeführten Funktionen sind geplant, aber nicht garantiert, bis sie offiziell veröffentlicht und in das PDMPublisher Changes Log aufgenommen wurden.

> [!TIP]
> Um die Liste der implementierten Änderungen zu sehen, klicken Sie bitte auf [hier](/src/changeslog.html).

<a id="2026"></a>
## 2026
---
<a id="2026-q2"></a>
### 2026 Q2
<a id="task-launch-file-selection-dialog"></a>
#### Task Launch File Selection Dialog
✅ Umgesetzt

**Applies to: PDM Task**

- Hinzufügen eines interaktiven Startdialogs für Aufgaben, in denen Benutzer aufgefordert werden, Dateien zur Laufzeit anzugeben.
- CSV-Import hinzugefügt, automatische Referenzberechnung, nur anzeigende Zeichenzeilen, startspezifische Dateiformatauswahl und Sichtbarkeit des Exportstandorts.

<a id="scheduled-items-task-page"></a>
#### Geplante Elemente Task Page
✅ Umgesetzt

**Applies to: PDM Task**

- Hinzufügen einer Setup-Seite für geplante Aufgaben, die konfigurierte Dateien verarbeiten müssen, wenn keine Dateien vom PDM-Task-Trigger übergeben werden. Siehe Details [hier](/src/scheduleditems.html).

<a id="parasolid-binary-export"></a>
#### Parasolid Binärexport
✅ Umgesetzt

**Applies to: SOLIDWORKS add-in / PDM Task**

- Zusätzliche Unterstützung für den Export von Parasolid Binärdateien mit der `x_b`-Erweiterung.

<a id="details-page"></a>
#### Details Seite
✅ Umgesetzt

**Applies to: PDM Task**

- Einen Tab zur Detailseite der Aufgabe hinzugefügt, der erfolgreiche Dateien umreißt. Siehe Details [hier](/src/pdmpublisher_task_details.html).

<a id="multi-body-support"></a>
#### Multi-Body Support
✅ Umgesetzt

**Applies to: SOLIDWORKS add-in / PDM Task**

- Geplante Unterstützung für den Export und die Verarbeitung von Mehrkörperteilen, ausgenommen flache Blechmuster.

Ziel: Ende des Q2 2026
---
<a id="2026-q3"></a>
### 2026 Q3
---
<a id="presets-profiles"></a>
#### Presets / Profile
✅ Umgesetzt in 2026.08.08

**Applies to: SOLIDWORKS add-in**

Wiederverwendbare Profile und integrierte Starter-Presets zu PDMPublisher für SOLIDWORKS hinzugefügt.

Profile speichern die Optionen, Anmerkungen und Bedingungen für einen Veröffentlichungsworkflow. Benutzer können Profile erstellen, umbenennen, speichern, exportieren, laden und löschen oder ein Profil aus einer integrierten Voreinstellung erstellen.

Das freigegebene Feature beinhaltet:

- Speichern von Exporteinstellungen als wiederverwendbare Profile
- Export- und Ladeprofile für gemeinsame Export-Workflows
- Erstellen von Profilen für verschiedene Abteilungen, Kunden, Projekte oder Output-Pakete
- Erstellen von Profilen aus den integrierten Voreinstellungen `DXF`, `PDF And Step` und `STEP`
- Wiederverwendung konsistenter Veröffentlichungseinstellungen für Benutzer und Workstations

Siehe [Profile](/src/pdmpublishersolidworks_profiles.html) und [Presets](/src/pdmpublishersolidworks_presets.html) für Setup-Anweisungen.
---
<a id="profile-sharing-by-pin-code"></a>
#### Profilfreigabe nach PIN-Code
✅ Implementiert in 2026.08.10

**Applies to: SOLIDWORKS add-in**

Kurzlebiges Profil-Sharing durch sechsstellige PIN hinzugefügt.

Das freigegebene Feature beinhaltet:

- Teilen ausgewählter Abschnitte Optionen, Anmerkungen und Bedingungen
- Generieren einer sechsstelligen PIN, die 30 Tage lang verfügbar bleibt
- Laden eines gemeinsamen Profils durch PIN und Auswählen, welche Abschnitte enthalten sind
- Speichern des heruntergeladenen Profils lokal und Umgang mit doppelten Profilnamen

Siehe [Profile mit einer PIN teilen](/src/pdmpublishersolidworks_profile_sharing.html) für Anweisungen und Sicherheitshinweise.
---
<a id="2026-q4"></a>
### 2026 Q4
**Applies to: PDM Task**
- Unterstützung für die Planung zum Prozess hinzufügen:
  - Ausgewähltes Verzeichnis
  - Lieblingssuche
---
<a id="2027"></a>
## 2027
---
<a id="2027-q1"></a>
### 2027 Q1
---
<a id="drawing-creator"></a>
#### Zeichnung des Schöpfers
**Applies to: SOLIDWORKS Add-in**

Geplante Unterstützung für eine Drawing Creator-Funktion.

Diese Funktion soll dazu beitragen, die Arbeitsabläufe der Zeichnungserstellung aus SOLIDWORKS-Modellen zu automatisieren und die sich wiederholende manuelle Arbeit beim Erstellen von Zeichnungen für Teile oder Baugruppen zu reduzieren.

Geplante Schwerpunkte sind:

- Erstellen von Zeichnungen aus ausgewählten Modellen
- Anwendung vordefinierter Zeichnungsvorlagen
- Einfügen von Standardmodellansichten
- Einstellen der Zeichenblattskala
- Festlegung von Zeichnungsbogenrändern
- Hinzufügen von Notizen zur Annotationstabelle
- Aktualisierung bestehender Anmerkungstabellennotizen
- Anwenden von Standardnotizenformatierungs- und Platzierungsregeln
- Unterstützt wiederverwendbare Zeichenaufbauregeln
- Erstellung von Zeichnungen für den nachgelagerten Export durch PDMPublisher

Ziel: Ende des Q1 2027
