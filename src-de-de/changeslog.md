---
title: "PDMPublisher Change Log | Feature Updates, Verbesserungen & Fixes"
description: "Zeigen Sie das PDMPublisher-Änderungsprotokoll mit detaillierten Feature-Updates, Verbesserungen, Fehlerbehebungen und Verbesserungen in allen Releases an."
ms.date: 09/26/2026
ms.topic: conceptual
---
# PDMPublisher ändert Log

Diese Seite verfolgt alle Änderungen, Korrekturen, Verbesserungen und neuen Funktionen, die in PDMPublisher, dem SOLIDWORKS PDM Professional Task Add-in, und PDMPublisher für SOLIDWORKS, dem SOLIDWORKS Add-in, eingeführt wurden.

Versionen werden durch ihr Compilierungsdatum identifiziert, das das Build-Datum der veröffentlichten Version darstellt. Jeder Eintrag kann Updates wie neue Funktionen, Fehlerbehebungen, Leistungsverbesserungen, Kompatibilitätsupdates, Konfigurationsänderungen und bekannte Verhaltensänderungen enthalten.

<a id="current-versions"></a>
## Aktuelle Fassungen

| Produkt | Aktuelle Fassung |
| --- | --- |
| [PDMPublisher für SOLIDWORKS](pdmpublishersolidworks.md) | `2026.09.26` |
| [PDMPublisher PDM Task](pdmpublisher.md) | `2026.09.08` |

Das SOLIDWORKS-Add-in und die PDM-Task werden unabhängig voneinander freigegeben, sodass ihre aktuellen Versionsnummern abweichen können.

> [!TIP]
> Wenn Sie PDMPublisher (Aufgabe) verwenden, empfehlen wir Ihnen dringend, PDMDeploy zu verwenden, um PDMPublisher zu aktualisieren. Bitte siehe [hier](/src/cdpdm.html).

<a id="20260926"></a>
## 2026.09.26
*Gilt für das **SOLIDWORKS Add-in***

