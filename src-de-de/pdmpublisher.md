---
title: "PDMPublisher | SOLIDWORKS"
description: "Erfahren Sie mehr über PDMPublisher für SOLIDWORKS PDM Professional, einschließlich unterstützter Exportformate, Eingabedateien, Anforderungen, Installation und Lizenzierung."
ms.date: 08/13/2026
ms.topic: overview
---

# PDMPublisher

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher_logo.png" width="200" height="200"/>

Vielen Dank, dass Sie [PDMPublisher](https://bluebyte.biz/product/pdmpublisher/) gewählt haben!

> [!NOTE]
> [Bitte konsultieren Sie den FAQ-Bereich, um Antworten auf die am häufigsten gestellten Fragen zu erhalten.] ](pdmpublisherfaq.md)


PDMPublisher ist ein SOLIDWORKS PDM-Task-Add-in, mit dem Sie Ihre SOLIDWORKS-Dateien mit erweiterten Filtern speichern können, und bietet Stromversorgungsmöglichkeiten, um benutzerdefinierte Eigenschaften / Datenkarten, Stücklistengrößen auf PDFs zu platzieren und sie zusammenzuführen.

> [!IMPORTANT]
> Diese Seite beschreibt die im PDM-Verwaltungstool SOLIDWORKS konfigurierte Aufgabe. Um das in SOLIDWORKS geöffnete Dokument unter Verwendung wiederverwendbarer Profile zu veröffentlichen, siehe [PDMPublisher für SOLIDWORKS](pdmpublishersolidworks.md).

Siehe [PDM Task vs SOLIDWORKS Add-in](pdmpublisher-product-differences.md) für einen Side-by-Side-Vergleich. Gemeinsame Einstellungen verwenden in beiden Dokumentationsabschnitten die gleichen Referenzseiten, wobei produktspezifische Unterschiede auf jeder Seite angezeigt werden.

<a id="supported-extensions"></a>
## Unterstützte Erweiterungen
Mit der PDM-Task-Version von PDMPublisher können Sie in die folgenden Formate exportieren:

- PDF und MBD: `pdf`, `_3dpdf`
- Zeichnungen: `dwg`, `dxf`
- eDrawings: `eprt`, `easm`, `edrw`
- CAD und Austausch: `step`, `igs`, `stl`, `x_t`, `x_b`, `sat`, `3dxml`, `3mf`, `ifc`, `u3d`, `wrl`, `vda`, `cgr`, `hcg`, `hsf`
- Web und Bilder: `html`, `xaml`, `jpg`, `tif`, `bmp`, `ai`, `psd`

Das `pdf`-Format exportiert SOLIDWORKS-Zeichnungen und konvertiert Microsoft Word- und Excel-Dokumente in PDF. Die `_3dpdf`-Auswahl exportiert SOLIDWORKS Teile und Baugruppen als 3D PDF.

Zeichnungsdateien können als `dxf` exportiert werden. Um fertigungsfertige flache Muster aus Blechteilen zu erstellen, verwenden Sie [Export Sheet Metal Parts to 1:1 Flat Pattern DXF](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md).

Das `html` Format erfordert eDrawings Professional. Siehe [Dateiformate](pdmpublisher-options/file-formats.md) für Formatnamen, Quelldateiverhalten, Screenshots und versionenspezifische Notizen.

<a id="input-files"></a>
## Eingabedateien
PDMPublisher kann einzelne SOLIDWORKS-Teildateien (`.sldprt`), Zeichnungsdateien (`.slddrw`) und Baugruppen (`.sldasm`) zusammen mit all ihren Referenzen verarbeiten. Dies stellt sicher, dass alle notwendigen Komponenten während der Verarbeitung korrekt behandelt werden, unabhängig davon, ob Sie eine einzelne Datei oder eine gesamte Assemblystruktur konvertieren.

- Single Part (`.sldprt`): Verarbeitet und konvertiert eine Teiledatei in die oben genannten Erweiterungen.
- Einzelzeichnung (`.slddrw`): Verarbeitet einzelne Zeichnungen.
- Baugruppe mit Referenzen (`.sldasm`): Schließt automatisch alle referenzierten Teile und Baugruppen und deren Zeichnungen ein.
- Microsoft Office Word und Excel: Office-Dokumente zu PDF.


<a id="requirements"></a>
## Anforderungen

Die minimale Version PDMPublisher unterstützt SOLIDWORKS PDM Professional 2018 SP0.
> [!TIP]
> Wir empfehlen Ihnen dringend, die neueste Version von PDM Professional zu verwenden.


<a id="installation"></a>
## Installation

Um das PDMPublisher zu installieren, haben Sie zwei Optionen:

1. [Verwendung von PDMDeploy](/src/updateaddinswithcdpdm.html):
Sie können [PDMDeploy](/src/cdpdm.html) verwenden, um das Add-in direkt aus der Cloud zu installieren. Dies ist die empfohlene Methode.

2. [Verwendung der CEX-Datei](/src/installingpdmaddins.html):
Alternativ können Sie die `.cex`-Datei aus der * Bestell-E-Mail * herunterladen, die Sie nach dem Kauf erhalten haben. Importieren Sie nach dem Download die `.cex`-Datei über das Administrationstool in Ihren Tresor, um die Installation abzuschließen.
    > [!WARNING]
    > [Achten Sie darauf, die heruntergeladene Datei zu entsperren.](/src/pdmqa.html)

<a id="consuming-your-license-key"></a>
## Verbrauchen Sie Ihren Lizenzschlüssel

- Der step erfordert, dass Sie PDMPublisher zu Ihrem Tresor hinzugefügt haben.
- Bevor Sie mit der Verwendung von PDMPublisher beginnen können, müssen Sie das Produkt mit dem in der * Bestell-E-Mail * angegebenen Lizenzschlüssel aktivieren. Um Ihre Lizenz zu aktivieren oder zu deaktivieren, folgen Sie bitte den Anweisungen in diesem [Artikel](/src/licensespdmpublisher.html).

<a id="creating-your-first-task"></a>
## Erstellen Sie Ihre erste Aufgabe
Bitte folgen Sie den Anweisungen in diesem [Artikel](/src/propertiespagepdmpublisher.html).

<a id="theme-settings"></a>
## Themeneinstellungen

PDMPublisher kann optional dem Windows Light oder Dark App Theme folgen. Die Theme-Synchronisation wird über das PDMPublisher-Additionsmenü im SOLIDWORKS PDM-Administrationstool gesteuert. Siehe [Theme Settings](pdmpublisher-theme-settings.md).

<a id="support"></a>
## Unterstützung
Für zusätzlichen Support kontaktieren Sie uns bitte über die [Kontakt](https://bluebyte.biz/contact/) Seite oder über unsere Support-E-Mail support@bluebytesystemsinc.zohodesk.com.

> [!NOTE]
> Bevor Sie sich melden, empfehlen wir Ihnen dringend, den Inhalt dieser Seite zu lesen. Wir haben diese Hilfethemen zusammengestellt, um auf die häufig gestellten Fragen unserer Kunden zu antworten.
