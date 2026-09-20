---
title: "Clone Tree | PDMPublisher für SOLIDWORKS"
description: "Kopieren Sie SOLIDWORKS-Dokumente und -Referenzen mit den jeweiligen Dateinamen, Zielen, PDM-Revisionsbehandlung, Begleitdateien, Profilen und ZIP-Ausgaben."
ms.date: 09/15/2026
ms.topic: how-to
---

# Clone Tree

Clone Tree erstellt einen Kopierplan für das aktive Dokument und seine Referenzen. Jede enthaltene Datei kann ihren eigenen Namen und Zielort haben, während SOLIDWORKS-Referenzen auf die kopierten Dateien aktualisiert werden.

![Clone Tree Dateibaum mit pro Dateinamen und Zielordnern](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/CloneTree/CloneTree_Main_window_Default_Light_100.png)
Öffnen Sie **PDMPublisher > Settings > Clone Tree**, um die freigegebene PDM-Seriennummer auszuwählen und Befehlsprofile beizubehalten.

![Clone Tree Profileinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Clone_Tree_Default_Light_100.png)
<a id="create-a-package"></a>
## Erstellen eines Pakets

1. Speichern Sie das aktive SOLIDWORKS-Dokument.
2. Wählen Sie **PDMPublisher > Clone Tree**.
3. Überprüfen Sie die Dateien zu kopieren und Dateien zu deaktivieren, um auszuschließen.
4. Legen Sie die Werte **New name** und **Destination folder** fest. Verwenden Sie das Menü jeder Zelle für Dokumentwerte, Eigenschaften, Ordnerwerte, PDM-Werte, Seriennummern oder Formeln.
5. Optional gehören Begleit STEP, PDF oder DXF Dateien und konfigurieren ZIP Ausgabe.
6. Wählen Sie **Copy**.

Ausgeschlossene Dateien behalten ihre ursprünglichen Referenzen. Such- und Typfilter ändern nur die sichtbaren Zeilen; alle geprüften Dateien bleiben im Kopierplan.

<a id="copy-options"></a>
## Kopieroptionen

| Option | Verhalten |
| --- | --- |
| Ignorieren von Toolbox-Komponenten | Belässt Toolbox-Komponenten aus dem kopierten Dokumentsatz. |
| Kopieren der letzten PDM-Revision auf den Bestimmungsort | Kopiert die zuletzt zugewiesene Revision direkt auf jedes Ziel. Es aktualisiert nicht den lokalen Vault-Cache oder lädt SOLIDWORKS neu. Vault-Dateien ohne zugewiesene Revision können diese Option nicht verwenden. |
| Fassung | In SOLIDWORKS 2024 und neuer, speichert in der aktuellen Version oder einer der beiden vorherigen Versionen. |
| Begleiter-Dateien | Enthält vorhandene, gleichnamige STEP/STP-, PDF- oder DXF-Dateien, die für ein Dokument gefunden wurden. |
| Archiv ZIP | Erstellt ein ZIP nach Abschluss der Dateikopien unter Verwendung eines eigenen Dateinamens und Zielorts. |
| Seriennummer des PDM | Weist eine reservierte Zahl pro enthaltener Zeile zu und verwendet sie wieder, wenn sowohl der Dateiname als auch der Ordner diese Nummer benötigen. |

<a id="profiles-and-rules"></a>
## Profile und Regeln

Clone Tree-Profile behalten Ziele, Toolbox-Präferenzen, Begleitformate, Verhalten der neuesten Überarbeitung, ZIP-Einstellungen, Überschreibungen per Datei und geordnete Regeln. Regeln können einen Dateinamen oder einen Exportort festlegen, wenn ihre Bedingungen übereinstimmen; spätere Regeln können frühere Werte ersetzen.

Verwalten Sie Profile in **Settings > Clone Tree** oder wählen Sie die Ausrüstung im Clone Tree-Fenster aus. Der Pfeil neben dem Befehl CommandManager öffnet direkt ein gespeichertes Profil.

Ein Profil kann nach dem Kopieren ein Property Doctor-Profil ausführen. Diese Verarbeitung gilt für kopierte Dateien und erfordert Dateien, die mit der aktuellen SOLIDWORKS-Version kompatibel sind.

<a id="validation"></a>
## Validierung

Vor dem Kopieren lehnt PDMPublisher doppelte Ziele, Quellüberschreibungen, geänderte SOLIDWORKS-Erweiterungen, bestehende Ziele, ungelöste Zielausdrücke und nicht verfügbare PDM-Revisionsdaten ab. Überprüfen Sie das Raster erneut, wenn sich die Referenzen ändern, während das Fenster geöffnet ist.
