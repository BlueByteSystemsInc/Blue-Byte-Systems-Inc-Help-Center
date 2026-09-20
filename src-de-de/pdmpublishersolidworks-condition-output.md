---
title: "Zustandsergebnisse vor dem Export überprüfen | PDMPublisher für SOLIDWORKS"
description: "Verwenden Sie den Zustandsausgabedialog, um die für den Export ausgewählten Assemblydateien zu überprüfen und anzupassen."
ms.date: 09/16/2026
ms.topic: how-to
---

# Zustandsergebnisse vor dem Export überprüfen

Aktivieren Sie **Show conditions output dialog**, wenn Sie Assemblyreferenzen überprüfen möchten, nachdem der Zustandsbaum ausgewertet wurde und bevor der Export beginnt.

![Dateien überprüfen, um nach der Zustandsbewertung zu veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-condition-review-20260916.png)
Diese Option ist standardmäßig aktiviert. Es gilt, wenn das aktive Dokument eine Assembly ist, Referenzen verfügbar sind und **Export references to file formats individually** aktiviert ist.

<a id="what-the-dialog-shows"></a>
## Was der Dialog zeigt

Der Dialog listet die Dateien auf, die die Zustandsverarbeitung durchlaufen haben, einschließlich verfügbarer Informationen wie:

- Dateiname und Ordner
- Bezugskonfiguration
- Berechnete Menge
- Ob eine gleichnamige Zeichnung gefunden wurde
- Der Ausschlussgrund für Dateien, die nicht bestanden haben

Die zusammenfassenden Berichte enthielten Dateien, ausgeschlossene Dateien und die Anzahl, die die Bedingungen erfüllte.

| Kontrolle | Was es tut |
| --- | --- |
| **Select all** | Enthält jede aufgelistete Datei in diesem Lauf. |
| **Exclude all** | Löscht jedes Kontrollkästchen **Use**. |
| **Use** | Schließt eine einzelne Datei ein oder schließt sie aus, ohne den gespeicherten Zustandsbaum zu ändern. |
| **Output formats for this run** | Überschreibt die ausgewählten Ausgabeformate nur für diesen Lauf. |
| **Export sheet metal parts to 1:1 flat pattern DXF** | Aktiviert Flat-Pattern DXF Ausgabe für diesen Lauf. |
| **Edit profile** | Kehrt vor der Veröffentlichung zu den Profileinstellungen zurück. |
| **Cancel** | Stoppt die Überprüfung, ohne den Veröffentlichungsvorgang zu starten. |
| **Publish** | Beginnt die Verarbeitung der aktuell ausgewählten Dateien und Formate. |

Das Banner der Community Edition meldet die Limits für Format und Referenzzahl sowie Links zu den vollständigen Limits.

Dateien werden standardmäßig ausgewählt. Löschen Sie eine Datei, wenn sie in diesem Job nicht verarbeitet werden soll, und bestätigen Sie dann, dass der Dialog fortgesetzt werden soll.

Das Abbrechen des Dialogs storniert den Veröffentlichungsauftrag, bevor die Dateiverarbeitung beginnt.

Wenn ein Auftrag storniert wird, nachdem die Verarbeitung bereits begonnen hat, können Dateien, die vor der Kündigung abgeschlossen wurden, im Ausgabeordner verbleiben. Siehe [Publishing Workflow and Results](pdmpublishersolidworks_workflow.md#5-interpret-the-result).

> [!NOTE]
> Dieser Dialog ist eine finale Job Review. Es schreibt den Zustandsbaum nicht um oder ändert das ausgewählte Profil dauerhaft.

Siehe [Evaluation Rules](pdmpublisher-conditions/evaluation-rules.md), wie Referenzen die konfigurierten Bedingungen passieren oder nicht bestehen.
