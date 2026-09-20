---
title: "Verwenden Sie Drawing-Derived BOM | PDMPublisher Optionen"
description: "Verwenden Sie die zuerst genannte Stückliste, die in einer Assemblyzeichnung gespeichert ist, um PDMPublisher-Referenzen, Konfigurationen und Größen zu bestimmen."
ms.date: 08/19/2026
ms.topic: reference
---

# Verwendung der aus Zeichnungen abgeleiteten Stückliste

![Verwenden Sie Zeichnung abgeleitete Stückliste Einstellung](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-034-property-use-drawing-derived-bom.png)
Verwendet die erste abgeleitete (genannte) Stückliste, die in der zugehörigen SOLIDWORKS-Zeichnung gespeichert ist, anstatt die Stückliste direkt aus der Assembly zu berechnen.

> [!IMPORTANT]
> Diese Option ist nur in **PDMPublisher for SOLIDWORKS PDM Professional** verfügbar. Es wird nicht im SOLIDWORKS-Add-in angezeigt.

Verwenden Sie diese Option, wenn die Stückliste die Baugruppenstruktur und die Mengen definiert, die die Veröffentlichung vorantreiben sollen. Dies ermöglicht es einer auf einer Baugruppe gestarteten Aufgabe, ihre Stückliste aus der Zeichnung der Baugruppe zu erhalten.

<a id="how-pdmpublisher-finds-the-drawing"></a>
## Wie PDMPublisher Findet die Zeichnung

PDMPublisher sucht zuerst die Zeichnung, die mit der Baugruppe verbunden ist:

1. Wenn [PDM Search to Locate Drawings](use-pdm-search-to-locate-drawings.md) aktiviert ist, durchsucht PDMPublisher die unmittelbaren **Where Used**-Eltern der Assembly nach einer Zeichnung.
2. Wenn die Suche keine Zeichnung zurückgibt oder die Suchoption deaktiviert ist, sucht PDMPublisher im Assemblyordner nach einer Zeichnung mit demselben Basisnamen.

Zum Beispiel:

```text
Assembly: C:\PDMVault\Projects\Speaker\Speaker.sldasm
Drawing:  C:\PDMVault\Projects\Speaker\Speaker.slddrw
```

<a id="how-the-bom-is-selected"></a>
## Wie die Stückliste ausgewählt wird

Nach dem Auffinden der Zeichnung fordert PDMPublisher die abgeleiteten benannten Stücklisten an, die in dieser Zeichnung gespeichert sind, und verwendet die erste Stückliste, die von SOLIDWORKS PDM zurückgegeben wurde. Es lädt die aktuelle Ansicht dieser Stückliste und setzt dann die Standardreferenz, Konfiguration, Menge und Zustandsverarbeitung fort.

> [!WARNING]
> Wenn eine Zeichnung mehrere abgeleitete Stücklisten enthält, verwendet PDMPublisher die erste, die von PDM zurückgegeben wird. Bestätigen Sie, dass die vorgesehene benannte Stückliste die erste verfügbare Stückliste ist, bevor Sie sich auf diese Option verlassen.

<a id="requirements"></a>
## Anforderungen

- Die Aufgabe muss eine SOLIDWORKS-Assembler verarbeiten.
- Die Assembly muss eine zugehörige SOLIDWORKS-Zeichnung in PDM haben.
- Die Zeichnung muss mindestens eine gespeicherte abgeleitete (genannte) Stückliste enthalten.
- Die Stücklistenzeilen müssen Referenzen und Konfigurationen identifizieren, die PDM auflösen kann.
- Eine gültige berechnete Stückliste [Template](template.md) muss für die Fallback-Verarbeitung konfiguriert bleiben.

<a id="calculated-bom-fallback"></a>
## Berechneter BOM Fallback

Wenn PDMPublisher die Zeichnung nicht finden kann, die Zeichnung keine verwendbare Stückliste mit dem Namen BOM hat, die Stückliste nicht geladen werden kann oder die Stückliste keine verwendbaren Zeilen enthält, fällt sie auf die konfigurierte berechnete Stückliste zurück.

> [!IMPORTANT]
> Lassen Sie **Template** nicht leer. Die Aufgabe erfordert noch eine gültige berechnete Stückliste Vorlage, wenn Zeichnung abgeleitete Stückliste Verarbeitung nicht verfügbar ist.

Die gewählte [Berechnungsmethode](calculation-method.md) gilt, wenn diese berechnete Stückliste verwendet wird.

<a id="logs"></a>
## Protokolle

Task-Logs präfixieren diese Nachrichten mit `Drawing-derived BOM:`. Die Logbuchaufzeichnungen:

- Wie die Zeichnung lokalisiert wurde
- Welche Namen wurden gefunden?
- Welche Stückliste wurde ausgewählt
- Wie viele Zeilen wurden geladen
- Warum wurde bei Bedarf die berechnete Stückliste verwendet?

Überprüfen Sie diese Einträge, wenn die exportierte Referenzliste oder die exportierten Mengen nicht mit der erwarteten Stückliste übereinstimmen.