- [ERP Sync](pdmpublishersolidworks_erp-sync.md) wurde aktiviert, um ausgewählte SOLIDWORKS-Artikel, zugeordnete Eigenschaften, vom ERP erzeugte Teilenummern und aktivierte Stücklistenbeziehungen über einen installierten ERP-Konnektor zu synchronisieren.
- Das ERP Sync-Prüffenster mit Zeilenauswahl, Stücklistenanzeigetypen, Spaltenvorlagen, Gruppierung, Filterung, Regeln zum Ignorieren von Komponenten, Schnittlisteneinträgen und auswählbaren Push-Vorgängen wurde hinzugefügt.
- Der offizielle Konnektorkatalog und das Laden benutzerdefinierter Konnektoren über **ERP connector settings** wurden hinzugefügt.
- Der Vertrag `PDMPublisher.ERPExtension.dll` und die typisierte API `ErpConnector<TSettings>` zum [Erstellen benutzerdefinierter C#-ERP-Konnektoren](pdmpublishersolidworks_erp-connector.md) für .NET Framework 4.7.2 wurden hinzugefügt.
- Die Konfiguration des [ERPNext-Konnektors](pdmpublishersolidworks_erpnext-connector.md), Verbindungstests sowie die Artikel-, Eigenschafts- und Stücklistensynchronisierung wurden hinzugefügt. Pull bleibt in dieser Version sichtbar, aber deaktiviert.

<a id="20260925"></a>
## 2026.09.25
*Gilt für das **SOLIDWORKS Add-in***

- PDMPublisher wurde auf den SOLIDWORKS CommandManager und das Menü **Tools > PDMPublisher** ausgerichtet. Der Aufgabenbereich zeigt jetzt die Onlinehilfe an, anstatt die Veröffentlichungssteuerelemente zu enthalten. Siehe [PDMPublisher-Befehle](pdmpublishersolidworks_commands.md) und [Hilfe-Aufgabenbereich](pdmpublishersolidworks_help-pane.md).
- Die aktuellen Dienstprogramm-Workflows wurden hinzugefügt: [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md), [Clone Tree](pdmpublishersolidworks_smart-pack.md) und [BOM Manager](pdmpublishersolidworks_bom-manager.md).
- Ein einheitlicher, durchsuchbarer Dialog [Settings](pdmpublishersolidworks_settings.md) mit befehlsspezifischen Profilen, gemeinsamen Ressourcen und vollständiger Konfigurationsübertragung per Datei oder sechsstelliger PIN wurde hinzugefügt. Siehe [Einstellungen importieren, exportieren und zurücksetzen](pdmpublishersolidworks_settings-transfer.md).
- Veröffentlichungsvorlagen und die Eigenschaftsauswertung wurden um PDM-Werte, Datums- und Zeitwerte, Seriennummern, gespeicherte Formeln und externe SQL-Quellen erweitert.
- Kontextbezogene Hilfe für Bedingungen, Eigenschaftsnamen mit Platzhaltern und die Materialzuweisung aus einer Eigenschaft in Property Doctor wurden hinzugefügt.
- Die Benutzeroberfläche und Installationsprogramme wurden lokalisiert. Siehe [Sprachen](pdmpublishersolidworks_languages.md).
- Optionale Installations- und Lizenzstatistiken mit sofortiger Abwahl pro Benutzer wurden hinzugefügt. Siehe [Über, Updates und Lizenzen](pdmpublishersolidworks_About.md).

<a id="20260908"></a>
## 2026.09.08
* Gilt für **PDM Task***

- Hinzugefügt [Nur neueste Überarbeitung erhalten](/src/pdmpublisher-options/get-latest-revision-only.html). Die Aufgabe kann die neueste aufgezeichnete PDM-Revision und die mit dieser Revision gespeicherten Referenzen anstelle neuerer, nicht überarbeiteter Versionen veröffentlichen.
- Änderte Ausgabe-Kopie-Fehlerbehandlung. Wenn eine oder mehrere generierte Dateien nicht an ihren Zielort kopiert werden können, wird die Aufgabe nun als fehlgeschlagen anstatt als erfolgreich abgeschlossen markiert.
- Es wurden klarere Copy-Failure-Protokollmeldungen mit dem temporären Quellpfad, dem Zielpfad und den verfügbaren Fehlerdetails hinzugefügt.

<a id="20260812"></a>
## 2026.08.12
* Gilt für **PDM Task***

- Es wurden die SOLIDWORKS-Exporteinstellungen behoben, die beim Erstellen der Dateien eDrawings Part (`.eprt`), eDrawings Assembly (`.easm`) und eDrawings Drawing (`.edrw`) verwendet wurden.
- Der Task erlaubt nun explizit das Messen und speichert Dateieigenschaften und pro-Komponenten-Dateieigenschaften in unterstützten eDrawings-Ausgängen, anstatt abhängig von den Einstellungen, die zuvor auf dem Task-Host gespeichert wurden.
- Kein PDMPublisher für das SOLIDWORKS-Add-in-Verhalten hat sich in diesem Release geändert. Siehe [eDrawings Export Settings](/src/pdmpublisher-options/edrawings-export-settings.html).

<a id="20260811"></a>
## 2026.08.11
* Gilt für **SOLIDWORKS Add-in***

- Registriert PDMPublisher für SOLIDWORKS als SOLIDWORKS Partner Solution Add-in. Es erscheint nun unter **Partner Solution Add-Ins** im Dialog SOLIDWORKS **Add-Ins**. In dieser Version hat sich keine andere Produktfunktionalität geändert.

<a id="20260810"></a>
## 2026.08.10
* Gilt für **SOLIDWORKS Add-in***

- Profilfreigabe durch sechsstellige PIN hinzugefügt. Ein Benutzer kann ausgewählte Abschnitte Optionen, Anmerkungen und Bedingungen freigeben, und die PIN bleibt 30 Tage lang verfügbar.
- **Load using PIN...** hinzugefügt, um ein freigegebenes Profil herunterzuladen, die enthaltenen Abschnitte auszuwählen, das Ergebnis lokal zu speichern und zum aktiven Profil zu machen. Bestehende Einstellungen in nicht ausgewählten Abschnitten bleiben unverändert.
- Hinzufügen von Profil-Namen-Konfliktbehandlung, damit ein heruntergeladenes Profil das lokale Profil ersetzen, unter einem anderen Namen gespeichert oder abgebrochen werden kann. Siehe [Profile mit einer PIN teilen](/src/pdmpublishersolidworks_profile_sharing.html).

<a id="20260809"></a>
## 2026.08.09
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***

**PDM Task**:
- **Use drawing-derived BOM** hinzugefügt. Die Aufgabe kann die zuerst genannte Stückliste verwenden, die in der zugehörigen Zeichnung einer Baugruppe gespeichert ist, um Referenzen, Konfigurationen und Größen zu bestimmen. Wenn die Zeichnung oder eine nutzbare abgeleitete Stückliste nicht verfügbar ist, greift PDMPublisher auf die konfigurierte berechnete Stückliste zurück. Siehe [Use Drawing-Derived BOM](/src/pdmpublisher-options/use-drawing-derived-bom.html).

**PDM Task and SOLIDWORKS Add-in**:
- Geändertes Zeichnenblatt-Matching, so dass eine mehrblättrige Zeichnung ohne Blätter, die dem ausgewerteten Muster entsprechen, alle Blätter exportiert, anstatt keine Blattausgabe zu erzeugen.
- Einblattzeichnungen exportieren weiterhin ihr einziges Blatt, ohne das Blattnamenmuster zu bewerten. Siehe [Namensmuster](/src/pdmpublisher-options/sheet-name-pattern.html).

<a id="20260808"></a>
## 2026.08.08
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***

**SOLIDWORKS Add-in**:
- Hinzufügen von wiederverwendbaren Profilen mit Steuerelementen zum Erstellen, Umbenennen, Speichern, Exportieren, Laden und Löschen von Veröffentlichungskonfigurationen.
- Starterprofilvorlagen für DXF, PDF und STEP sowie STEP Workflows hinzugefügt.
- Fügen Sie die Task-Pane-Navigation hinzu, um mehr Platz für Einstellungen zu bieten.
- Optionale Windows Light/Dark Theme-Unterstützung hinzugefügt. Theme-Änderungen gelten nach dem Neustart von SOLIDWORKS.
- Hinzugefügt Zeichnungsblatt Auswahl mit Blattnamen Muster und `(ConfigurationName)` Matching.
- Aktualisierte den Multiformat-Selektor mit beschreibenden Namen und Dateityp-Icons.
- Aktualisierung der Schnittstellen Optionen, Anmerkungen, Bedingungen und Über. Siehe [PDMPublisher für SOLIDWORKS](/src/pdmpublishersolidworks.html).

**PDM Task**:
- **File Number**-Platzhalter hinzugefügt, die die ersten 3, 4, 5 oder 6 Ziffern der ersten numerischen Sequenz in einem Dateinamen zurückgeben.
- **File Number Range**-Platzhalter hinzugefügt, die diese 3-, 4-, 5- oder 6-stelligen Werte in numerische Bereiche gruppieren.
- Organisierte die neuen Platzhalter in Gruppen **File Number** und **File Number Range** im Platzhaltermenü `>...`. Siehe [File Number Placeholders](/src/pdmpublisherspecialvariable.html#file-number-placeholders).

<a id="20260807"></a>
## 2026.08.07
* Gilt für **PDM Task***
- Optionale Windows Light and Dark Theme Synchronisation für PDMPublisher Task Setup Seiten hinzugefügt. Administratoren können die Synchronisierung von **Add-ins > PDMPublisher > Theme settings...** ein- oder ausschalten. Siehe [Theme Settings](/src/pdmpublisher-theme-settings.html).
- Hinzufügen des Platzhalters `(FileNameNumberRange)` zum Organisieren numerischer Dateinamen in Bereichen von 1.000. Siehe [Dateiname Number Range](/src/pdmpublisherspecialvariable.html#file-name-number-range).
- Aktualisierte Zeichnungsblattauswahl, so dass eine Zeichnung mit nur einem Blatt dieses Blatt exportiert, ohne das übereinstimmende Muster des Blattnamens anzuwenden. Die Übereinstimmung von Blatt und Namen gilt weiterhin für Zeichnungen mit zwei oder mehr Blättern.

<a id="20260806"></a>
## 2026.08.06
* Gilt für **PDM Task***
- Es wurde ein Tastaturfokusproblem auf der Seite Bedingungen behoben, damit Benutzer nach dem Hinzufügen einer Bedingung die Spalten Wert und Konfiguration eingeben können.
- Machen Sie den SOLIDWORKS PDM-Task-Setup-Dialog resizable. Die PDMPublisher-Setupseiten werden nun mit dem Dialog erweitert.

<a id="20260805"></a>
## 2026.08.05
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***
- Hinzugefügt ACIS, 3D XML, VRML, VDAFS, CATIA Graphics, HCG, HOOPS HSF, Microsoft XAML, JPEG, TIF, Adobe Illustrator und Adobe Photoshop Exportformate. Siehe [Dateiformate](/src/pdmpublisher-options/file-formats.html).
- Hinzufügen von beschreibenden Formatnamen und Windows-Dateityp-Icons zum Dateiformat-Selektor und erweiterungsspezifischen Exportspeicherorten.
- Hinzufügen von visuellen Symbolen zur BOM-Vorlage und SOLIDWORKS-Versionsauswahl.

<a id="20260804"></a>
## 2026.08.04
* Gilt für **PDM Task***
- Hinzufügen eines Zeichenblatt-Moduswählers, um zu steuern, welche Blätter exportiert werden.
- Hinzufügen eines Blattnamenmusterfelds für Exportmodi, die Zeichenblätter nach Namen filtern.

<a id="20260803"></a>
## 2026.08.03
* Gilt für **PDM Task***
- Verbesserung der Pfadnormalisierung, Bereinigung des Temp-Ordners.
- Besseres UNC-Pfadhandling.
- Fügen Sie Logik hinzu, um temporäre Ordner nach erfolgreicher Aufgabenausführung zu löschen, mit Fehlerbehandlung und Warnmeldung beim Fehler.


<a id="20260802"></a>
## 2026.08.02
<a id="20260801"></a>
## 2026.08.01
* Gilt für **PDM Task***
- Fehler beim Erstellen neuer Aufgaben behoben (Leerer .net-Framework-Fehlerdialog)

<a id="20260727"></a>
## 2026.07.27
* Gilt für **PDM Task***
- Hinzugefügt (FolderName) für als Bedingung.
<a id="20260718"></a>
## 2026.07.18
* Gilt für **PDM Task***
- Behebung des Problems, dass PDM beim Check-in keine Dateien hinzugefügt hat (E EDM FILE SHARE ERROR: Ergebnis 0x8004020B)
- Behebtes Problem im Zusammenhang mit der Erstellung der TOC-Tabelle, wenn das Zeichen '#' verwendet wird.

<a id="20260621"></a>
## 2026.06.21
* Gilt für **PDM Task***
- Hinzufügen eines interaktiven Aufgabenstartdatei-Auswahldialogs für Aufgaben, bei denen Benutzer aufgefordert werden, Dateien beim Start anzugeben.
- CSV-Import zum Task-Startdialog hinzugefügt. PDMPublisher liest Dateinamen oder Pfade aus dem CSV, durchsucht den Tresor und verwendet das erste übereinstimmende Ergebnis beim Überspringen von Duplikaten.
- Automatische Assembly-Referenzberechnung im Startdialog hinzugefügt.
- Hinzufügen von reinen Sichtzeichnungsreihen unter Teilen und Baugruppen. Diese Zeilen werden zur Überprüfung angezeigt, aber nicht an die Task-Eingabeliste übergeben.
- Die Auswahl des Dateiformats für die Startzeit, die Sichtbarkeit des Exportstandorts und eine Verwaltungserklärung, in der die Aufgabenexporteinstellungen erläutert werden, werden über das PDM-Verwaltungstool SOLIDWORKS gesteuert. Siehe [Scheduled Items Task Page](/src/scheduleditems.html).

<a id="20260620"></a>
## 2026.06.20
* Gilt für **PDM Task***
- Die Einrichtungsseite **Scheduled Items** wurde hinzugefügt. Auf dieser Seite können Administratoren Dateien auswählen, die PDMPublisher verarbeiten soll, wenn eine geplante Aufgabe ohne ausgewählte Dateien ausgeführt wird. Siehe [hier](/src/scheduleditems.html).
- Zusätzliche Unterstützung für den Export von Parasolid Binärdateien mit der `x_b`-Erweiterung.
- Aktualisierter Zeitplan Items Task-Run-Handling und Task Details Log Lookup Verhalten.

<a id="20260531"></a>
## 2026.05.31
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***
- Hot Fix: PDF druckt aufgrund von geteilten Körpern nicht.

<a id="20260530"></a>
## 2026.05.30
**PDM Task**:
- Eine Log-Seite im Details-Tab hinzugefügt. Siehe [hier](/src/pdmpublisher_task_details.html).
- Zusätzliche Unterstützung für die Aufteilung von Mehrkörperteilen. Siehe [hier](/src/options.html).
- Begrenzte `u3d`-Erweiterung nur für den Export von Baugruppen.
- Behebung eines Fehlers beim Klicken auf Task hinzufügen im Administrationstool unter Aufgabenliste. Die Aufgabe fordert den Benutzer nun auf, auszuwählen, welche Dateien verarbeitet werden sollen:
![Addtask](https://pdmpublisher.com/help/images/add_task.png)
**SOLIDWORKS Add-in**:
- Icon-Transparenzproblem im Taskpane und im Add-in-Managerdialog in SOLIDWORKS behoben
- Zusätzliche Unterstützung für die Aufteilung von Mehrkörperteilen. Siehe [hier](/src/pdmpublishersolidworks_options.html).
- Begrenzte `u3d`-Erweiterung nur für den Export von Baugruppen.


<a id="20260501"></a>
## 2026.05.01
* Gilt für **PDM Task***
- Verbesserte Anzahl der Wiederholungen und Wartezeit zwischen den Wiederholungen beim Einchecken und Hinzufügen von Dateien.

<a id="20260421"></a>
## 2026.04.21
* Gilt für **PDM Task***
- Funktion hinzugefügt, um Aufgabenbefehle im Aufgaben-Rechtsklick-Menü im Datei-Explorer zu unterdrücken. Die Einstellung ist in Optionen.

<a id="20260417"></a>
## 2026.04.17
* Gilt für **PDM Task***
- Behebte Emission im Zusammenhang mit Blechexporten (Ansichten)

<a id="20260412"></a>
## 2026.04.12
* Gilt für **PDM Task***
- Kleine Bugfixes

<a id="20260411"></a>
## 2026.04.11
* Gilt für **PDM Task***
- Fehler beheben, wenn der Exportort mit `//` beginnt

<a id="20260410"></a>
## 2026.04.10
* Gilt für **PDM Task***
- Hinzufügen von Wiederholungen beim Hinzufügen von Dateien und Überprüfen von Dateien zurück in den Tresor.


<a id="20260401"></a>
## 2026.04.01
* Gilt für **PDM Task***
- Zusätzliche Unterstützung für den Export von Ansichten von Blechteilen
- Check-in Retry hinzugefügt
- Zusätzliche Protokollierung hinzugefügt, um herauszufinden, wann exportierte Dateien von anderen Anwendungen gesperrt werden

<a id="20260327"></a>
## 2026.03.27
* Gilt für **SOLIDWORKS add-in***
- Fixed Crash im Zusammenhang mit GDI erreicht +9999
- Kleinere Änderungen im Fortschrittsdialog

<a id="20260326"></a>
## 2026.03.26
* Gilt für **PDM Task***
- Fügen Sie einen benutzerdefinierten Mengenmultiplikator hinzu, wenn der Benutzer beim Start nach der Konfiguration gefragt wird.
- Hinzufügen des Menüelements Download Center im Administrationstool unter dem Add-in für den Fall, dass PDMDeploy blockiert ist. Dies führt Sie zum PDMPublisher Download Center.

<a id="20260322"></a>
## 2026.03.22
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***
- Merge und TOC Bugs beheben.
- Zusätzliche Unterstützung für den Export nach `bmp`

<a id="20260316"></a>
## 2026.03.16
* Gilt für **PDM Task***
- Unterstützung für die Verarbeitung von Excel- und Word-Dateien in pdf hinzugefügt
- Zusätzliche Unterstützung für die variable Zuordnung zwischen der Zieldatei und der Quelldatei
- Zusätzliche Unterstützung zum Erstellen einer benutzerdefinierten Referenz zwischen der Zieldatei und der Quelldatei
- Zusätzliche Unterstützung zum Löschen von Duplikaten außerhalb des Zielziels
- Unterstützung für die folgenden Erweiterungen hinzugefügt: `ifc`,`3mf`, `3dpdf` (pdf, aber für die Teile und Baugruppen)
- Kleinere Bugfixes


<a id="20260223"></a>
## 2026.02.23
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***
- Fehler beim Exportieren flacher Muster, wenn `Convert Multiple Configurations` aktiviert ist
- Neue Option unter Flat Pattern Settings hinzugefügt, um `-FlatPattern` zum Dateinamen des flachen Musters dxf zu entfernen oder hinzuzufügen.

<a id="20260222"></a>
## 2026.02.22
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***
- Zusätzliche Unterstützung für das Filtern von Konfigurationen für die über `Convert Multiple Configurations` aktivierte Aufgabe
- Unterstützung für die Erweiterung `3mf` für Teile hinzugefügt

<a id="20260221"></a>
## 2026.02.21
* Gilt für **SOLIDWORKS Add-in***
- Fehlerbehebung im Zusammenhang mit Zeichnungen, die beim Drucken in PDF nicht geschlossen werden.

<a id="20260220"></a>
## 2026.02.20
* Gilt für **SOLIDWORKS Add-in***
- Zusätzliche Möglichkeit zur Auswahl, welche Konfigurationen (Muster einschließen und ausschließen) unter der Option `Convert Multiple Configurations` verarbeitet werden sollen

<a id="20260219"></a>
## 2026.02.19
<a id="20260218"></a>
## 2026.02.18
* Gilt für **SOLIDWORKS Add-in***
- Ghost Rekonstruktion


<a id="20260217"></a>
## 2026.02.17
* Gilt für **SOLIDWORKS Add-in***
- Problem bei der Berechnung der festen Stückliste
<a id="20260216"></a>
## 2026.02.16
<a id="20260215"></a>
## 2026.02.15
<a id="20260214"></a>
## 2026.02.14
<a id="20260213"></a>
## 2026.02.13
* Gilt für **SOLIDWORKS Add-in***
- Ghost Rekonstruktion

<a id="20260213"></a>
## 2026.02.13
* Gilt für **SOLIDWORKS Add-in***
- Fix: Wenn der Taskpane fehlschlägt, versucht das Add-in, sich selbst neu zu registrieren. Sie müssen SW als Administrator für diese Arbeit ausführen.


<a id="2026-02-12"></a>
## 2026-02-12
* Gilt für **SOLIDWORKS Add-in***
- Verbesserte Referenzdialogladegeschwindigkeit

<a id="2026-02-11"></a>
## 2026-02-11
* Gilt für **SOLIDWORKS Add-in***
- Fehler behoben: Unvollständige Referenzen Dialogdaten, wenn die Montage auf oberster Ebene im Leichtgewicht geöffnet wird.
- Verringerte Zeit, die benötigt wird, um den Referenzbaum im Fortschrittsdialog zu erstellen
- Geringfügige UI-Änderungen in der About-Seite (Umbenannte Buttons Beschriftungen und hinzugefügte Support-E-Mail-Adresse)

<a id="2026-02-10"></a>
## 2026-02-10
- Geisterbau

<a id="2026-02-09"></a>
## 2026-02-09
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***
- Begonnener gebrauchter Seperator | anstelle von # (Probleme mit Dateinamen, die # enthalten)
- Aktualisierte FAQ zum Zusammenführen von PDFs Fehler.
- `ConfigurationName` alias zu Bedingungen hinzugefügt.

<a id="2026-01-17"></a>
## 2026-01-17
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***
- **outside diameter of countersink holes** beim Exportieren des **DXF flat patterns**-Bugs behoben.

<a id="2026-01-16"></a>
## 2026-01-16
* Gilt für **SOLIDWORKS Add-in***
- Fixed Assembly Konflikt Bug

<a id="2026-01-15"></a>
## 2026-01-15
* Gilt für **PDM Task** und **SOLIDWORKS Add-in***

- Hinzufügen eines neuen **Flat Pattern export setting**, das den **outside diameter of countersink holes** beim Exportieren von **DXF flat patterns** entfernt: Dies hilft, sauberere DXFs für die nachgelagerte Fertigung herzustellen, indem die Außengeometrie ausgeschlossen wird, während die erforderlichen Schnittprofile erhalten bleiben.
