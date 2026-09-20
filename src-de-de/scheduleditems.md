---
title: "Geplante Elemente Task Page | PDMPublisher | SOLIDWORKS PDM"
description: "Erfahren Sie, wie Sie die Task-Setup-Seite für geplante Elemente in PDMPublisher verwenden, um Dateien zu definieren, die verarbeitet werden sollen, wenn eine Aufgabe ohne ausgewählte Dateien ausgeführt wird."
ms.date: 06/21/2026
ms.topic: conceptual
---
# Geplante Elemente Task Page

Mit der **Scheduled Items**-Seite können Administratoren die Dateien definieren, die PDMPublisher beim Starten der Aufgabe verarbeiten soll.

Dies ist nützlich für geplante Aufgaben und automatisierte Task-Starts, bei denen SOLIDWORKS PDM keine Dateiauswahl für die Aufgabe bereitstellt.

![Scheduled Items setup page](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduled-items.png)
Die Planung selbst wird vom eigenen Planungs-Framework von SOLIDWORKS PDM übernommen. Die **Scheduling**-Seite steuert, wenn die Aufgabe beginnt. Die **Scheduled Items**-Seite steuert, welche Dateien PDMPublisher-Prozesse gespeichert haben, wenn diese geplante Aufgabe gestartet wird.

![SOLIDWORKS PDM-Planungsseite](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduling.png)
<a id="when-to-use-this-page"></a>
## Wann diese Seite zu verwenden ist

Verwenden Sie **Scheduled Items**, wenn erwartet wird, dass die Aufgabe nach einem Zeitplan oder von einer Automatisierung ausgeführt wird, die ausgewählte Dateien nicht an PDMPublisher weiterleitet.

Wenn Dateien auf dieser Seite konfiguriert sind, verwendet PDMPublisher die Liste der geplanten Elemente als Aufgabeneingabe.

> [!IMPORTANT]
> Geplante Elemente überschreiben jede andere Dateiauswahl. Wenn diese Seite Dateien enthält, verarbeitet PDMPublisher die hier aufgeführten Dateien und ignoriert Dateien, die aus dem **Tasks**-Menü mit der rechten Maustaste ausgewählt wurden, Dateien, die beim Task-Start ausgewählt wurden, oder Dateien, die von einer anderen Startmethode übergeben wurden. Konfigurieren Sie Scheduled Items nur für Aufgaben, die immer die gleiche gespeicherte Liste von Dateien verarbeiten sollen.

<a id="adding-files"></a>
## Hinzufügen von Dateien

Klicken Sie auf **Add**, um eine oder mehrere SOLIDWORKS-Dateien aus dem Tresor auszuwählen.

PDMPublisher speichert die ausgewählte Datei-ID und die übergeordnete Ordner-ID. Diese IDs werden später verwendet, um die Aufgabeneingabeliste neu zu erstellen, wenn die geplante Aufgabe ausgeführt wird.

Die Tabelle zeigt:

|Säule|Beschreibung|
|:---|:---|
|Dateiname|Der ausgewählte Dateiname.|
|Gefunden in|Der Vault-Ordner, in dem die Datei ausgewählt wurde.|

<a id="removing-files"></a>
## Entfernen von Dateien

Wählen Sie eine oder mehrere Zeilen aus und klicken Sie auf **Remove**, um sie aus der Liste der geplanten Elemente zu entfernen.

<a id="important-notes"></a>
## Wichtige Anmerkungen

- Die ausgewählten Dateien müssen im Tresor verfügbar bleiben.
- Der Task-Host muss die Berechtigung haben, auf die ausgewählten Dateien und deren Ordner zuzugreifen.
- Die Aufgabe verwendet weiterhin die Einstellungen der anderen Setup-Seiten, einschließlich **Options**, **Annotations** und **Conditions**.
- Wenn diese Seite Dateien enthält, werden diese Dateien auch dann verwendet, wenn die Aufgabe aus einer ausgewählten Datei im Datei-Explorer gestartet wird.
- Wenn diese Seite Dateien enthält, werden diese Dateien auch verwendet, wenn die Aufgabe mit der Planung von SOLIDWORKS PDM beginnt.
- Wenn beim Start keine Dateien ausgewählt und keine geplanten Elemente konfiguriert sind, wird die Aufgabe mit einem Fehler beendet.

<a id="selecting-files-at-task-launch"></a>
## Auswählen von Dateien beim Aufgabenstart

Version **2026.06.21** fügt einen interaktiven Dateiauswahldialog für Aufgaben hinzu, die konfiguriert sind, um den Benutzer zu fragen, welche Dateien beim Start verarbeitet werden sollen.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher_task_launch_selection.png" alt="PDMPublisher task launch file selection dialog" width="900">
</p>

Der Dialog ermöglicht dem Benutzer:

- Fügen Sie Dateien aus dem Tresor hinzu.
- Importieren Sie Dateinamen aus einer CSV-Datei.
- Überprüfen Sie automatisch berechnete Assembly-Referenzen.
- Siehe verwandte Zeichnungen als reine Kinderzeilen.
- Wählen Sie startspezifische Dateiformate für den Task-Auslauf.
- Überprüfen Sie den konfigurierten Exportstandort, bevor Sie die Aufgabe starten.

Die Warnung oben erinnert die Benutzer daran, dass das Aufgabenexportverhalten von einem Administrator im SOLIDWORKS PDM-Administrationstool konfiguriert wird.

<a id="csv-import"></a>
### CSV Einfuhr

Klicken Sie auf **From CSV**, um Dateien aus einer kommagetrennten Dateiliste zu importieren.

PDMPublisher liest Dateinamen aus einer erkannten Dateispalte wie `filename`, `file`, `filepath` oder `path`. Wenn kein erkannter Header gefunden wird, scannt PDMPublisher jede Zeile nach dem ersten verwendbaren Dateinamen. Volle Pfade werden unterstützt, da nur der Dateiname für die Vault-Suche verwendet wird.

Für jede importierte Zeile durchsucht PDMPublisher den Tresor und verwendet das erste übereinstimmende Ergebnis. Bereits im Dialog gezeigte doppelte Dateien werden übersprungen.

<a id="drawing-rows"></a>
### Zeichenreihen

Wenn ein referenziertes Teil oder eine referenzierte Baugruppe eine zugehörige Zeichnung hat, wird die Zeichnung unter diesem Punkt zur Überprüfung gezeigt. Zeichenzeilen, die mit **View only** gekennzeichnet sind, werden nicht an die Aufgabeneingabeliste übergeben. Sie werden nur überprüft, wenn ein 2D-Ausgabeformat wie `pdf`, `dwg` oder `dxf` ausgewählt und die übergeordnete Datei überprüft wird.
