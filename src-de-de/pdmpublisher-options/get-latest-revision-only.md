---
title: "Holen Sie sich nur die neueste Version | PDMPublisher PDM Task"
description: "Veröffentlichen Sie die neueste aufgezeichnete PDM-Revision und die mit dieser Revision gespeicherten Referenzen anstelle von nicht überarbeiteten Work-in-Progress-Versionen."
ms.date: 09/08/2026
ms.topic: reference
---

# Holen Sie sich nur die neueste Revision

![Nur letzte Revision einstellen](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-property-get-latest-revision-only.png)
Verwenden Sie **Get latest revision only**, wenn eine Aufgabe die neueste aufgezeichnete PDM-Revision anstelle der neuesten eingecheckten Version veröffentlichen muss.

Wenn aktiviert, PDMPublisher:

- Findet die zuletzt erstellte Revision in der PDM-Historie der Datei.
- Ruft die genaue Dateiversion ab, die mit dieser Revision verbunden ist.
- Ruft die Referenzen ab, wie sie mit dieser Version gespeichert wurden.
- Schreibt den ausgewählten Revisionsnamen und die PDM-Versionsnummer in das Task-Log.

<a id="example"></a>
## Beispiel

Angenommen, eine Assembly hat die Revision `B` in der PDM-Version `12`, aber die Versionen `13` bis `15` enthalten unüberarbeitete Arbeiten.

| Einstellung | Von der Task verwendete Version |
| --- | --- |
| **Get latest revision only** aktiviert | Version `12`, einschließlich der mit der Revision `B` gespeicherten Referenzen |
| [Arbeiten mit der neuesten Version](work-with-latest-version.md) aktiviert | Version `15` |

> [!IMPORTANT]
> **Get latest revision only** überschreibt **Work with latest version**. Eine Datei ohne aufgezeichnete PDM-Revision kann nicht exportiert werden, während diese Option aktiviert ist, und die Aufgabe meldet einen Fehler, anstatt eine nicht überarbeitete Version zu veröffentlichen.

Diese Option gilt nur für **PDMPublisher PDM Task**.
