---
title: "Blätter zum Exportieren | PDMPublisher Optionen"
description: "Wählen Sie aus, welche Zeichnungsblätter exportiert werden, und verstehen Sie den Fallback für alle Blätter, wenn keine Namen übereinstimmen."
ms.date: 08/19/2026
ms.topic: reference
---

# Blätter zum Export

![Sheets to export setting in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Steuert, ob Zeichnung PDF Exporte enthalten alle Blätter oder nur Blätter, deren Namen ein Muster entsprechen.

> [!NOTE]
> Diese Einstellung ist sowohl im **PDM task** als auch im **SOLIDWORKS add-in** verfügbar.

![Sheets to export Dropdownliste in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Dropdown14_Light_100.png)
Optionen:

- `All sheets` exportiert jedes Blatt in der Zeichnung.
- `Sheets matching name` exportiert Blätter, die mit [Sheet Name Pattern](sheet-name-pattern.md) übereinstimmen. Wenn keine Blätter übereinstimmen, exportiert PDMPublisher alle Blätter.

<a id="matching-fallback"></a>
## Matching Fallback

- Eine Zeichnung mit einem Blatt exportiert immer ihr einziges Blatt, ohne das Muster zu bewerten.
- Eine Zeichnung mit zwei oder mehr Blättern exportiert nur die übereinstimmenden Blätter, wenn ein oder mehrere Namen übereinstimmen.
- Wenn eine Zeichnung mit zwei oder mehr Blättern keine übereinstimmenden Blattnamen hat, exportiert PDMPublisher jedes Blatt und zeichnet den Fallback im Protokoll auf.

> [!IMPORTANT]
> Ein Muster, das zu nichts passt, erzeugt keine leere Blattauswahl mehr. Überprüfen Sie das Task-Log oder die Registerkarte Logs, wenn alle Blätter unerwartet exportiert wurden.

Verwenden Sie `Sheets matching name`, wenn Zeichnungen Fertigungs-, Referenz- oder interne Blätter enthalten, die nicht exportiert werden sollen.
