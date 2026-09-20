---
title: "PDMPublisher für SOLIDWORKS"
description: "Verwenden Sie PDMPublisher in SOLIDWORKS für die Veröffentlichung, Save As New, Property Doctor, Clone Tree, Profile und freigegebene Einstellungen."
ms.date: 09/19/2026
ms.topic: overview
---

# PDMPublisher für SOLIDWORKS

PDMPublisher für SOLIDWORKS ist ein interaktives SOLIDWORKS-Add-in zum Veröffentlichen von Deliverables, zum Erstellen von kontrollierten Dokumentkopien, zum Bearbeiten von Eigenschaften und zum Verpacken vollständiger Dokumentsätze. Es läuft in SOLIDWORKS und kann SOLIDWORKS PDM Professional-Informationen verwenden, wenn eine Vault-Ansicht verfügbar ist.

> [!IMPORTANT]
> Diese Dokumentation beschreibt das SOLIDWORKS-Add-in, nicht die PDMPublisher-Task, die im SOLIDWORKS PDM-Administrationstool konfiguriert ist.

Siehe [PDM Task vs SOLIDWORKS Add-in](pdmpublisher-product-differences.md) für einen Side-by-Side-Vergleich und Links zu den Einstellungen beider Produkte.

<a id="current-interface"></a>
## Aktuelles Interface

PDMPublisher-Befehle befinden sich auf der Registerkarte **PDMPublisher** im SOLIDWORKS CommandManager und unter **Tools > PDMPublisher**. Der Aufgabenbereich ist nun ein Dokumentationsbrowser und enthält nicht mehr die Veröffentlichungssteuerelemente.

