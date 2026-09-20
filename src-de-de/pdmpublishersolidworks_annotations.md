---
title: "Anmerkungen | PDMPublisher für SOLIDWORKS"
description: "Finden Sie die fokussierte Dokumentation für Annotationsinhalt, Aussehen, Platzierung und Einstellungen Übertragung."
ms.date: 09/15/2026
ms.topic: how-to
---

# Veröffentlichen von Anmerkungen

Anmerkungen platzieren Text, SOLIDWORKS-Eigenschaftswerte, Wasserzeichen oder QR-Codes auf exportierten Zeichenblättern und PDFs. Das ausgewählte [Profil](pdmpublishersolidworks_profiles.md) speichert die Annotationssammlung.

Wählen Sie **PDMPublisher > Annotations**, um das aktive Publish-Profil zu bearbeiten, oder verwenden Sie den Befehlspfeil, um ein benanntes Profil zu öffnen. Verwenden Sie die fokussierten Seiten unter **Publishing Annotations** im TOC:

![Wählen Sie das Profil Veröffentlichen, dessen Anmerkungen Sie bearbeiten möchten](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/annotations-profile-menu-20260908.png)
![Annotation Editor und seine Steuerelemente](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/annotations-editor-controls-20260908.png)
<a id="annotation-editor-controls"></a>
## Annotation Editor Controls

| Kontrolle | Was es tut |
| --- | --- |
| **Add annotation** | Fügt dem ausgewählten Profil eine neue Anmerkungszeile hinzu. |
| Anmerkungen | Setzt wörtlichen Text und Platzhalter, die während der Veröffentlichung bewertet werden. |
| Schriftart und Größe | Wählt Schriftart und Punktgröße. |
| **Bold** / **Italic** | Wendet die Betonung auf den Annotationstext an. |
| **Watermark** | Rendert die Anmerkung als Wasserzeichen. |
| **Show annotation** | Enthält die Anmerkung während des Exports. Löschen Sie es, um die Definition beizubehalten, ohne sie zu veröffentlichen. |
| **QR code** | Rendert den ausgewerteten Annotationswert als QR-Code. |
| **Width (mm)** | Setzt den QR-Code oder die Annotationsbreite in Millimetern ein. |
| **Drawing background** | Steuert den Zeichnungshintergrund, der von der Positionierungsvorschau verwendet wird. |
| **Show placeholders** | Zeigt Platzhalternamen in der Vorschau anstelle von ausgewerteten Werten an. |
| **Copy X,Y** | Kopiert die Position der ausgewählten SOLIDWORKS-Zeichnung in die X- und Y-Felder der Annotation. |
| **Position X / Y (%)** | Positioniert die Anmerkung als Prozentsatz der Blattbreite und -höhe. |
| **Sheets** | Wählen Sie aus, welche Zeichnungsblätter die Annotation erhalten. |
| Namen getrennt durch Komma | Beschränkt eine benannte Blattauswahl auf die kommagetrennten Blattnamen. |
| **OK** / **Cancel** | Speichert die Profiländerungen oder schließt den Editor, ohne sie zu speichern. |

Der Zeichenbereich ist eine Positioniervorschau. Das Hinzufügen oder Verschieben eines Elements fügt der Quellzeichnung keine SOLIDWORKS-Notiz hinzu.

| Kategorie | Seiten |
| --- | --- |
| Inhalt | [Annotation hinzufügen](pdmpublisher-annotations/add-annotation.md), [Annotation Text](pdmpublisher-annotations/annotation-text.md) und [SQL Query Placeholders](pdmpublisher-annotations/sql-query-placeholders.md) |
| Aussehen | [Textformatierung](pdmpublisher-annotations/text-formatting.md), [Wassermark](pdmpublisher-annotations/watermark.md) und [Active](pdmpublisher-annotations/active.md) |
| Platzierung | [Position](pdmpublisher-annotations/position.md) und [Sheets](pdmpublisher-annotations/sheets.md) |
| Übertragung von Einstellungen | [Import- und Export-Anmerkungen](pdmpublishersolidworks-annotation-files.md) |

> [!NOTE]
> Annotationssteuerelemente werden mit der PDM-Task geteilt, aber das SOLIDWORKS-Add-in erhält Eigenschaften aus dem aktiven Dokument und speichert Annotationen im ausgewählten Publish-Profil.
