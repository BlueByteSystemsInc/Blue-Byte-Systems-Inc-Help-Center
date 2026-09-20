---
title: "BOM Manager | PDMPublisher für SOLIDWORKS"
description: "Konfigurieren Sie Stücklistenspalten, Anzeigetyp, Gruppierung und Komponentenausschlussbedingungen in PDMPublisher für SOLIDWORKS."
ms.date: 09/19/2026
ms.topic: how-to
---

# BOM Manager

Öffnen Sie **PDMPublisher > BOM Manager**, um die Stückliste für die aktive Baugruppe zu überprüfen und zu bearbeiten.

![BOM Manager Hauptfenster zeigt eine eingerückte Baugruppe BOM](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Main_window_Default_Light_100.png)
Das Hauptfenster bietet die BOM-Typ- und Spaltenvorlagen-Selektoren, Eigenschaftsspalten, Such- und Filtersteuerelemente, Gruppierung, Komponentenausschlüsse, Excel-Import und Export und **Apply**. Wählen Sie die Schaltfläche, um die unten beschriebenen persistenten BOM Manager-Einstellungen zu öffnen.

Öffnen Sie **PDMPublisher > Settings > BOM Manager** unter **Bill Of Materials**.

![BOM Manager Einstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_BOM_Manager_Default_Light_100.png)
BOM Manager definiert die Standardstruktur, die verwendet wird, wenn PDMPublisher Stücklisteninformationen erzeugt oder anzeigt.

| Einstellung | Was sie kontrolliert |
| --- | --- |
| **Default column template** | Wählen Sie den gespeicherten Satz und die Reihenfolge der Stücklistenspalten aus. |
| **Default BOM display type** | Wählen Sie die SOLIDWORKS-BOM-Struktur aus, z. B. eine eingerückte Hierarchie. |
| **Group by** | Gruppen von Zeilen nach Text, Eigenschaften oder Platzhaltern. Lassen Sie es leer für ein flaches ungruppiertes Ergebnis. |
| **Ignore Components** | Öffnet den Zustandseditor, mit dem übereinstimmende Komponenten aus der Stückliste weggelassen werden. |

<a id="configure-the-defaults"></a>
## Defaults konfigurieren

1. Wählen Sie ein **Default column template**.
2. Wählen Sie die **Default BOM display type**, die für die Montagestruktur geeignet ist.
3. Wenn Zeilen gruppiert werden sollen, geben Sie einen **Group by**-Ausdruck ein und verwenden Sie das Platzhaltermenü, um Dokumentwerte einzufügen.
4. Wählen Sie **Ignore Components**, um Ausschlüsse zu definieren. Wählen Sie, ob eine Bedingung oder alle Bedingungen übereinstimmen müssen, und fügen Sie dann die erforderlichen Eigentumsregeln hinzu.
5. Wählen Sie **OK**, um die Einstellungen zu speichern.

![Bedingungseditor für Komponenten für BOM Manager ignorieren](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Ignore_components_Default_Light_100.png)
Ausschlussbedingungen beeinflussen die BOM-Mitgliedschaft; sie unterdrücken oder löschen keine Komponenten in der SOLIDWORKS-Baugruppe.
