---
title: "Exportierte PDFs zu einem Master PDF | PDMPublisher Optionen zusammenführen"
description: "Kombinieren Sie exportierte PDFs zu einem einzigen Master PDF."
ms.date: 08/09/2026
ms.topic: reference
---

# Exportierte PDFs zu einem Master PDF zusammenführen

![Merge exportiert PDFs Einstellung in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox9_Merge_exported_PDFs_into_one_master_PDF_Light_100.png)
Kombiniert exportierte PDFs zu einem einzigen Master PDF.

> [!NOTE]
> Diese Einstellung ist sowohl im **PDM task** als auch im **SOLIDWORKS add-in** verfügbar.

Diese Option ist für die Montageverarbeitung. Es funktioniert nur, wenn [Exportreferenzen zu Dateiformaten einzeln](export-references-individually.md) aktiviert ist, da PDMPublisher die Assemblyreferenzen benötigt, um die einzelnen PDFs zu erstellen, bevor sie sie zusammenführen können.

Erforderlicher Aufbau:

- Wählen Sie `PDF` in [Dateiformate](file-formats.md).
- Aktivieren Sie [Exportreferenzen zu Dateiformaten einzeln](export-references-individually.md).
- Verarbeiten einer Assembly: Starten Sie die PDM-Task in einer Assembly oder öffnen Sie die Assembly in SOLIDWORKS, bevor Sie sie über das Add-in veröffentlichen.

> [!TIP]
> Aktivieren Sie [PDF Bookmarks](pdf-bookmarks.md) und [Inhaltsverzeichnis zum zusammengeführten PDF](add-table-of-content-to-merged-pdf.md), wenn das zusammengeführte PDF Navigation benötigt.
