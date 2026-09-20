---
title: "eDrawings Exporteinstellungen | PDMPublisher PDM Task"
description: "Verstehen Sie die von PDMPublisher PDM Task beim Export von eDrawings-Dateien verwendeten Mess- und Dateieigenschaften."
ms.date: 08/31/2026
ms.topic: reference
---

# eDrawings Exporteinstellungen

PDMPublisher PDM Task kann diese eDrawings-Dateien erstellen:

| Herkunftsdokument | eDrawings Ausgang |
| --- | --- |
| SOLIDWORKS Teil (`.sldprt`) | eDrawings Teil (`.eprt`) |
| Baugruppe SOLIDWORKS (`.sldasm`) | eDrawings Assembly (`.easm`) |
| Zeichnung SOLIDWORKS (`.slddrw`) | eDrawings Zeichnung (`.edrw`) |

![eDrawings Formate im Dateiformat-Selektor](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-dropdown-000-file-formats.png)
Vor dem Speichern einer eDrawings-Datei wendet PDMPublisher PDM Task folgende Einstellungen an:

- Erlauben Sie Messungen in der exportierten eDrawings-Datei.
- Speichern Sie Dateieigenschaften in der exportierten Datei.
- Speichern Sie Dateieigenschaften für jede Komponente, in der die Ausgabe Assemblykomponenten enthält.

Dadurch wird verhindert, dass der Export in Abhängigkeit von den eDrawings-Einstellungen erfolgt, die zuvor für das Windows-Konto mit SOLIDWORKS auf dem Task-Host gespeichert wurden.

> [!IMPORTANT]
> Diese Korrektur gilt nur für **PDMPublisher PDM Task**. Es ändert sich nicht PDMPublisher für SOLIDWORKS.

<a id="task-setup"></a>
## Task Setup

Es gibt keine neue Task-Kontrollkaestchen für diese Korrektur. Wählen Sie die erforderlichen eDrawings-Erweiterungen unter [Dateiformate](file-formats.md); PDMPublisher wendet die korrigierten Einstellungen automatisch an, wenn die Aufgabe die Ausgabe erstellt.

Aktualisieren Sie PDMPublisher auf jedem Computer, der die Aufgabe ausführen kann. Das Windows-Konto, das die Aufgabe ausführt, muss auch in der Lage sein, die konfigurierte SOLIDWORKS-Version zu starten.

Zur verwalteten Aufgabenbereitstellung siehe [Installieren oder Aktualisieren von PDMPublisher mit PDMDeploy](../updateaddinswithcdpdm.md).
