---
title: "Property Doctor | PDMPublisher für SOLIDWORKS"
description: "Überprüfen, Bearbeiten, Validieren, Importieren, Exportieren und Automatisieren von SOLIDWORKS benutzerdefinierten Eigenschaften in einem Dokument und seinen Referenzen."
ms.date: 10/20/2026
ms.topic: how-to
---

# Property Doctor

Property Doctor präsentiert das aktive Dokument, Konfigurationen, Schnittlisten, Zeichnungen und Referenzen in einem editierbaren Eigenschaftsraster.

![Property Doctor zeigt Dokumenteigenschaften in einer Assembly und ihren Referenzen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/PropertyDoctor/PropertyDoctor_Main_window_Default_Light_100.png)
Öffnen Sie **PDMPublisher > Settings > Property Doctor**, um die Standardspalten, das Laden von Miniaturansichten und wiederverwendbare Aktionsprofile zu konfigurieren.

![Property Doctor Einstellungen und Profilkontrollen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Property_Doctor_Default_Light_100.png)
<a id="edit-properties"></a>
## Eigenschaften bearbeiten

1. Öffnen Sie ein gespeichertes Teil, eine Baugruppe oder eine Zeichnung.
2. Wählen Sie **PDMPublisher > Property Doctor**.
3. Fügen oder zeigen Sie die Eigenschaft Spalten, die Sie benötigen.
4. Werte direkt bearbeiten, ein Wertemenü verwenden oder eine erweiterte Formel öffnen.
5. Überprüfen Sie die Indikatoren **Added**, **Changed** und **Removed**.
6. Wählen Sie **Apply changes**, um die ausstehenden Änderungen zu schreiben, oder **Discard changes**, um die ursprünglichen Werte wiederherzustellen.

Graue Zellen sind fehlende Eigenschaften. **Clear** behält den Eigenschaftsnamen und schreibt einen leeren Wert; **Delete Property** entfernt die Eigenschaft. Formel- und verknüpfte Wertzellen werden für die Dokumentzeile ausgewertet, in der sie angewendet werden.

Um eine Eigenschaft in mehreren Dokumenten zu löschen, klicken Sie mit der rechten Maustaste auf ihre Spaltenüberschrift oder öffnen Sie das Spaltenmenü und wählen Sie **Mark property for deletion (visible rows)**. Um mehrere Eigenschaften gemeinsam zu löschen, aktivieren Sie die Kontrollkästchen ihrer sichtbaren Spalten und verwenden Sie **Mark selected properties for deletion (visible rows)** in einer ausgewählten Spalte. Bei einer nicht ausgewählten Spalte betrifft der Befehl nur diese Spalte. Property Doctor markiert die Eigenschaften in allen bearbeitbaren sichtbaren Zeilen; gefilterte und schreibgeschützte Zeilen bleiben unverändert. Wählen Sie den aktivierten Befehl erneut, um die betroffenen Spalten wiederherzustellen, oder verwenden Sie das Löschsymbol einer Überschrift nur für diese Spalte. Wählen Sie **Apply changes**, um die Eigenschaften aus den Dokumenten zu entfernen.

<a id="refresh-after-apply"></a>
## Nach dem Anwenden aktualisieren

Nachdem Property Doctor Eigenschaftsänderungen, Löschungen oder Profilaktionen erfolgreich angewendet hat, fragt es, ob die angezeigten Eigenschaften aktualisiert werden sollen. Wählen Sie **Yes**, um das aktuelle Raster zu aktualisieren, ohne Property Doctor zu schließen und erneut zu öffnen. Nicht gespeicherte SOLIDWORKS-Änderungen bleiben geöffnet.

Die Aktualisierung verarbeitet nur die von der Operation betroffenen Dokumente, jeweils einmal pro Dokument. Unveränderte Dokumente und Zeichnungen werden übersprungen. Ein Fortschrittsfenster zeigt das aktuelle Dokument und den Gesamtfortschritt. Sie können zwischen Dokumenten abbrechen; alle bereits angewendeten Änderungen bleiben erhalten.

Eine vollständig gelöschte Eigenschaftsspalte verschwindet sofort nach dem Anwenden, auch wenn Sie die Aktualisierung ablehnen. Die Spalte bleibt erhalten, wenn die Eigenschaft noch in einer Dokument-, Konfigurations- oder Zuschnittslistenzeile vorhanden ist. Auch eine vorhandene Eigenschaft mit leerem Wert behält ihre Spalte.

