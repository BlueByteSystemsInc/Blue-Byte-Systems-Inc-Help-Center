---
title: "Export von Blechteilen nach 1:1 Flat Pattern DXF | PDMPublisher Optionen"
description: "Exportieren Sie flache Blechmuster als 1:1 DXF-Dateien."
ms.date: 08/13/2026
ms.topic: reference
---

# Export von Blechteilen nach 1:1 Flat Pattern DXF

![Export Blech flache Muster Einstellung in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox7_Export_sheet_metal_parts_to_1_1_flat_pattern_DXF_Light_100.png)
Exportiert Blechteile als 1:1 flache DXF-Dateien.

> [!NOTE]
> Diese Einstellung und der Dialog Flat Pattern Settings werden von **PDM task** und **SOLIDWORKS add-in** geteilt.

![Aktuelles Blechflachmustereinstellungsdialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Sheet_metal_Default_Light_100.png)
<a id="sheet-metal-flat-pattern-settings"></a>
## Flache Blechmustereinstellungen

Wählen Sie **Flat Pattern Settings** neben der Hauptoption, um zu steuern, welche Entitäten PDMPublisher in die DXF schreibt.

| Option | Was es tut |
| --- | --- |
| **Export flat-pattern geometry** | Exportiert das abgeflachte Außenprofil, interne Ausschnitte und andere sichtbare flache Ränder. Dies ist der normale Ausgangspunkt für eine Fertigung DXF und wird standardmäßig ausgewählt. |
| **Include hidden edges** | Fügt Kanten hinzu, die im flachen Muster verborgen sind. Lassen Sie dies für die meisten Laser-, Plasma- oder Waterjet-Workflows frei, es sei denn, der nachgelagerte Prozess benötigt speziell versteckte Geometrie. |
| **Export bend lines** | Fügt die Biegelinien aus dem flachen SOLIDWORKS-Muster hinzu, so dass die Fertigung erkennen kann, wo Biegungen auftreten. |
| **Include sketches** | Enthält sichtbare Skizzeneinheiten aus dem Blechteil im exportierten DXF. Verwenden Sie dies für Herstellungsmarken oder andere Skizzengeometrie, die das Profil begleiten müssen. |
| **Merge coplanar faces** | Verschmelzen benachbarter Flächen, die auf derselben Ebene liegen, wodurch unnötige Linien zwischen diesen koplanaren Regionen entfernt werden. |
| **Export library features** | Enthält Geometrie, die von den SOLIDWORKS-Bibliotheksfunktionen erstellt wurde. |
| **Export forming tools** | Einschließlich Geometrien, die Formwerkzeugmerkmale wie Lamellen, Lanzen, Ebbosse oder ähnliche geformte Merkmale darstellen. Das genaue Ergebnis hängt auch von den SOLIDWORKS Blechdokumenteinstellungen des Teils ab. |
| **Export bounding box** | Fügt die rechteckige Begrenzungsbox um das flache Muster hinzu. Dies kann nützlich sein, um die Bestandsgröße oder das Nesting zu schätzen. |
| **Only export the inner diameter of countersink holes (Hole feature)** | Für Senken, die mit dem SOLIDWORKS Hole Wizard erstellt wurden, wird der Durchmesser des inneren Lochs exportiert und die größere Senkkontur weggelassen. Dies kann zu einer saubereren Schneidgeometrie führen, wenn die Senke in einem späteren Vorgang erstellt wird. |
| **Export flat pattern bodies separately (Multi-body sheet metal parts)** | Reserviert für den Export jedes Blechkörpers in eine separate Datei. Diese Funktion ist im aktuellen Dialog mit **not implemented yet** gekennzeichnet und sollte nicht verwendet werden. |
| **Append `-FlatPattern` to the flat pattern DXF file name** | Fügt `-FlatPattern` vor `.dxf` hinzu. Aktivieren Sie es, wenn eine Zeichnung und das zugehörige Blechteil beide in DXF exportieren können, wodurch verhindert wird, dass eine Ausgabe die andere überschreibt. |

