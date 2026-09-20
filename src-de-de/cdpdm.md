---
title: "PDMDeploy | PDMPublisher | SOLIDWORKS PDM"
description: "So verwenden Sie PDMDeploy, um PDMPublisher, PDM2Excel und andere Blue Byte Systems SOLIDWORKS PDM-Plugins zu installieren."
ms.date: 07/04/2026
ms.topic: conceptual
---

> [!IMPORTANT]
> CDPDM ist jetzt PDMDeploy. Beginnend mit PDMDeploy V31 verfügt das Add-in über eine neu gestaltete dunkle Schnittstelle und Aktivierungscodes. Ältere Screenshots und Video-Tutorials, die auf CDPDM verweisen, zeigen die vorherige Benutzeroberfläche.

# Kontinuierliche Lieferung

<video src="https://bluebyte.biz/wp-content/docsvideos/cdpdm.mp4" autoplay muted controls style="width: 100%; border-radius: 12px;"></video>

> [!NOTE]
> Dieses Video wurde mit einer älteren Version von PDMDeploy (CDPDM) aufgenommen und zeigt die vorherige Schnittstelle. Der Workflow ist der gleiche. Siehe die Screenshots unten für die aktuelle Schnittstelle (V31 und höher).

PDMDeploy ist ein PDM-Add-in von Blue Byte Systems Inc., das die Bereitstellung von PDM und der für Sie entwickelten Aufgabe add-ins erleichtert.

Das Add-in kommuniziert mit unseren Servern und ermöglicht die Installation aller Versionen Ihres PDM add-ins.

<a id="advantages"></a>
## Vorteile

Die Vorteile der Verwendung von PDMDeploy sind zahlreich:

- Sie müssen keine CEX-Dateien anfordern oder herunterladen.
- Möglichkeit, zwischen den Versionen zu wechseln.
- Der herkömmliche Prozess der Installation und Aktualisierung von add-ins ist sehr mühsam und zeitaufwendig.

<a id="where-to-find-pdmdeploy"></a>
## Wo finde ich PDMDeploy

<a id="public-download-blue-byte-systems-products"></a>
### Öffentlicher Download (Blue Byte Systems Produkte)

PDMDeploy ist öffentlich verfügbar:

<div class="bbs-highlight-panel">

<a id="download-pdmdeploy"></a>
### Download PDMDeploy

<a class="bbs-download-button" href="/pdmdeploy/PDMDeploy.cex">Download PDMDeploy</a>

<a id="public-activation-code"></a>
### Öffentlicher Aktivierungscode

<code class="bbs-activation-code">E2A50448-9F15-42D9B2F3-290409E81F94</code>

</div>

Dieser Aktivierungscode ermöglicht nur den Zugriff auf Produkte von Blue Byte Systems (PDM2Excel, PDMPublisher, PDMShell, Task add-ins usw.). Unsere Produkte erfordern eine gültige Lizenz zum Laufen. Die Installation eines Add-Ins aktiviert es nicht.

<a id="if-we-have-developed-a-custom-solution-for-you"></a>
### Wenn wir eine kundenspezifische Lösung für Sie entwickelt haben:

- Verwenden Sie den privaten Aktivierungscode aus Ihrer Willkommens-E-Mail anstelle des öffentlichen. Es bietet Zugriff auf Ihre benutzerdefinierten add-ins und auf unsere Standardprodukte, wenn Sie welche besitzen.
- Alternativ haben Sie möglicherweise eine Kundenkonfigurationsdatei (`.cdg`) erhalten. Es funktioniert genauso.

> [!NOTE]
> Wenn Sie eines unserer PDM-Produkte gekauft und uns eine individuelle Lösung für Sie entwickeln lassen haben, wenden Sie sich bitte an uns, damit wir einen Aktivierungscode generieren können, mit dem Sie mit einem einzigen Code auf alle Ihre Vermögenswerte zugreifen können.

<a id="how-to-install"></a>
## Wie zu installieren

- Suchen Sie `PDMDeploy.cex`.
- In Windows 11, 10 und 7 sind Internet-Downloads blockiert. Klicken Sie mit der rechten Maustaste auf die CEX-Datei, gehen Sie zu Properties, aktivieren Sie die Blockierung und klicken Sie dann auf Apply und OK.
- Öffnen Sie das Administrationstool.
- Melden Sie sich im Tresor an. Bitte stellen Sie sicher, dass Sie einen PDM-Benutzer mit Edit Add-Ins-Berechtigung verwenden.
- Klicken Sie im Administrationstool auf Datei > Öffnen und durchsuchen Sie die `PDMDeploy.cex`-Datei.
- Ziehen Sie das Add-in aus dem CEX-Fenster auf den Add-ins-Knoten und warten Sie einige Augenblicke, bis PDMDeploy installiert ist.