Property Doctor zeigt die Aktualisierungsabfrage nicht an, wenn keine Änderungen vorliegen, das Anwenden fehlschlägt, ein Profil im Hintergrund ausgeführt wird oder Sie das Fenster mit **OK** schließen.

<a id="find-filter-and-fill"></a>
## Suchen, Filtern und Füllen

- Suchen Sie Dokumentnamen, Konfigurationen, Eigenschaftsnamen und Werte.
- Öffnen Sie Find and Replace für Klartext-, Case-sensitive oder Regular-Expression-Ersatz.
- Filtern Sie Teile, Baugruppen, Zeichnungen, benutzerdefinierte Eigenschaften, Konfigurationseigenschaften, Schnittlisten und leere Werte.
- Ziehen Sie den grünen Zellengriff vertikal, um Zeilen zu füllen, oder horizontal, um in sichtbare Spalten zu kopieren.
- Verwenden Sie **Columns** zum Anzeigen, Ausblenden, Hinzufügen und Organisieren von Eigenschaftsspalten.
- Importieren Sie ein exportiertes Property Doctor CSV, überprüfen Sie die ausstehenden Werte und wenden Sie sie dann an.

<a id="document-commands"></a>
## Dokumentenbefehle

Das Dokumentmenü kann ein Dokument in SOLIDWORKS laden, Referenzen zum Bearbeiten wieder öffnen, leichte Referenzen auflösen, Dateien ein- oder auschecken, den neuesten Eintrag erhalten, das Element auswählen, darauf zoomen oder isolieren. Die Verfügbarkeit hängt vom Dokumentenzustand und dem PDM-Zugriff ab.

<a id="profiles-and-column-templates"></a>
## Profile und Spaltenvorlagen

Ein Property Doctor-Profil ist ein geordneter Satz von Eigenschaftsaktionen. Eine Aktion kann einen Wert festlegen, Eigenschaften löschen, Eigenschaftswerte zurücksetzen oder ein Teilmaterial aus einer Eigenschaft für ausgewählte Bereiche und Bedingungen festlegen. Zeigen Sie eine Vorschau des Profils an, um die Änderungen im Raster zu prüfen, bevor Sie **Apply** auswählen.

Spaltenvorlagen steuern, welche Eigenschaften erscheinen. Wählen Sie in **Settings > Property Doctor** die Standardvorlage aus, bearbeiten Sie die Spalten, verwalten Sie Profile oder verstecken Sie Miniaturansichten für ein schnelleres Laden.

Aktionen laufen von oben nach unten. Spätere Matching-Aktionen können Werte ersetzen, die durch frühere Aktionen erzeugt wurden. Das Speichern eines Profils speichert die Automatisierung; es ändert kein Dokument, bis das Profil in der Vorschau angezeigt und angewendet wird.

<a id="set-material-from-a-property"></a>
## Material aus einer Eigenschaft festlegen

Verwenden Sie die Aktion **Set material from property**, um SOLIDWORKS-Material anhand eines Eigenschaftswerts Teilkonfigurationen zuzuweisen.

1. Wählen Sie die Quelleigenschaft und die zu verarbeitenden Teilkonfigurationsbereiche aus.
2. Wählen Sie eine oder mehrere zu durchsuchende SOLIDWORKS-Materialbibliotheken (`.sldmat`) aus.
3. Fügen Sie Zuordnungen hinzu, wenn der Eigenschaftswert ein Materialcode ist oder nicht genau mit einem Materialnamen übereinstimmt. Ein Zuordnungsmuster kann `*` als Platzhalter enthalten.
4. Zeigen Sie eine Vorschau des Profils an und prüfen Sie jede vorgeschlagene Materialänderung, bevor Sie **Apply** auswählen.

Materialzuordnungen können aus einer zweispaltigen CSV-Datei mit den Überschriften `Pattern` und `Material` importiert oder in eine solche Datei exportiert werden. Property Doctor überspringt leere, verknüpfte, nicht aufgelöste oder mehrdeutige Werte und zeigt den Grund in der Vorschau an. Diese Aktion unterstützt Teilkonfigurationen; sie weist Schnittlistenkörpern keine Materialien zu.

<a id="shared-resources"></a>
## Gemeinsame Ressourcen

Property Doctor kann benannte [Advanced Formulas](pdmpublishersolidworks_settings.md#settings-pages), externe Quellen von SQL Server und Zeichensuchordner verwenden, die unter **Shared Resources** in Einstellungen konfiguriert sind. Die Übertragung vollständiger Einstellungen enthält diese Definitionen, jedoch niemals SQL-Anmeldeinformationen.
