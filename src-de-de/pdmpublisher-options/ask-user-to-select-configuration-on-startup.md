---
title: "Bitten Sie den Benutzer, die Konfiguration beim Task-Start auszuwählen | PDMPublisher-Optionen"
description: "Fordern Sie die Benutzer auf, vor der Veröffentlichung eine Konfiguration auszuwählen."
ms.date: 08/09/2026
ms.topic: reference
---

# Bitten Sie den Benutzer, die Konfiguration beim Task-Start auszuwählen

![Bitten Sie den Benutzer, die Konfigurationseinstellung auszuwählen](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-006-property-ask-user-to-select-configuration-on-startup.png)
Fordert den Benutzer auf, beim Start einer Aufgabe eine Konfiguration auszuwählen.

![Bitten Sie den Benutzer, den Konfigurationsdialog auszuwählen](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/ask-user-specify-configuration-dialog.png)
Verwenden Sie dies für einfache Fälle, in denen der Benutzer nur einen Konfigurations- und Mengenmultiplikator auf der Maschine auswählen muss, die die Aufgabe gestartet hat.

- **Configuration** wählt aus, welche Modellkonfiguration exportiert werden soll.
- Die ausgewählte Konfiguration wird für den Export, Variablenwerte und Dateinamen verwendet.
- **Custom Quantity Multiplier** multipliziert den Platzhalter `(BOMQuantity)`.
- Beispiel: Wenn `(BOMQuantity)` `2` ist und der Multiplikator `3` ist, verwendet die Aufgabe `6`.
- Wenn die Aktivitätsverfolgung aktiviert ist, merkt das Protokoll an, dass ein benutzerdefinierter Mengenmultiplikator verwendet wurde.
- Wählen Sie `OK`, um fortzufahren, oder `Cancel`, um vor der Veröffentlichung zu stoppen.

> [!NOTE]
> [Ask User to Specify Files on Task Launch](ask-user-to-specify-files-on-task-launch.md) überschreibt diese Option, da sie Dateien, Konfigurationen, Formate und den Exportspeicherort steuert.