![PDMDeploy Installation](https://pdmpublisher.com/help/images/cdpdm.png)

<a id="configuration"></a>
## Konfiguration

PDMDeploy muss wissen, auf welche Unternehmensressourcen Sie Zugriff haben. Es gibt zwei Möglichkeiten, es zu konfigurieren. Der Aktivierungscode ist der empfohlene.

- Klicken Sie mit der rechten Maustaste auf das PDMDeploy-Add-in und klicken Sie auf *Kundenkonfiguration laden (Aktivierungscode oder Datei)...*

![PDMDeploy Menü](https://pdmpublisher.com/help/images/pdmdeploy31_menu.png)

- Der Konfigurationsdialog öffnet sich:

![PDMDeploy Ladekonfiguration](https://pdmpublisher.com/help/images/pdmdeploy31_loadconfig.png)

<a id="option-1-activation-code-recommended"></a>
### Option 1: Aktivierungscode (empfohlen)

- Geben Sie den Aktivierungscode aus Ihrer Willkommens-E-Mail in das Textfeld ein und klicken Sie auf *Aktivieren *. PDMDeploy holt Ihre Konfiguration sicher von unseren Servern ab. Keine Dateiverarbeitung, kein Entsperren.

<a id="option-2-customer-configuration-file"></a>
### Option 2: Kundenkonfigurationsdatei

- Klicken Sie auf *Browse for .cdg file...* und wählen Sie Ihre Customer Configuration File aus.
- Wenn die Datei aus dem Internet heruntergeladen wurde, entsperren Sie sie zuerst: Klicken Sie mit der rechten Maustaste auf die Datei, wählen Sie Eigenschaften aus, aktivieren Sie Entsperren und klicken Sie auf OK.

In beiden Fällen sehen Sie eine Bestätigungsnachricht, sobald die Konfiguration geladen ist.

> [!NOTE]
> Sie können PDMDeploy auch manuell über den Dialog *Einstellungen...* konfigurieren, indem Sie die Anmeldeinformationen selbst eingeben. Kontaktieren Sie den Support für Hilfe mit dieser Option.

> [!TIP]
> Wenn Sie *AddIns aktualisieren...* öffnen, bevor Sie PDMDeploy konfigurieren, zeigt der Add-in-Manager das Aktivierungsfeld direkt an. Sie können den Aktivierungscode eingeben oder direkt dort zur `.cdg`-Datei browsen.

<a id="installingupdating-add-ins"></a>
## Installation/Aktualisierung von Add-ins

- Klicken Sie mit der rechten Maustaste auf PDMDeploy unter Add-ins im Administrationstool und klicken Sie auf *AddIns aktualisieren...*
- Das PDMDeploy Fenster öffnet sich sofort und lädt Ihren add-ins im Hintergrund. Die Statusleiste unten zeigt den Fortschritt an: Zuerst werden Ihre lokal installierten add-ins aus dem Tresor ausgelesen, dann werden die verfügbaren add-ins vom Server abgerufen.

![PDMDeploy Add-in Manager](https://pdmpublisher.com/help/images/pdmdeploy31_manager.png)

Das Fenster zeigt eine Zeile pro Add-in an:

- Status: *Nicht installiert*, *Update verfügbar* oder *Aktualisiert* auf einen Blick.
- Lokale Version: die Version, die derzeit in Ihrem Tresor installiert ist.
- Serverversion: ein Dropdownliste mit jeder auf dem Server verfügbaren Version. Die neueste Version ist vorgewählt.

So installieren oder aktualisieren:

1. Überprüfen Sie die Add-Ins, die Sie installieren möchten. Das Kontrollkästchen in der Kopfzeile wählt alle add-ins auf einmal aus.
2. Wählen Sie die Version(en) aus der Spalte Server-Version aus, wenn Sie etwas anderes als die neueste Version benötigen.
3. Klicken Sie auf *Install selected*.

PDMDeploy fragt Sie, ob Sie PDM neu starten möchten. Dies kann nach jedem Add-in-Update erforderlich sein.

> [!NOTE]
> Bitte erlauben Sie einige Momente, nachdem Sie auf *Installieren ausgewählt * klicken. Jedes Add-in wird heruntergeladen, entsperrt und dem Tresor hinzugefügt. Diese Operation beinhaltet das Unterdrücken einiger PDM-Dialogfelder. In der Statusleiste wird angezeigt, welches Add-in gerade installiert wird.
