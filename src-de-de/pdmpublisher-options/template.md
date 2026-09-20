---
title: "Vorlage | PDMPublisher Optionen"
description: "Wählen Sie die Stücklistenvorlage aus, die für die mengenbewusste Veröffentlichung verwendet wird."
ms.date: 08/10/2026
ms.topic: reference
---

# Meldebogen

![Template Setting](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-030-property-template.png)
Wählen Sie die Stücklistenvorlage oder das Layout aus, das für die mengenbewusste Veröffentlichung verwendet wird.

![Template Dropdownliste](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-dropdown-002-template.png)
Das BOM-Layout-Icon ist eine visuelle Kennung. Der ausgewählte Template-Name bestimmt, welches PDM-BOM-Layout PDMPublisher verwendet.

Die ausgewählte Stücklistenvorlage wird verwendet, wenn PDMPublisher Assemblyreferenzen, Konfigurationen und Größen berechnen muss.

Wenn [Use Drawing-Derived BOM](use-drawing-derived-bom.md) aktiviert ist, versucht PDMPublisher zunächst, die erste benannte BOM zu lesen, die in der zugehörigen Zeichnung gespeichert ist. Diese Vorlage bleibt erforderlich, da PDMPublisher sie verwendet, um die Stückliste zu berechnen, wenn die Zeichnung oder eine verwendbare abgeleitete Stückliste nicht verfügbar ist.

Dies ist am wichtigsten, wenn [Exportreferenzen zu Dateiformaten einzeln](export-references-individually.md) aktiviert ist.

Verwenden Sie [Berechnungsmethode](calculation-method.md), um zu steuern, ob die Referenz- und Mengenberechnung As-Built-Referenzen oder die neuesten Referenzen verwendet.

<a id="required-bom-columns"></a>
## Erforderliche Stücklistenspalten

Die Stückliste muss die Werte enthalten, die PDMPublisher benötigt, um jede referenzierte Datei zu identifizieren und die Menge zu berechnen.

![BOM Template Setting](https://pdmpublisher.com/help/images/bomsetting.png)
| Erforderlicher Wert | Warum es gebraucht wird |
|---|---|
| `<Name>` | Identifiziert die referenzierte Datei oder Komponente. |
| `<Configuration>` / Konfigurationsname | Bestimmt die referenzierte Konfiguration. |
| Menge / `<RefCount>` | Anzugeben ist die für referenzbewusste Ausfuhren verwendete Menge. |

![BOM Layout Spalten](https://pdmpublisher.com/help/images/bom.png)
> [!IMPORTANT]
> Wenn in der ausgewählten Stücklistenvorlage der Name, die Konfiguration oder die Zahlenspalte fehlt, ist PDMPublisher möglicherweise nicht in der Lage, Assemblyreferenzen korrekt zu berechnen.