![PDMPublisher CommandManager Befehle und eingebetteter Hilfebereich in SOLIDWORKS 2026](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
Die CommandManager ist in drei Gruppen unterteilt:

| Gruppe | Befehle | Zweck |
| --- | --- | --- |
| Dokumentierungswerkzeuge | Save As New, Property Doctor, Übersetzen, Clone Tree | Erstellen Sie Kopien, verwalten Sie Eigenschaften und Paketdokumentsätze. Translate ist einem zukünftigen Release vorbehalten. |
| Stückliste der Materialien | BOM Manager | Konfigurieren Sie Stücklistenspalten, Struktur, Gruppierung und Komponentenausschlüsse. |
| geplante Integrationen | ERP Sync, Publisher Macros | Zeigen Sie die geplanten Standorte von ERP synchronisierung und geplante Veröffentlichung. Diese Integrationen sind noch nicht verfügbar. |
| Veröffentlichen | Veröffentlichen, Anmerkungen, Bedingungen, Protokolle | Konfigurieren und Ausführen von Exporten, Kontrollanmerkungen und Verarbeitungsregeln sowie Überprüfung der Ergebnisse. |
| Einstellungen und Updates | Einstellungen, Lizenzschlüssel, Updatestatus, Versionsinformationen | Konfigurieren Sie das Add-in, übertragen Sie Einstellungen, verwalten Sie die Lizenzierung und überprüfen Sie die installierte Version. |

Siehe [PDMPublisher Commands](pdmpublishersolidworks_commands.md) für Befehlsverfügbarkeit, Profil-Dropdowns und Assembly-Kontextmenü-Befehle.

<a id="start-a-workflow"></a>
## Starten Sie einen Workflow

1. Öffnen oder aktivieren Sie ein gespeichertes Teil, eine Baugruppe oder eine Zeichnung in SOLIDWORKS.
2. Öffnen Sie die Registerkarte **PDMPublisher** CommandManager.
3. Wählen Sie einen Befehl aus, um die Standardeinstellungen zu verwenden, oder wählen Sie den Pfeil unter einem unterstützten Befehl aus, um ein gespeichertes Profil auszuwählen.
4. Überprüfen Sie das Befehlsfenster oder die Vorschau, bevor Sie Dateien oder Dokumenteigenschaften schreiben.
5. Schließen Sie den Vorgang ab und überprüfen Sie alle gemeldeten Warnungen oder Fehler.

**Save As New**, **Property Doctor**, **Clone Tree** und **Publish** unterstützen wiederverwendbare Profile. Eine in einer Assembly ausgewählte Komponente verfügt auch über PDMPublisher-Befehle im Rechtsklick-Menü.

<a id="save-as-new"></a>
## Save As New

[Save As New](pdmpublishersolidworks_save-as-new.md) erstellt ein separates natives SOLIDWORKS-Dokument, ohne das Quelldokument umzubenennen oder die Quellzusammenbaureferenzen zu ändern.

![Save As New Einstellungen und Profilkontrollen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)
Verwenden Sie es, um:

- Erstellen Sie Dateinamen und Zielordner aus Dokumentenwerten, Eigenschaften, Ordnerwerten, PDM-Variablen, Formeln, Seriennummern und aufgefordertem Text.
- Zeigen Sie den normalen Dialog Speichern As an, wenn das Ziel eine Benutzerbestätigung benötigt.
- Bauen Sie das Modell vor dem Speichern neu auf und öffnen Sie die neue Kopie danach.
- Kopieren und verknüpfen Sie eine zugehörige Zeichnung.
- Schreiben Sie berechnete Bounding-Box-Abmessungen in das neue Teil oder die neue Baugruppe.
- Führen Sie ein SOLIDWORKS-Makro aus, nachdem die Kopie erstellt wurde.
- Hinzufügen und Überprüfen Sie die neuen Dateien automatisch in den ausgewählten PDM-Tresor.

Save As New validiert die Erweiterung, das Ziel, doppelte Dateinamen, vorhandene Dateien und Tresorkonflikte, bevor die Kopie geschrieben wird.

<a id="property-doctor"></a>
## Property Doctor

[Property Doctor](pdmpublishersolidworks_property-doctor.md) zeigt das aktive Dokument, Konfigurationen, Schnittlisten, Zeichnungen und referenzierte Dokumente in einem editierbaren Eigenschaftsraster an.

![Property Doctor Dokument- und Eigenschaftsraster](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/PropertyDoctor/PropertyDoctor_Main_window_Default_Light_100.png)
Verwenden Sie es, um:

- Hinzufügen, Bearbeiten, Löschen, Zurücksetzen oder Löschen benutzerdefinierter und konfigurationsspezifischer Eigenschaften.
- Suchen, filtern, finden und ersetzen und füllen Sie Werte in sichtbaren Zeilen.
- Verwenden Sie Dokumentwerte, verknüpfte Werte, Formeln, PDM-Informationen und konfigurierte externe Quellen.
- Hinzufügen und Organisieren von Eigenschaftsspalten oder Laden einer wiederverwendbaren Spaltenvorlage.
- Importieren Sie Eigenschaftswerte aus CSV und exportieren Sie das aktuelle Gitter nach CSV.
- Zeigen Sie ein Property Doctor-Profil an, bevor Sie die bestellten Eigenschaftsaktionen anwenden.
- Überprüfen Sie PDM-Dateien in oder aus, erhalten Sie die neuesten, lösen Sie Referenzen auf und öffnen Sie ungeladene Dokumente, wenn dies zulässig ist.

Ausstehende Änderungen bleiben im Raster, bis **Apply changes** ausgewählt ist. **Discard changes** stellt die Werte wieder her, die beim Öffnen des Fensters geladen wurden.

<a id="clone-tree"></a>
## Clone Tree

[Clone Tree](pdmpublishersolidworks_smart-pack.md) erstellt einen Kopierplan für ein aktives Dokument und seine Referenzen. Jede enthaltene Datei kann ihren eigenen Ausgabenamen und Zielort haben, während SOLIDWORKS-Referenzen auf die kopierten Dateien aktualisiert werden.

![Clone Tree Dokumentenkopierplan](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/CloneTree/CloneTree_Main_window_Default_Light_100.png)
Verwenden Sie es, um:

- Einzelne Modelle und Zeichnungen aus dem Paket einschließen oder ausschließen.
- Erstellen Sie pro Datei Namen und Ziele aus Eigenschaften, Ordnern, PDM Variablen, Seriennummern und Formeln.
- Ignorieren Sie Toolbox-Komponenten, wenn sie weiterhin auf ihre ursprünglichen Standorte verweisen sollen.
- Fügen Sie gleichnamige STEP, PDF oder DXF Companion-Dateien hinzu.
- Kopieren Sie die zuletzt zugewiesene PDM-Revision direkt auf das Ziel, ohne den lokalen Vault-Cache zu ändern.
- Speichern Sie unterstützte Dokumente in der aktuellen SOLIDWORKS-Version oder einer unterstützten früheren Version.
- Erstellen Sie ein ZIP-Archiv, nachdem der Dokumentsatz kopiert wurde.
- Bestellte Profilregeln anwenden und optional ein Property Doctor-Profil auf kopierten Dateien ausführen.

Die Kopie wird blockiert, wenn Ziele dupliziert werden, eine Quelle oder eine vorhandene Datei überschreiben, eine SOLIDWORKS-Erweiterung ändern oder von ungelösten Ziel- oder Revisionsinformationen abhängen.

<a id="bom-manager"></a>
## BOM Manager

[BOM Manager](pdmpublishersolidworks_bom-manager.md) definiert die Standardspaltenvorlage, den SOLIDWORKS-BOM-Anzeigetyp, den Zeilengruppierungsausdruck und bedingungsbasierte Komponentenausschlüsse, die von BOM-Workflows verwendet werden.

![BOM Manager Hauptfenster](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Main_window_Default_Light_100.png)
Das BOM Manager-Fenster zeigt die Assemblyhierarchie, die Konfiguration, die Anzahl und die ausgewählten Eigenschaftsspalten an. Es kann Zeilen finden und filtern, den Stücklistentyp oder die Spaltenvorlage ändern, Einträge gruppieren, Komponenten ignorieren, Excel-Daten importieren oder exportieren und unterstützte Änderungen anwenden.

![BOM Manager defaults](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_BOM_Manager_Default_Light_100.png)
Wählen Sie **Ignore Components** aus, um Bedingungen zu erstellen, die übereinstimmende Komponenten aus der Stückliste entfernen, ohne sie in der SOLIDWORKS-Baugruppe zu unterdrücken oder zu löschen.

![BOM Manager Komponentenbedingungen ignorieren](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Ignore_components_Default_Light_100.png)
<a id="publishing"></a>
## Veröffentlichen

Der Befehl [Publish](pdmpublishersolidworks-publish.md) öffnet die Veröffentlichung für das aktive Dokument. Ein Publish-Profil kombiniert die Ausgabeeinstellungen, Anmerkungen und Bedingungen, die für einen wiederholbaren Export erforderlich sind.

![Veröffentlichung von Ausgabe, Zeichnungsblatt, Referenz und Fertigungseinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Veröffentlichen kann:

- Exportieren Sie Teile, Baugruppen, Zeichnungen und Verweise auf unterstützte PDF, DXF, DWG, STEP, eDrawings und andere Formate.
- Erstellen Sie Ausgabepfade und Dateinamen aus Platzhaltern und Dokument- oder PDM-Werten.
- Prozessreferenzen einzeln, Konvertierungskonfigurationen und Filterkonfigurationen.
- Wählen Sie Zeichenblätter aus, passen Sie Blattnamen an, verschmelzen Sie PDFs, fügen Sie ein Inhaltsverzeichnis hinzu und erstellen Sie Lesezeichen.
- Ausfuhr flacher Blechmuster und gespaltener Körper.
- Fügen Sie Text, Eigenschaftswerte, Wasserzeichen und QR-Codes durch [Anmerkungen](pdmpublishersolidworks_annotations.md) hinzu.
- Dokumente und Referenzen durch [Bedingungen](conditions_solidworks.md) einschließen oder ausschließen.
- Speichern Sie Verarbeitungsdetails, Warnungen und Fehler in [Logs](pdmpublishersolidworks_logs.md).

Siehe [Einstellungen veröffentlichen](pdmpublishersolidworks_options.md) für die vollständige Veröffentlichungsoption Referenz.

<a id="annotations"></a>
### Anmerkungen

[Anmerkungen](pdmpublishersolidworks_annotations.md) platzieren formatierten Text, SOLIDWORKS-Eigenschaften, Wasserzeichen und andere Markierungen auf veröffentlichten PDF-Seiten. Jede Anmerkung kann ihre eigene Position und Blattauswahl haben.

![Annotations Editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Annotations_Default_Light_100.png)
<a id="conditions"></a>
### Bedingungen

[Bedingungen](conditions_solidworks.md) verwenden verschachtelte Regeln, um Dokumente und Referenzen vor dem Export einzuschließen oder auszuschließen. Die Veröffentlichungsüberprüfung zeigt das Ergebnis, bevor Dateien geschrieben werden.

![Bedingungen Editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Default_Light_100.png)
<a id="logs-and-publish-review"></a>
### Logs und Veröffentlichung Review

[Logs](pdmpublishersolidworks_logs.md) zeichnen Ausgabedateien, Warnungen, übersprungene Elemente und Fehler auf. Wenn **Show dialog before processing** aktiviert ist, listet das Überprüfungsfenster die Dateien und Konfigurationen auf, die verarbeitet werden sollen.

![Dateien vor der Veröffentlichung überprüfen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-condition-review-20260916.png)
![Logs auf Fehler gefiltert veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)
<a id="settings-and-profiles"></a>
## Einstellungen und Profile

Der Befehl [Einstellungen](pdmpublishersolidworks_settings.md) öffnet einen durchsuchbaren Dialog für alle Add-in-Konfigurationen.

![Searchable PDMPublisher for SOLIDWORKS Settings dialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
Der Dialog enthält:

- Dienstprogrammeinstellungen und Profile für Save As New, Property Doctor und Clone Tree.
- BOM Manager-Standards für Spalten, Anzeigetyp, Gruppierung und ignorierte Komponenten.
- Deutlich markierte Platzhalter für die geplanten Funktionen Translate, ERP Sync und Publisher Macros.
- Veröffentlichen Sie Profile, einschließlich Veröffentlichungsoptionen, Anmerkungen und Bedingungen.
- Gemeinsame PDM-Auswahl, Sprachen, Zeichensuchordner, externe Quellen und erweiterte Formeln.
- Support-, Update-, Versions-, Rechts- und Lizenzinformationen.

Profile gehören zu dem Befehl, der sie verwendet. Beispielsweise speichert ein Property Doctor-Profil Eigenschaftsaktionen, während ein Veröffentlichungsprofil das Exportverhalten speichert. Wenn Sie den Pfeil unter einem Befehl CommandManager auswählen, werden die für diesen Befehl verfügbaren Profile aufgelistet.

Die Menüs Einstellungen **Import** und **Export** können die komplette Konfiguration über eine Datei oder eine sechsstellige PIN übertragen. Der vollständige Transfer umfasst jede Profilfamilie und die gemeinsam genutzten Ressourcen. SQL Server-Anmeldeinformationen sind absichtlich ausgeschlossen und müssen auf dem Zielcomputer eingegeben werden.

<a id="shared-resources"></a>
### Gemeinsame Ressourcen

Gemeinsame Ressourcen bieten wiederverwendbare Konfigurationen für unterstützte Dienstprogramme und Veröffentlichungsprofile.

- [Sprachen](pdmpublishersolidworks_languages.md) wählt die Add-in-Anzeigesprache und die regionale Formatierung aus.
- [File Locations](pdmpublishersolidworks_file-locations.md) definiert zusätzliche Ordner, die verwendet werden, um zugehörige Zeichnungen zu finden.
- [Externe Quellen](pdmpublishersolidworks_external-sources.md) definiert wiederverwendbare SQL Server-Verbindungen und Abfragen.
- [Advanced Formulas](pdmpublishersolidworks_advanced-formulas.md) definiert benannte Ausdrücke für Dateinamen, Ordner und Eigenschaften.

![Sprach- und Regionalformateinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Languages_Default_Light_100.png)
![Dateistandorteinstellungen zeichnen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)
![Externe SQL Server Quellen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Sources_Default_Light_100.png)
![Erweiterte Formeleinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)
<a id="planned-features"></a>
## Geplante Merkmale

Die aktuelle Schnittstelle reserviert Seiten für [Übersetzen](pdmpublishersolidworks_translate.md), [ERP Sync](pdmpublishersolidworks_erp-sync.md) und [Publisher Macros](pdmpublishersolidworks_publisher-macros.md). Diese Seiten zeigen die geplanten Produktbereiche, die Features stehen aber noch nicht für die Produktion zur Verfügung.

![Planned Translate settings page](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Translate_Default_Light_100.png)
![Planned ERP Sync settings page](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_ERP_Sync_Default_Light_100.png)
![Planned Publisher Macros settings page](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publisher_Macros_Default_Light_100.png)
<a id="help-task-pane"></a>
## Help Aufgabenbereich

Der Aufgabenbereich PDMPublisher zeigt die kompakte Begrüßungsseite der Dokumentation unter `https://pdmpublisher.com/help/addinwelcome.html` an. Es hostet oder steuert nicht die nativen PDMPublisher-Befehle.

Die eingebettete Seite erfordert Microsoft Edge WebView2 Runtime. Wenn die Seite nicht geladen werden kann, bleiben alle CommandManager-Befehle verfügbar. Siehe [Help Aufgabenbereich](pdmpublishersolidworks_help-pane.md) für Anforderungen und Fehlersuche.

<a id="solidworks-pdm-professional-integration"></a>
## SOLIDWORKS PDM Professional Integration

Wenn der Computer über eine lokale PDM-Vault-Ansicht verfügt, kann PDMPublisher die aktive PDM-Sitzung verwenden, um Vault-Ordner und Variablen aufzulösen, Seriennummern zu reservieren, Dateien einzu- oder auszuchecken, Revisionen abzurufen und Vault-Ziele zu validieren. Die verfügbaren Aktionen folgen weiterhin den Vault-Berechtigungen und dem Workflow-Status des angemeldeten Benutzers.

![PDM-Vault-Verbindung von Add-in-Dienstprogrammen verwendet](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)
Das SOLIDWORKS-Add-in enthält keine PDM-Task-Planung, Task-Launch-Anfragen, Ausführungsmethode-Konfiguration oder Task-Host-Auswahl SOLIDWORKS. Diese gehören zu [PDMPublisher für PDM Professional](pdmpublisher.md).

<a id="install-and-enable-the-add-in"></a>
## Installieren und Aktivieren des Add-Ins

Schließen Sie SOLIDWORKS, bevor Sie das MSI-Installationsprogramm ausführen. Öffnen Sie nach der Installation **Tools > Add-Ins**, suchen Sie **PDMPublisher (SOLIDWORKS)** unter **Partner Solution Add-Ins** und aktivieren Sie sowohl die Checkboxen für die aktuelle Sitzung als auch für den Start.

![PDMPublisher für SOLIDWORKS als Partner Solution Add-in aktiviert](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)
Siehe [Installieren und Aktivieren des Add-Ins](pdmpublishersolidworks_installation.md) für die vollständige Prozedur und Fehlersuche.

<a id="download-and-licensing"></a>
## Download und Lizenzierung

- [Installationshandbuch](pdmpublishersolidworks_installation.md)
- [Download PDMPublisher für SOLIDWORKS](https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher)
- [Kaufen Sie eine PDMPublisher für SOLIDWORKS Lizenz](https://bluebyte.biz/product/pdmpublisher-solidworks)
- [Lizenzverwaltung](pdmpublishersolidworks_license.md)

PDMPublisher für SOLIDWORKS kann als Community Edition ohne bezahlten oder Testschlüssel ausgeführt werden. Die separate 7-Tage-Testversion, die an anderer Stelle auf dieser Hilfeseite angeboten wird, ist für den **PDM Professional Task version**.

![PDMPublisher für SOLIDWORKS Lizenzschlüsselseite](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_License_Key_Default_Light_100.png)
<a id="updates-and-about"></a>
## Updates und About

[Version und Updates](pdmpublishersolidworks-updates.md) meldet die installierten und verfügbaren Versionen und stellt den Update-Befehl bereit. [Über](pdmpublishersolidworks_About.md) bietet Produkt, Support, Dokumentation und rechtliche Informationen.

![Einstellungen für Support und Updates](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Support_Updates_Default_Light_100.png)
![Über Einstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_About_Default_Light_100.png)
Für Support kontaktieren Sie `support@bluebytesystemsinc.zohodesk.com`.
