---
title: "Erste Schritte | Blue Byte Systems Help Center | SOLIDWORKS PDM"
description: "Willkommen bei Blue Byte Systems, einem Anbieter von Lösungen für die Automatisierung, Veröffentlichung, Migration, Datenqualität und Aufgabenoptimierung von SOLIDWORKS."
ms.date: 08/24/2026
ms.topic: conceptual
---

# Willkommen

BLUE BYTE SYSTEMS INC. bietet spezialisierte Produkte und Beratungsdienste zur Verbesserung der technischen Effizienz, des Datenmanagements und der Prozessautomatisierung für Unternehmen, die SOLIDWORKS und SOLIDWORKS PDM verwenden.

Unsere Lösungen helfen Unternehmen dabei, sich wiederholende Aufgaben zu optimieren, Veröffentlichungs- und Migrationsworkflows zu automatisieren, die Datenqualität zu verbessern und SOLIDWORKS PDM anzupassen, um ihre Geschäftsprozesse besser zu unterstützen.

<p align="center">
<a href="https://www.solidworks.com/partner-product/pdmpublisher" target="_blank" rel="noopener noreferrer"><img src="https://pdmpublisher.com/help/images/solution_partner_logo.png" alt="SOLIDWORKS Solution Partner" width="260"/></a>
</p>

<p align="center">
<a class="bbs-download-button" href="https://www.solidworks.com/partner-product/pdmpublisher" target="_blank" rel="noopener noreferrer">View auf SOLIDWORKS.com</a>
</p>

<a id="pdmpublisher"></a>
## PDMPublisher

[PDMPublisher](/src/pdmpublisher.html) optimiert die Konvertierung und Veröffentlichung von Dateien in Ihrem SOLIDWORKS PDM-Tresor. Dieses leistungsstarke Add-in automatisiert Routineaufgaben, unterstützt eine Vielzahl von Dateiformaten und bietet erweiterte Konfigurationsoptionen, die Ihrem Workflow entsprechen. Durch die Reduzierung des manuellen Aufwands sparen Sie Zeit und minimieren Fehler.

> [!Wussten Sie?]
> Viele Unternehmen verwenden PDMPublisher, weil es PDFs schnell und zuverlässig im Vergleich zum Standard erstellen und zusammenführen kann [SOLIDWORKS PDM Convert task](https://help.solidworks.com/2018/english/enterprisepdm/admin/t_configure_convert_task.htm). PDMPublisher wurde für größere Publishing-Workflows entwickelt, bei denen Stabilität, Geschwindigkeit und weniger fehlgeschlagene Exporte wichtig sind.

> [!TIP]
> [Schauen Sie sich diesen detaillierten Vergleich zwischen der Standard-Konvertierungsaufgabe und PDMPublisher](https://pdmpublisher.com/getpremium/) an.


PDMPublisher ist ein Produkt mit einer Codebasis, erhältlich in zwei Versionen.

<a id="pdmpublisher-task"></a>
### [PDMPublisher (Aufgabe)](http://pdmpublisher.com/solidworks-professional/)

![pdmpublishertask](https://pdmpublisher.com/help/images/pdmpublishertask.png)
- Läuft als SOLIDWORKS PDM Professional Task Add-in
- Verwenden Sie es für zentralisierte, vaultbasierte Exportautomatisierung
- Am besten, wenn Exporte von Administratoren konfiguriert und über das PDM Task Framework ausgeführt werden sollten

<a id="pdmpublisher-for-solidworks"></a>
### [PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/solidworks-desktop/)

![PDMPublisher für SOLIDWORKS aktiviert unter Partnerlösung Add-Ins](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)
PDMPublisher für SOLIDWORKS ist als SOLIDWORKS Partner Solution Add-in registriert und erscheint unter **Partner Solution Add-Ins** im SOLIDWORKS **Add-Ins** Dialog.

![PDMPublisher für SOLIDWORKS aufgeführt unter Partnerlösung Add-Ins](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)
- Läuft als SOLIDWORKS Add-in
- Verwenden Sie es für den Export direkt aus der SOLIDWORKS Desktop-Anwendung
- Am besten, wenn Benutzer einen interaktiven Publishing-Workflow benötigen oder wenn Sie SOLIDWORKS ohne PDM Professional verwenden


<a id="supported-extensions"></a>
### Unterstützte Erweiterungen
Mit PDMPublisher können Sie in die folgenden Formate exportieren:

- PDF und MBD: `pdf`, `_3dpdf`
- Zeichnungen: `dwg`, `dxf`
- eDrawings: `eprt`, `easm`, `edrw`
- CAD und Austausch: `step`, `igs`, `stl`, `x_t`, `x_b`, `sat`, `3dxml`, `3mf`, `ifc`, `u3d`, `wrl`, `vda`, `cgr`, `hcg`, `hsf`
- Web und Bilder: `html`, `xaml`, `jpg`, `tif`, `bmp`, `ai`, `psd`

Das `pdf`-Format exportiert SOLIDWORKS-Zeichnungen und konvertiert Microsoft Word- und Excel-Dokumente in PDF. Die `_3dpdf`-Auswahl exportiert SOLIDWORKS Teile und Baugruppen als 3D PDF.

Zeichnungsdateien können als `dxf` exportiert werden. Um fertigungsfertige flache Muster aus Blechteilen zu erstellen, verwenden Sie [Export Sheet Metal Parts to 1:1 Flat Pattern DXF](/src/pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.html).

Das `html` Format erfordert eDrawings Professional. Siehe [Dateiformate](/src/pdmpublisher-options/file-formats.html) für Formatnamen, Quelldateiverhalten, Screenshots und versionenspezifische Notizen.

<a id="missing-file-format"></a>
### Fehlendes Dateiformat?

Wenn es ein fehlendes Dateiformat gibt, das SOLIDWORKS unterstützt, wenden Sie sich bitte an uns und unser Team wird es hinzufügen (https://bluebyte.biz/contact).


> [!TIP]
> Behalten Sie unsere Roadmap der Funktionen für das laufende Jahr und das nächste Jahr im Auge, indem Sie die [Roadmap-Seite](/src/pdmpublisher_roadmap.html) häufig besuchen.


<a id="getting-started"></a>
### Beginnen Sie

Bitte lesen Sie unseren Leitfaden für das SOLIDWORKS-Add-in [hier](/src/pdmpublishersolidworks.html) und die PDM-Task [hier](/src/pdmpublisher.html).

<a id="pdmshell-pdm-professional-only"></a>
## PDMShell (PDM Professional) Nur

PDMShell ist ein Kommandozeilen-Automatisierungstool für SOLIDWORKS PDM Professional. Es hilft dabei, gängige Vault-Operationen wie das Durchsuchen von Dateien, das Aktualisieren von Datenkarten, das Ausführen von Batchprozessen und das Durchführen von Migrations- oder Wartungsaufgaben zu automatisieren.

Für weitere Informationen besuchen Sie bitte [PDMShell.com](https://pdmshell.com).

<a id="pdm2excel"></a>
## PDM2Excel
PDM2Excel ist ein Task-Add-in zum Exportieren von SOLIDWORKS-Baugruppen als Excel-Tabellen mit Miniaturansichten. Seit der Einführung der Kernfunktionalität von PDM2Excel in SOLIDWORKS PDM 2025 sind wir dabei, dieses Produkt einzustellen.

<a id="getting-support"></a>
## Unterstützung erhalten

> [Unterstützung erhalten](https://bluebyte.biz/contact)
