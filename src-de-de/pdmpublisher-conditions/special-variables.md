---
title: "Besondere Variablen | PDMPublisher Bedingungen"
description: "Integrierte Variablen verfügbar in PDMPublisher Bedingungen."
ms.date: 08/09/2026
ms.topic: reference
---

# Besondere Variablen

Spezielle Variablen lassen Bedingungen allgemeine Dateiinformationen überprüfen, ohne dass eine PDM-Variable erforderlich ist.

Das SOLIDWORKS-Add-in enthält integrierte Werte und benutzerdefinierte Eigenschaften, die über das aktive Dokument und seine Referenzen verfügbar sind. Im Dropdownliste werden nur Werte angezeigt, die im aktuellen Dokumentkontext verfügbar sind.

![Bedingungsvariablenauswahl in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Dropdown2_Light_100.png)
Gemeinsame Sondervariablen sind:

- `FileName`
- `FilePath`
- `FolderName`
- `FolderPath`
- `ConfigurationName`

Verwenden Sie diese, wenn die Bedingung von allgemeinen Datei- oder Konfigurationsinformationen abhängt. PDM-Werte sind nur verfügbar, wenn das Add-in einen zutreffenden PDM-Kontext hat und der Wert im Menü erscheint.