> [!TIP]
> Für eine typische Herstellung DXF beginnen Sie mit **Export flat-pattern geometry** und **Export bend lines**. Fügen Sie Skizzen, Formwerkzeuge oder die Begrenzungsbox nur hinzu, wenn Ihr Herstellungsprozess diese Entitäten verbraucht.

<a id="model-views-to-export"></a>
## Modellansichten zum Exportieren

Im unteren Bereich des Dialogs können Sie SOLIDWORKS Modellansichten in DXF exportieren. Die vordefinierten Optionen sind:

| Ansicht | Abgebildete Richtung |
| --- | --- |
| `*Front` | Vorderansicht |
| `*Back` | Rückansicht |
| `*Top` | Draufsicht |
| `*Bottom` | Unteransicht |
| `*Left` | linke Ansicht |
| `*Right` | Rechtsansicht |
| `*Isometric` | Isometrische Ansicht |

Wählen Sie das Kontrollkästchen neben jeder Ansicht, die Sie exportieren möchten.

> [!IMPORTANT]
> Durch die Auswahl einer oder mehrerer Modellansichten wird der Export von einem flachen Blechmusterexport in einen SOLIDWORKS-Annotationsansichtsexport geändert. Wenn Ihr Ziel ein herstellungsbereites ungefaltetes Profil ist, lassen Sie alle Modellansichten gelöscht und verwenden Sie die oben genannten Einstellungen für flache Muster.

<a id="add-a-custom-view"></a>
### Hinzufügen einer benutzerdefinierten Ansicht

Sie können auch eine benannte Ansicht exportieren, die im SOLIDWORKS-Teil gespeichert ist:

1. Geben Sie den genauen SOLIDWORKS-Ansichtsnamen im Textfeld ein.
2. Aktivieren Sie das Kontrollkästchen neben dem Textfeld, wenn die neue Ansicht sofort aktiviert werden soll.
3. Wählen Sie **+**, um die Ansicht zur Liste hinzuzufügen.
4. Um eine benutzerdefinierte Ansicht zu entfernen, geben Sie deren Namen ein und wählen Sie **-**.

Benutzerdefinierte Ansichtsnamen müssen mit den im SOLIDWORKS-Modell gespeicherten Namen übereinstimmen. Die Standardansichten verwenden ihre SOLIDWORKS API-Namen, einschließlich des führenden `*`.

<a id="recommended-configurations"></a>
## Empfohlene Konfiguration

| Ziel | empfohlene Auswahl |
| --- | --- |
| Grundschneidprofil | **Export flat-pattern geometry** |
| Schneiden und Biegen | **Export flat-pattern geometry** und **Export bend lines** |
| Herstellungszeichen enthalten | **Include sketches** hinzufügen |
| Gebildete Merkmale | **Export forming tools** hinzufügen |
| Erforderliche Bestandsgröße | **Export bounding box** hinzufügen |
| Vermeiden Sie eine Zeichnung DXF Dateiname Kollision | **Append `-FlatPattern` to the flat pattern DXF file name** aktivieren |
| Exportieren einer projizierten Modellansicht anstelle des entfalteten Musters | Wählen Sie den erforderlichen Eintrag unter **Model views to export** |

> [!NOTE]
> Das DXF-Dateiformat muss nicht separat für diese Funktion mit flachen Mustern ausgewählt werden.

Die ersten acht Geometriesteuerungen und die Bounding-Box-Steuerung entsprechen den SOLIDWORKS-Blech-DXF-Exportoptionen. Weitere technische Hintergrundinformationen finden Sie unter [SOLIDWORKS `IExportToDWG2` API-Dokumentation](https://help.solidworks.com/2026/English/api/sldworksapi/SolidWorks.Interop.sldworks~SolidWorks.Interop.sldworks.IPartDoc~IExportToDWG2.html).
