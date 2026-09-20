---
title: "Save As New | PDMPublisher für SOLIDWORKS"
description: "Speichern Sie eine native SOLIDWORKS-Kopie mit wiederverwendbaren Namen, Zielen, PDM-Seriennummern, zugehörigen Zeichnungen und Aktionen nach dem Speichern."
ms.date: 09/15/2026
ms.topic: how-to
---

# Save As New

**Save As New** erstellt ein separates natives SOLIDWORKS-Dokument, ohne das Quelldokument oder die referenzierten Modelle umzubenennen. Öffnen Sie **PDMPublisher > Settings > Save As New**, um den Befehl zu konfigurieren.

![Save As New Dateiname, Ziel, PDM, Eigenschaft und Makroeinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)
<a id="configure-the-new-file"></a>
## Konfigurieren der neuen Datei

1. Geben Sie ein **Filename** Template ein. Die Source-Erweiterung wird automatisch hinzugefügt.
2. Optional **Save the new to this destination** aktivieren und einen vorhandenen Ordner oder eine Ordnervorlage eingeben.
3. Aktivieren Sie **Show Save As dialog**, wenn der Benutzer das Ziel jedes Mal bestätigen oder ändern soll.
4. Wählen Sie alle Optionen nach dem Speichern und dann **OK**.
5. Öffnen Sie ein Dokument und wählen Sie **Save As New** aus, oder verwenden Sie den Pfeil neben dem Befehl, um ein gespeichertes Profil auszuwählen.

Geben Sie `{` in einen Dateinamen oder Zieleditor ein, um einen Dokumentwert, eine Eigenschaft, einen Ordnerwert, einen PDM-Wert oder ein **Prompt user**-Token einzufügen. Ein aufgeforderter Wert wirkt sich nur auf den Ausgabepfad aus; er ändert keine Dokumenteigenschaften.

<a id="options"></a>
## Optionen

| Option | Verhalten |
| --- | --- |
| Verwenden Sie diese Seriennummer | Reserviert einen Wert aus dem ausgewählten PDM-Seriennummerngenerator und stellt ihn dem Namen oder der Zielvorlage zur Verfügung. |
| Automatisches Einchecken in PDM | Addiert und überprüft das gespeicherte Modell und die zugehörige Zeichnung. Das Ziel muss sich innerhalb des ausgewählten Tresors befinden. |
| Rebuild vor dem Sparen | Baut die aktive Konfiguration, einschließlich Baugruppen, neu auf und stoppt, wenn der Umbau fehlschlägt. |
| Öffnen Sie die neue Kopie nach dem Speichern | Öffnet die gespeicherte Kopie und macht sie zum aktiven Dokument. |
| Add berechnete Boundingbox-Dimensionen | Schreibt `Bounding Box Length`, `Bounding Box Width` und `Bounding Box Height` in Millimeter für die aktive Konfiguration eines Teils oder einer Baugruppe. |
| Bringen Sie zugehörige Zeichnung | Kopiert eine offene oder gleichnamige Zeichnung neben dem neuen Teil oder der neuen Baugruppe und aktualisiert die Modellreferenz. |
| Makro nach dem Speichern ausführen | Führt die ausgewählte Makromethode auf der neuen Kopie vor dem automatischen PDM-Check-in aus. Das Makro muss seine eigenen Änderungen speichern. |

> [!NOTE]
> Die Bereinigung von Property Doctor ist im aktuellen Einstellungsmodell sichtbar, für Save As New jedoch noch nicht aktiviert. Verwenden Sie Property Doctor separat, bis diese Automatisierung freigegeben wird.

<a id="profiles"></a>
## Profile

Der **Save As New profiles**-Bereich speichert wiederverwendbare Befehlskonfigurationen. Fügen oder Bearbeiten eines Profils in Einstellungen hinzu und verwenden Sie dann den Pfeil neben **Save As New** im CommandManager, um es auszuführen. Das erste Profil wird als Standard behandelt.

<a id="validation-and-file-safety"></a>
## Validierung und Dateisicherheit

Save As New lehnt einen unveränderten Dateinamen, eine vorhandene Zieldatei, eine andere SOLIDWORKS-Erweiterung, ein nicht verfügbares Ziel und einen bereits im ausgewählten Tresor vorhandenen Dateinamen ab. Wenn das Modell gespeichert wird, aber ein späterer Makro- oder PDM-Check-in fehlschlägt, erklärt der Fehler, dass die neuen Dateien bereits vorhanden sind und inspiziert werden müssen.
