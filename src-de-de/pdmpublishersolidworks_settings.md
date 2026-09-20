---
title: "Einstellungen | PDMPublisher für SOLIDWORKS"
description: "Konfigurieren Sie Publishing, Dienstprogramme, Integrationen, BOM Manager, freigegebene Ressourcen, Lizenzierung und vollständige Einstellungen Übertragung in PDMPublisher für SOLIDWORKS."
ms.date: 09/19/2026
ms.topic: how-to
---

# Einstellungen

Öffnen Sie **PDMPublisher > Settings**, um das SOLIDWORKS-Add-in zu konfigurieren. Suchoptionen finden einstellungen nach seitenname, label und verwandtem schlüsselwort.

![Aktuelle Veröffentlichungsseite im einheitlichen PDMPublisher für den SOLIDWORKS-Einstellungsdialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Die linke Navigation unterteilt den Dialog in **Publishing**, **Utilities**, **Integration**, **Bill Of Materials**, **Shared Resources** und Produktinformationsseiten. **Search Options** findet eine Steuerung durch sein Label oder ein verwandtes Keyword, ohne dass der Benutzer wissen muss, welche Seite es enthält.

<a id="settings-pages"></a>
## Einstellungsseiten

| Kategorie | Seite | Was sie kontrolliert |
| --- | --- | --- |
| Versorgungsunternehmen | [Save As New](pdmpublishersolidworks_save-as-new.md) | Dateiname und Zielvorlagen, PDM-Seriennummern, zugehörige Zeichnungen, Bounding-Box-Eigenschaften, Makros und Befehlsprofile. |
| Versorgungsunternehmen | [Clone Tree](pdmpublishersolidworks_smart-pack.md) | Klonprofile, PDM-Seriennummernquelle, Verhalten der neuesten Revision, Begleitdateien, ZIP-Ausgabe und optionale Property Doctor-Verarbeitung. |
| Versorgungsunternehmen | [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Standardspalten, Miniaturansichten und Eigenschaftsaktionsprofile. |
| Versorgungsunternehmen | [Übersetzen](pdmpublishersolidworks_translate.md) | Geplanter Übersetzungsworkflow; noch nicht verfügbar. |
| Integration | [ERP Sync](pdmpublishersolidworks_erp-sync.md) | Aktiver Konnektor, Standard-Spaltenvorlage und Stücklistentyp, Gruppierung, ignorierte Komponenten und Filter. |
| Integration | [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) | Geplanter Publishing-Scheduler; noch nicht verfügbar. |
| Stückliste der Materialien | [BOM Manager](pdmpublishersolidworks_bom-manager.md) | Standard-BOM-Spalten, Anzeigetyp, Gruppierungsausdruck und Komponentenausschlüsse. |
| Gemeinsame Ressourcen | [PDM](pdmpublishersolidworks_pdm-settings.md) | Das Gewölbe, das von PDM-bewussten Utility-Einstellungen verwendet wird. |
| Gemeinsame Ressourcen | [Sprachen](pdmpublishersolidworks_languages.md) | Die PDMPublisher-Schnittstellensprache. |
| Gemeinsame Ressourcen | [File Locations](pdmpublishersolidworks_file-locations.md) | Zusätzliche Zeichnungsordner, optionale Unterordner und SOLIDWORKS Referenced Documents Ordner. |
| Gemeinsame Ressourcen | [Externe Quellen](pdmpublishersolidworks_external-sources.md) | Wiederverwendbare SQL Server-Quellen, die von unterstützten Eigenschafts- und Formelmenüs verwendet werden. |
| Gemeinsame Ressourcen | [Fortgeschrittene Formeln](pdmpublishersolidworks_advanced-formulas.md) | Benannte Formeln, die von Dateinamen, Ordnern und Eigenschaften geteilt werden. |
| Veröffentlichen | [Publish](pdmpublishersolidworks_options.md) | Veröffentlichen Sie Profile, Ausgaben, Formate, Referenzen, Zeichnungsblätter, PDFs und Fertigungsausgaben. |
| Unterstützung | [Über](pdmpublishersolidworks_About.md) | Support, Dokumentation, Produkt und rechtliche Links. |
| Produktinformationen | [Lizenzschlüssel](pdmpublishersolidworks_license.md) | SOLIDWORKS Add-in Aktivierung, Deaktivierung und Status der Community Edition. |

Wählen Sie **OK**, um Änderungen zu speichern. **Cancel** schließt den Dialog, ohne die aktuellen Bearbeitungen zu speichern. **Reset** stellt Standardwerte für die ausgewählte Seite wieder her; Wählen Sie **OK**, um die Reset-Werte beizubehalten.

<a id="utility-settings"></a>
## Dienstprogrammeinstellungen

<a id="save-as-new"></a>
### Save As New

![Aktuelle Save As New Einstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)
Die Seite steuert Dateinamen-Platzhalter, ein optionales Ziel, PDM-Seriennummern, ob der SOLIDWORKS-Speicher-Als-Dialog angezeigt werden soll, automatisches Einchecken, Neuaufbauverhalten, Öffnen der neuen Kopie, berechnete Bounding-Box-Eigenschaften, zugehörige Zeichnungen, Property Doctor-Bereinigung, Post-Save-Makros und wiederverwendbare Profile. Optionen, die von einem anderen Kontrollkästchen abhängen, bleiben deaktiviert, bis ihre übergeordnete Option aktiviert ist.

<a id="clone-tree"></a>
### Clone Tree

![Aktuelle Clone Tree Einstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Clone_Tree_Default_Light_100.png)
**Use this serial number** wählt die PDM-Seriennummerndefinition aus, die von Zeilen verwendet wird, die eine neue Nummer anfordern. Der Profilwähler wählt die vom Befehl bearbeiteten Einstellungen aus. Die Buttons daneben erstellen, benennen / bearbeiten und löschen Profile. Seriennummern werden generiert, wenn **Copy** im Workflow ausgewählt wird, und wiederholt die Wiederverwendung derselben Nummer, während der Dialog geöffnet bleibt.

<a id="property-doctor"></a>
### Property Doctor

![Aktuelle Property Doctor Einstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Property_Doctor_Default_Light_100.png)
**Hide thumbnail column** verbessert die Ladeleistung. Der Spaltenvorlagenselektor bestimmt, welche Eigenschaften beim Öffnen von Property Doctor erscheinen. **Edit columns** ändert diese Vorlage und **Save default** speichert sie als Standard. Die Profilauswahl und die angrenzenden Schaltflächen wählen, erstellen, bearbeiten oder löschen Property Doctor Aktionsprofile.

<a id="shared-resources"></a>
## Gemeinsame Ressourcen

<a id="pdm"></a>
### PDM

![PDM-Vault-Verbindungseinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)
Aktivieren Sie **Use vault** und wählen Sie den lokalen SOLIDWORKS PDM Professional-Tresor aus, der durch Seriennummern, automatisches Einchecken, Platzhalter für Vault-Rootordner und andere PDM-fähige Tools geteilt wird.

<a id="languages"></a>
### Sprachen

![Sprache und Regionalformatauswahl](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Languages_Default_Light_100.png)
Wählen Sie die Anzeigesprache und die regionale Formatierung aus, die von PDMPublisher auf diesem Computer verwendet wird. Öffnen Sie bestehende PDMPublisher-Fenster nach dem Ändern.

<a id="file-locations"></a>
### Dateistandorte

![Dateistandorteinstellungen zeichnen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)
Verwenden Sie **Add** und **Remove**, um zusätzliche Zeichensuchordner zu verwalten. **Include subfolders** sucht unter jedem aufgelisteten Ordner. **Include SOLIDWORKS File Locations > Referenced Documents folders** durchsucht auch die in SOLIDWORKS konfigurierten Ordner. Der Ordner des aktiven Modells wird immer zuerst durchsucht, gefolgt von den aufgelisteten Ordnern in der Reihenfolge.

<a id="external-sources"></a>
### Externe Quellen

![Externe SQL Server Quelleinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_External_Sources_Default_Light_100.png)
Externe Quellen sind wiederverwendbare SQL Server-Verbindungen und Abfragen. **Add** erstellt eine Quelle, **Edit / Test** ändert sie und validiert die Abfrage mit einem Konfigurationsnamen, Dateinamen oder Eigenschaftswert, und **Delete** entfernt die ausgewählte Definition. Anmeldeinformationen bleiben lokal und sind nicht in den exportierten Einstellungen enthalten.

<a id="advanced-formulas"></a>
### Fortgeschrittene Formeln

![Erweiterte Formeleinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)
Erweiterte Formeln werden als Ausdrücke bezeichnet, die von unterstützten Dateinamen, Ordnern und Eigenschaftsmenüs geteilt werden. **Add** erstellt eine Formel, **Edit** ändert die ausgewählte Formel und **Delete** entfernt sie. Formelnamen sollten ihr Ergebnis beschreiben, damit sie verständlich bleiben, wenn sie aus einem anderen Workflow eingefügt werden.

<a id="dialog-commands"></a>
## Dialogbefehle

| Kommando | Verhalten |
| --- | --- |
| **Reset** | Wiederherstellt die Standardeinstellungen für die ausgewählte Einstellungsseite. Der Reset wird erst nach Auswahl von **OK** gespeichert. |
| **Import** | Importiert alle Einstellungen aus einer Datei oder einer sechsstelligen Freigabe-PIN. |
| **Export** | Exportiert alle Einstellungen in eine Datei oder lädt sie hoch und gibt eine gemeinsame PIN zurück. |
| **OK** | Validiert und speichert die aktuellen Änderungen. |
| **Cancel** | Schließt den Dialog, ohne Änderungen zu speichern, die seit dem Öffnen vorgenommen wurden. |

<a id="transfer-all-settings"></a>
## Alle Einstellungen übertragen

Die Menüs **Import** und **Export** unten übertragen eine vollständige PDMPublisher-Konfiguration.

- **Export all settings to File...** erstellt ein komplettes Einstellungspaket.
- **Share complete settings using PIN...** lädt das Paket hoch und gibt eine sechsstellige PIN zurück.
- **Import all settings from File...** validiert und wendet ein Bündel von der Festplatte an.
- **Import complete settings using PIN...** lädt, validiert und wendet ein gemeinsames Bundle an.

Ein komplettes Bundle enthält Utility-Einstellungen, Save As New-Profile, Property Doctor-Profile, Clone Tree-Profile, freigegebene Formeln und Quellen sowie vollständige Publish-Profile.

ERP Sync-Einstellungen sind im vollständigen Einstellungspaket enthalten. Konnektoranmeldeinformationen und andere gespeicherte Konnektorwerte bleiben für den aktuellen Windows-Benutzer geschützt und werden durch den Einstellungsexport nicht übertragbar. Geplante Seiten ohne konfigurierbare Steuerelemente, wie Publisher Macros und Translate, fügen einem exportierten Paket kein aktives Verhalten hinzu.

> [!IMPORTANT]
> SQL Server Verbindungsgeheimnisse werden nicht exportiert oder hochgeladen. Geben Sie nach einem Import erneut Anmeldeinformationen für externe Quellen ein, die nicht bereits über übereinstimmende lokale Anmeldeinformationen verfügen.

Vor dem Ersetzen von Einstellungen validiert PDMPublisher jeden Abschnitt und erstellt ein lokales Backup mit Zeitstempel. Wenn das Schreiben eines Abschnitts fehlschlägt, versucht er, die vorherigen Einstellungen wiederherzustellen.

Um nur ein Publish-Profil zu übertragen, verwenden Sie [Profiles](pdmpublishersolidworks_profiles.md) anstelle eines vollständigen Einstellungspakets.

Für die vollständige Prozedur und Konfliktverhalten, siehe [Import, Export und Reset-Einstellungen](pdmpublishersolidworks_settings-transfer.md).
