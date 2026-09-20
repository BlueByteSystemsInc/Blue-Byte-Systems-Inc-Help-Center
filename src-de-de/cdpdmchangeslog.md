---
title: "PDMDeploy Change Log | Feature Updates, Verbesserungen & Fixes"
description: "Zeigen Sie das PDMDeploy-Änderungsprotokoll mit detaillierten Feature-Updates, Verbesserungen, Fehlerbehebungen und Verbesserungen in allen Releases an."
ms.date: 07/04/2026
ms.topic: conceptual
---

# PDMDeploy Änderungsprotokoll

<a id="34"></a>
## 34
- Fehler behoben, der sich auf die Berechtigungen von Registrierungsknoten bezieht.

<a id="31"></a>
## 31
*Redesigned Interface und Aktivierungscodes*

- Neue dunkle Schnittstelle über den Add-in-Manager, den Konfigurationsdialog und das Einstellungsfenster.
- Aktivierungscodes: Konfigurieren Sie PDMDeploy, indem Sie den Code aus Ihrer Begrüßungs-E-Mail eingeben, ohne dass weitere E-Mail-Konfigurationsdateien vorhanden sind. Die `.cdg` Customer Configuration File bleibt als Fallback vollständig unterstützt. Der Menübefehl heißt nun *Kundenkonfiguration laden (Aktivierungscode oder Datei)...*
- Verbesserungen des Add-in-Managers:
  - Das Fenster öffnet sich sofort und lädt im Hintergrund. Der blockierende Dialog "Bitte warten" ist weg. Eine Statusleiste zeigt den Live-Fortschritt an (das Lesen des installierten add-ins, dann das Laden vom Server).
  - Neue Status-Spalte: *Nicht installiert*, *Aktualisieren verfügbar* oder *Aktualisiert* auf einen Blick.
  - Die neueste Serverversion wird für jedes Add-in vorgewählt.
  - Kontrollkästchen mit einem Klick und ein Kontrollkästchen zum Auswählen aller im Header.
  - First-Run-Erfahrung: Wenn PDMDeploy nicht konfiguriert ist, zeigt das Fenster das Aktivierungsfeld direkt anstelle einer leeren Liste an.
  - Der Fenstertitel zeigt die PDMDeploy-Version und den Vault-Namen.
- Zuverlässigkeit fixiert:
  - Löschen Sie Fehlermeldungen anstelle von stillen Fehlern beim Laden von Konfigurationen oder Kontaktieren des Servers.
  - Add-in COM-Registrierungsfehler werden jetzt erkannt und gemeldet (zuvor konnten sie stillschweigend fehlschlagen), und die Registrierung verwendet das richtige 64-Bit-Framework.
  - Die Spalte Installierte Version wird unmittelbar nach einer Installation aktualisiert.

<a id="30"></a>
## 30
*CDPDM Add-in ist jetzt PDMDeploy*

- CDPDM wurde **renamed to _PDMDeploy_ in version 30**.
- Dokumentationsupdates, die den neuen Namen und die Versionierung widerspiegeln, sind für **March 2026** geplant.
