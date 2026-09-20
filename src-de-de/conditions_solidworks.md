---
title: "Bedingungen | PDMPublisher für SOLIDWORKS"
description: "Finden Sie die fokussierte Dokumentation zum Erstellen, Bewerten, Überprüfen, Importieren und Exportieren von Zustandsregeln."
ms.date: 09/15/2026
ms.topic: how-to
---

# Veröffentlichungsbedingungen

Bedingungen entscheiden, welche Assemblydateien in einem Veröffentlichungsauftrag enthalten sind. Das ausgewählte [Profil](pdmpublishersolidworks_profiles.md) speichert den Bedingungsbaum.

> [!IMPORTANT]
> Aktivieren Sie [Exportreferenzen einzeln](pdmpublisher-options/export-references-individually.md), wenn Bedingungen die aktive Assembly und ihre referenzierten Dateien filtern müssen.

Wählen Sie **PDMPublisher > Conditions**, um das aktive Publish-Profil zu bearbeiten, oder verwenden Sie den Befehlspfeil, um ein benanntes Profil zu öffnen. Verwenden Sie die fokussierten Seiten unter **Publishing Conditions** im TOC:

![Wählen Sie das Profil Veröffentlichen, dessen Bedingungen Sie bearbeiten möchten](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/conditions-profile-menu-20260908.png)
![Condition Editor und seine Steuerelemente](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/conditions-editor-controls-20260908.png)
<a id="condition-editor-controls"></a>
## Condition Editor Controls

| Kontrolle | Was es tut |
| --- | --- |
| Kontrollkaestchen aktivieren | Aktiviert die Root-, Gruppen- oder Bedingungszeile. Deaktivierte Elemente bleiben im Profil, werden aber nicht ausgewertet. |
| Pfeil expandieren/kollapse | Zeigt oder versteckt die Kinder einer Bedingung Gruppe. |
| **AND / OR** | Definiert, ob jedes Kind bestehen muss (**AND**) oder ob ein Kind bestehen kann (**OR**). |
| **+ (AND/OR)** | Fügt eine verschachtelte Zustandsgruppe hinzu. |
| **+ (Condition)** | Fügt der ausgewählten Gruppe eine Bedingungszeile hinzu. |
| **Variable** | Wählen Sie die zu bewertende Eigenschaft, den Dateiwert oder die spezielle Variable aus. |
| **Comparison** | Wählt den auf die Variable angewendeten Test aus. Eine neue Zeile bleibt **Undefined**, bis ein Vergleich ausgewählt ist. |
| **Value** | Liefert den Vergleichswert. |
| **Configuration** | Beschränkt die Eigenschaftsbewertung auf die benannte SOLIDWORKS-Konfiguration, falls zutreffend. |
| Streichen (x) | Entfernen Sie die entsprechende Gruppe oder Bedingung. |
| **OK** / **Cancel** | Speichert den Zustandsbaum oder schließt den Editor, ohne ihn zu speichern. |

Bauen Sie von der Wurzel nach unten. Verwenden Sie verschachtelte Gruppen, wenn ein Teil der Regel ein anderes UND / ODER-Verhalten als sein Elternteil benötigt.

| Kategorie | Seiten |
| --- | --- |
| Bauregeln | [Bedingungen und Gruppen hinzufügen](pdmpublisher-conditions/add-conditions-and-groups.md) und [Bedingungsfelder](pdmpublisher-conditions/condition-fields.md) |
| Werte und Vergleiche | [Spezielle Variablen](pdmpublisher-conditions/special-variables.md) und [Zustandstypen](pdmpublisher-conditions/condition-types.md) |
| Verarbeitung | [Evaluation Rules](pdmpublisher-conditions/evaluation-rules.md), [Review Condition Results Before Export](pdmpublishersolidworks-condition-output.md) und [Import and Export Conditions](pdmpublishersolidworks-condition-files.md) |
