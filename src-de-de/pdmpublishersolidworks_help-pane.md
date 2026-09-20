---
title: "Help Aufgabenbereich | PDMPublisher für SOLIDWORKS"
description: "Verwenden Sie die eingebettete PDMPublisher-Dokumentation im Aufgabenbereich SOLIDWORKS und beheben Sie das Laden von WebView2."
ms.date: 09/16/2026
ms.topic: how-to
---

# Help Aufgabenbereich

Der Aufgabenbereich PDMPublisher ist ein Dokumentationsbrowser. Befehle und Einstellungen wurden auf die Registerkarte SOLIDWORKS **PDMPublisher** CommandManager und das Menü **Tools > PDMPublisher** verschoben.

![PDMPublisher Help task pane beside the active SOLIDWORKS assembly](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
Der Bereich öffnet den Compact [PDMPublisher für SOLIDWORKS Willkommensseite](https://pdmpublisher.com/help/addinwelcome.html). Wählen Sie einen Dokumentationslink aus, um innerhalb des Bereichs zu navigieren. Links, die ein neues Fenster anfordern, werden im Standard-Webbrowser geöffnet.

<a id="help-pane-links"></a>
## Helfen Sie Pane Links

| Link | Offen |
| --- | --- |
| **Commands** | CommandManager Befehlsreferenz und Profilmenüverhalten. |
| **Settings** | Unified Settings Dialog und Settings-Transfer-Referenz. |
| **Save As New** | Native Copy Workflow und alle Save As New-Steuerelemente. |
| **Property Doctor** | Property Review, Spalte, Aktion, Vorschau und Workflow anwenden. |
| **Clone Tree** | Dokumentensatzkopie, Umbenennung, Ziel, Überarbeitung und ZIP Workflow. |
| **Publish** | Veröffentlichen Sie Profile, Exporteinstellungen und Auftragsausführung. |
| **Full overview** | Komplette PDMPublisher für SOLIDWORKS Übersicht. |
| **Installation** | MSI Installation und Add-in Aktivierung. |
| **Licensing** | Testen, Aktivieren, Deaktivieren und Lizenzmanagement. |
| **Support** | Blue Byte Systems unterstützt Kanal. |

Verwenden Sie die Task-Panel-Scrollleiste, wenn sich die unteren Links außerhalb des sichtbaren Bereichs befinden. Die Pin- und Crash-Steuerelemente im Task-Pane-Header sind SOLIDWORKS-Steuerelemente: Pin hält den Bereich offen und Crash gibt Platz zum Grafikbereich zurück.

<a id="requirements"></a>
## Anforderungen

Die eingebettete Seite verwendet Microsoft Edge WebView2 Runtime. Aktuell unterstützte Windows-Installationen haben normalerweise bereits die Evergreen Runtime.

Wenn der Bereich meldet, dass Hilfe nicht geladen werden konnte:

1. Bestätigen Sie, dass der Computer `https://pdmpublisher.com/help/addinwelcome.html` in einem Browser öffnen kann.
2. Wählen Sie die Nachricht im Bereich aus, um es erneut zu versuchen.
3. Installieren oder reparieren Sie [Microsoft Edge WebView2 Runtime](https://developer.microsoft.com/microsoft-edge/webview2/), wenn die Meldung besagt, dass die Laufzeit nicht verfügbar ist.
4. Starten Sie SOLIDWORKS neu.

Publishing- und Utility-Befehle bleiben verfügbar, wenn die Hilfeseite oder WebView2 nicht geladen werden kann.

> [!NOTE]
> Die eingebettete Begrüßungsseite ist absichtlich von der Suchmaschinenindexierung ausgeschlossen. Die verlinkten Dokumentationsseiten bleiben durchsuchbar.
