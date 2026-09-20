---
title: "Referenzen in Dateiformate individuell exportieren | PDMPublisher Optionen"
description: "Export von referenzierten Dokumenten als eigenständige Ausgabedateien."
ms.date: 08/09/2026
ms.topic: reference
---

# Referenzen in Dateiformate individuell exportieren

![Exportreferenzen individuell in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox3_Export_references_to_file_formats_individually_Light_100.png)
Exportiert referenzierte Komponenten als eigene Dateien in den ausgewählten Formaten.

> [!NOTE]
> Diese Einstellung wird von **PDM task** und **SOLIDWORKS add-in** geteilt, aber die beiden Produkte erhalten ihre Montagereferenzen unterschiedlich.

In der Praxis wird dies verwendet, wenn ein Assembly-Publish auch eine Ausgabe für die Komponenten in dieser Assembly erstellen soll. Es ist am nützlichsten für Baugruppen mit wiederholten Komponenten, mehreren Konfigurationen oder verschachtelten Referenzen.

<a id="requirements-by-product"></a>
## Anforderungen nach Produkt

| Produkt | Anforderungen |
| --- | --- |
| **PDM task** | Führen Sie die Aufgabe auf einer Assembly aus und wählen Sie eine Stückliste [Template](template.md) mit dem erforderlichen Namen, der Konfiguration und den Spalten für die Anzahl aus. |
| **SOLIDWORKS add-in** | Öffnen Sie die Assembly in SOLIDWORKS. Das Add-in liest die aufgelösten Assembly-Referenzen direkt und erfordert nicht die PDM-Task BOM Template-Einstellung. |

In beiden Produkten können unterdrückte, ungelöste, ausgeschlossene oder zustandsgefilterte Komponenten den Satz der verarbeiteten Referenzen ändern.

<a id="bom-template"></a>
## BOM Meldebogen

> [!IMPORTANT]
> Für die **PDM task** ist es wichtig, die Option PDMPublisher [Template](template.md) zu konfigurieren, bevor Sie diese Einstellung aktivieren. Wenn die Vorlage nicht ausgewählt ist oder die Spalten Name, Konfiguration und Menge nicht enthalten, kann PDMPublisher fehlende oder falsche Referenzdateien exportieren. Diese Anforderung gilt nicht für das SOLIDWORKS Add-in.

Die PDM-Task kann optional die zuerst genannte Stückliste verwenden, die in der zugehörigen Montagezeichnung gespeichert ist. Siehe [Use Drawing-Derived BOM](use-drawing-derived-bom.md). Das konfigurierte Template bleibt als Fallback erforderlich.

Für Vorlagen-Einrichtungsanforderungen siehe [Template](template.md).

> [!NOTE]
> Diese Einstellung ist unabhängig von PDF Merging und ZIP Archivierung.
