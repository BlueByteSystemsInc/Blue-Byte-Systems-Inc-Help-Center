---
title: "Bitten Sie den Benutzer, Dateien beim Task-Start anzugeben | PDMPublisher-Optionen"
description: "Fordern Sie die Benutzer auf, beim Start der Veröffentlichung Dateien und Formate auszuwählen."
ms.date: 08/09/2026
ms.topic: reference
---

# Bitten Sie den Benutzer, Dateien beim Task-Start anzugeben

![Bitten Sie den Benutzer, die Dateieinstellung anzugeben](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-007-property-ask-user-to-specify-files-on-task-launch.png)
Wenn diese Option aktiviert ist, zeigt PDMPublisher beim Starten von Aufgaben einen Dateiauswahldialog an. Der Benutzer kann auswählen, welche Dateien exportiert werden sollen, welche Konfigurationen verarbeitet werden sollen, welche Formate erstellt werden sollen und wohin die Ausgabe auf dem Computer gehen soll, der die Aufgabe gestartet hat.

![Bitten Sie den Benutzer, den Dateidialog anzugeben](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/ask-user-specify-files-dialog.png)
Verwenden Sie diese Option, wenn die Person, die die Aufgabe startet, in der Lage sein sollte, die Dateien, Konfigurationen, Formate und den Exportort auszuwählen, anstatt nur die feste Aufgabenkonfiguration aus dem PDM-Verwaltungstool SOLIDWORKS zu verwenden.

<a id="add-files"></a>
## Dateien hinzufügen

Wählen Sie **Add**, um Dateien beim Start von Aufgaben manuell hinzuzufügen. Dies ist nützlich, wenn der Benutzer genau weiß, welche Baugruppe, welches Teil, welche Zeichnung oder welches Dokument exportiert werden muss.

Nachdem eine Datei hinzugefügt wurde, erscheint sie in der Dateiliste mit einem Kontrollkästchen. Geprüfte Dateien sind beim Start der Veröffentlichung enthalten. Ungeprüfte Dateien bleiben im Dialog sichtbar, werden aber übersprungen, wenn der Benutzer **OK** auswählt.

<a id="import-from-csv"></a>
## Import von CSV

Wählen Sie **From CSV**, um mehrere Dateien aus einer CSV-Liste hinzuzufügen. Dies ist nützlich für wiederholbare Batches, Release-Pakete oder Listen, die von einem anderen System generiert werden.

Die Dateien im CSV müssen für Dateien aufgelöst werden, auf die der Benutzer im Tresor- oder lokalen Cache zugreifen kann. Nach dem Import kann der Benutzer weiterhin die Liste überprüfen, Kontrollkästchen für Dateien, die übersprungen werden sollen, löschen und die Konfigurations- oder Formatauswahl vor der Veröffentlichung anpassen.

<a id="file-list"></a>
## Dateiliste

Auf der linken Seite des Dialogs werden die Dateien angezeigt, die für den Export in Betracht gezogen werden.

| Säule | Was es bedeutet |
| --- | --- |
| **File Name** | Die für den Export ausgewählte Datei. Baugruppen können erweitert werden, um referenzierte Teile und Zeichnungen zu zeigen. |
| **Configuration** | Die Konfiguration, die für diese Zeile verarbeitet wird. Zeichnungen zeigen normalerweise nur Ansicht, weil das Zeichenblatt exportiert wird und nicht eine Modellkonfiguration. |
| **Found In** | Der Vault- oder lokale Cache-Ordner, in dem PDMPublisher die Datei gefunden hat. |

Baugruppen können erweitert werden, sodass Benutzer referenzierte Komponenten einschließen oder ausschließen können. Wenn die Zeichnungssuche aktiviert ist, können verwandte Zeichnungen unter der Modelldatei angezeigt werden, sodass der Benutzer entscheiden kann, ob die Zeichnung auch exportiert werden soll.

<a id="selected-file-details"></a>
## Ausgewählte Datei Details

Die rechte Seite des Dialogs ändert sich basierend auf der ausgewählten Zeile.

Der Dateiname und der Pfad oben bestätigen, welche Datei gerade ausgewählt ist. Dies hilft Benutzern zu überprüfen, ob sie die richtige Datei bearbeiten, insbesondere wenn mehrere Dateien ähnliche Namen haben.

Die **Configuration**-Liste steuert, welche Konfiguration für die ausgewählte Datei verwendet wird. Benutzer können eine andere Konfiguration pro Datei auswählen, wenn die Aufgabe mehrere Varianten veröffentlichen muss.

Die **File Formats** Checkliste steuert die Ausgabeformate für die ausgewählte Datei. Beispielsweise kann eine Zeichnung in PDF, DWG oder DXF exportiert werden, während ein Teil oder eine Baugruppe in STEP, STL, eDrawings oder ein anderes unterstütztes Modellformat exportiert werden kann. Siehe [Dateiformate](file-formats.md) für formatspezifisches Verhalten.

<a id="export-location"></a>
## Ausfuhrort

Der Exportort unten zeigt das beim Task-Start ausgewählte Ausgabepfadmuster an. Es kann Platzhalter wie `(FileFolder)` enthalten, so dass exportierte Dateien relativ zur Quelldatei platziert werden.

Zum Beispiel:

```text
(FileFolder)\Sheet\Export
```

Dadurch werden exportierte Dateien in einem `Sheet\Export`-Ordner unter dem Ordner der ausgewählten Datei abgelegt.

Der Exportpfad kann die gleichen Platzhalterregeln wie die Hauptaufgabenoption verwenden. Siehe [Exportstandort](export-location.md) für Platzhalterbeispiele, Gewölbepfade, Netzwerkpfade und erweiterungsspezifische Überschreibungen.

<a id="administration-message"></a>
## Verwaltungsmeldung

In der gelben Meldung wird erklärt, dass der Administrator weiterhin steuern kann, wie die Exporte von Create STEP, PDF und eDrawings über das PDM-Verwaltungstool SOLIDWORKS konfiguriert werden.

Dieser Dialog ersetzt nicht die Administratoreinstellungen. Es gibt dem Benutzer eine kontrollierte Möglichkeit, Dateien, Konfigurationen, Formate und den Ausgabeort auf dem Computer auszuwählen, der die Aufgabe gestartet hat.

<a id="start-or-cancel"></a>
## Starten oder Abbrechen

Wählen Sie **OK**, um die Veröffentlichung mit den ausgewählten Dateien, Konfigurationen, Formaten und dem Exportstandort zu starten.

Wählen Sie **Cancel**, um den Dialog zu schließen, ohne die Aufgabe auszuführen.

Lassen Sie bei vollautomatischen Workflows diese Option deaktiviert und konfigurieren Sie die Aufgabeneinstellungen direkt im Verwaltungstool.
