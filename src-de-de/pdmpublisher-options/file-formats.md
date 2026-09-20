---
title: "Dateiformate | PDMPublisher Optionen"
description: "Wählen Sie die Dateiformate, die von der PDMPublisher PDM-Task oder dem SOLIDWORKS-Add-in exportiert werden."
ms.date: 08/31/2026
ms.topic: reference
---

# Dateiformate

![Dateiformateinstellung in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Wählen Sie die Ausgabeformate aus, die während der Veröffentlichung erstellt wurden. Beide Produkte können mehrere Formate in einem Job generieren.

> [!NOTE]
> Diese Einstellung wird von **PDM task** und **SOLIDWORKS add-in** geteilt. Die Aufgabe kann ausgewählte PDM-Dateien, einschließlich unterstützter Office-Dokumente, verarbeiten. Das Add-in exportiert das derzeit geöffnete SOLIDWORKS-Dokument und seine aufgelösten Referenzen.

![Dateiformat-Dropdownliste in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Dropdown13_Light_100.png)
<a id="format-names-and-icons"></a>
## Format Namen und Icons

Der Selektor zeigt einen beschreibenden Formatnamen, seine Ausgabeerweiterung und ein Dateitypsymbol an. Das Symbol wird von Windows bereitgestellt und kann mit den auf dem Computer installierten Anwendungen und Dateizuordnungen variieren. Es ist nur eine visuelle Kennung und ändert den Export nicht.

<a id="supported-outputs"></a>
## Unterstützte Outputs

PDMPublisher kann SOLIDWORKS-Dateien in die in der **File Formats**-Liste gezeigten Formate exportieren. Die PDM-Task unterstützt auch das Exportieren von Microsoft Word- und Excel-Dokumenten in PDF, wenn diese Office-Dokumente von der Aufgabe verarbeitet werden.

Der vollständige Selektor ist wie folgt organisiert:

| Gruppe | Formate |
| --- | --- |
| PDF und MBD | Adobe PDF (`pdf`), 3D PDF - MBD (`_3dpdf`) |
| Zeichnungen | DWG (`dwg`), DXF (`dxf`) |
| [eDrawings](edrawings-export-settings.md) | eDrawings Teil (`eprt`), eDrawings Montage (`easm`), eDrawings Zeichnung (`edrw`) |
| CAD und Austausch | STEP (`step`), IGES (`igs`), STL (`stl`), Parasolid Text (`x_t`), Parasolid Binary (`x_b`), ACIS (`sat`), 3D XML (`3dxml`), 3MF (`3mf`), IFC (`ifc`), Universal 3D (`u3d`), VRML (`wrl`), VDAFS (`vda`), CATIA Graphics (`cgr`), HCG (`hcg`), HOOPS HSF (`hsf`) |
| Web und Bilder | HTML (`html`), Microsoft XAML (`xaml`), JPEG (`jpg`), TIF (`tif`), Bitmap (`bmp`), Adobe Illustrator (`ai`), Adobe Photoshop (`psd`) |

<a id="added-in-version-20260805"></a>
## Hinzugefügt in Version 2026.08.05

Version `2026.08.05` fügt diese Ausgabeoptionen hinzu:

- ACIS (`sat`)
- 3D XML (`3dxml`)
- VRML (`wrl`)
- VDAFS (`vda`)
- CATIA Grafik (`cgr`)
- HCG (`hcg`)
- HOOPS HSF (`hsf`)
- Microsoft XAML (`xaml`)
- JPEG (`jpg`)
- TIF (`tif`)
- Adobe Illustrator (`ai`)
- Adobe Photoshop (`psd`)

> [!NOTE]
> PDMPublisher entfernt Formate, die für den Quelldokumenttyp nicht gültig sind. Einige Formate hängen auch von der SOLIDWORKS-Version und den auf dem Computer installierten Exportfunktionen ab. Die Task verwendet die konfigurierte SOLIDWORKS-Version; das Add-in verwendet die aktuell laufende Version.

<a id="edrawings-output"></a>
## eDrawings Output

PDMPublisher PDM Task `2026.08.12` behebt die SOLIDWORKS-Einstellungen, die beim Erstellen von `.eprt`-, `.easm`- und `.edrw`-Dateien angewendet wurden. Siehe [eDrawings Export Settings](edrawings-export-settings.md) für die betroffenen Einstellungen und Task-Host-Anforderungen.

Diese Korrektur gilt nur für die PDM-Task. Es ändert sich nicht PDMPublisher für SOLIDWORKS.

Wenn SOLIDWORKS ein Exportformat unterstützt, das derzeit nicht hier aufgeführt ist, wenden Sie sich an Blue Byte Systems und fordern Sie Unterstützung für dieses Format an:

- [Contact Blue Byte Systems](https://bluebyte.biz/contact/)
- [E-Mail-Support](mailto:support@bluebytesystemsinc.zohodesk.com)

<a id="pdf-output"></a>
## PDF Output

Wenn `PDF` für ein SOLIDWORKS-Teil oder eine Baugruppe ausgewählt wird, sucht PDMPublisher nach einer Zeichnung mit dem gleichen Namen im selben Ordner.

Zum Beispiel, wenn die Aufgabe läuft auf:

`C:\PDMVault\Projects\1001\Bracket.SLDPRT`

PDMPublisher prüft:

`C:\PDMVault\Projects\1001\Bracket.SLDDRW`

Wenn die passende Zeichnung gefunden wird, öffnet PDMPublisher die Zeichnung und druckt/exportiert die Zeichnung in PDF. Auf diese Weise kann eine Aufgabe von einem Modell ausgeführt werden, während immer noch die Zeichnung PDF Benutzer erwarten.

> [!NOTE]
> In der PDM-Task kann [PDM-Suche verwenden, um Zeichnungen zu finden](use-pdm-search-to-locate-drawings.md) eine Zeichnung finden, die sich nicht im selben Ordner befindet. Diese Task-only-Suchoption ist im SOLIDWORKS-Add-in nicht verfügbar.

<a id="dxf-output"></a>
## DXF Output

Wenn `DXF` für eine Zeichnung ausgewählt ist, exportiert PDMPublisher die Zeichnung als DXF.

> [!WARNING]
> Das Zeichnen von DXF ist nicht dasselbe wie ein flaches Blechmuster DXF. Wenn Sie ein 1:1 flaches Muster DXF aus Blechteilen wünschen, aktivieren Sie stattdessen im Abschnitt Export [Export Sheet Metal Parts to 1:1 Flat Pattern DXF](export-sheet-metal-flat-pattern-dxf.md).

<a id="flat-pattern-dxf"></a>
## Flaches Muster DXF

Das flache Muster DXF Export wird durch seine eigene Option am Ende des Exportabschnitts kontrolliert: [Export Sheet Metal Parts to 1:1 Flat Pattern DXF](export-sheet-metal-flat-pattern-dxf.md).

Sie müssen nicht `DXF` in **File Formats** auswählen, damit diese Funktion mit flachen Mustern ausgeführt werden kann.
