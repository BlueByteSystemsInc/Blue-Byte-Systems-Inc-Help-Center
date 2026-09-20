---
title: "Führen Sie einen Veröffentlichungsjob | PDMPublisher für SOLIDWORKS aus"
description: "Veröffentlichen Sie das aktive SOLIDWORKS-Dokument mit dem ausgewählten PDMPublisher-Profil und überprüfen Sie das resultierende Jobprotokoll."
ms.date: 09/16/2026
ms.topic: how-to
---

# Führen Sie einen Publish Job

Der Befehl **Publish** verarbeitet das aktuell in SOLIDWORKS geöffnete Dokument unter Verwendung des ausgewählten Publish-Profils.

<a id="before-publishing"></a>
## Vor dem Veröffentlichen

1. Öffnen Sie das Teil, die Montage oder die Zeichnung zum Prozess.
2. Wählen Sie das richtige [Profil](pdmpublishersolidworks_profiles.md).
3. Überprüfen Sie den Ausgabeort, den Dateinamen und die Dateiformate.
4. Überprüfen Sie für eine Assembly, ob referenzierte Dateien, Bedingungen, mehrere Konfigurationen oder zusammengeführte PDFs verarbeitet werden sollen.

> [!IMPORTANT]
> Speichern Sie das aktive SOLIDWORKS-Dokument und lösen Sie seine Referenzen vor der Veröffentlichung. Fehlende oder ungelöste Referenzen können nicht zuverlässig verarbeitet werden.

<a id="start-the-job"></a>
## Starten Sie den Job

Wählen Sie **PDMPublisher > Publish** im CommandManager. Verwenden Sie den Befehlspfeil, um sofort mit einem benannten Profil zu veröffentlichen, oder öffnen Sie den Befehl, um die Einstellungen zuerst zu überprüfen.

![Profilauswahlmenü veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)
Der Pfeil neben **Publish** wählt das für den Job verwendete Publish-Profil aus. Es wählt oder assoziiert keinen PDM-Tresor. Wenn ein Workflow PDM-Werte, Seriennummern, automatische Check-in-Ordner oder Platzhalter des Vault-Rootordners verwendet, konfigurieren Sie den freigegebenen Tresor unter **PDMPublisher > Settings > PDM**. Siehe [PDM-Einstellungen](pdmpublishersolidworks_pdm-settings.md).

Wenn [Ausgabedialog Bedingungen anzeigen](pdmpublishersolidworks-condition-output.md) für eine Assembly aktiviert ist, zeigt PDMPublisher die Referenzen an, die vor Exportbeginn übergeben wurden. Bestätigen Sie die Dateien, um den Job fortzusetzen oder zu stornieren.

<a id="review-the-result"></a>
## Überprüfen Sie das Ergebnis

Wählen Sie **PDMPublisher > Logs** aus, um die Verarbeitung von steps, exportierten Dateien, Warnungen und Fehlern zu überprüfen. Verwenden Sie [Speichern und Löschen von Protokollen](pdmpublishersolidworks-log-files.md), um den vollständigen Auftragsdatensatz an eine Supportanforderung anzuhängen.

Siehe [Publishing Workflow and Results](pdmpublishersolidworks_workflow.md) für die vollständige Sequenz, einschließlich Überprüfung, übersprungene Dateien, Stornierung und Fehlerbehebung Ergebnisse.
