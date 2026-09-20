---
title: "Aktualisieren von Blue Byte Systems PDM add-ins mit PDMDeploy | SOLIDWORKS PDM"
description: "In diesem Artikel geht es darum, jedes SOLIDWORKS PDM-Add-in zu aktualisieren, das Sie bei Blue Byte Systems Inc mit dem PDMDeploy-Add-in kaufen."
ms.date: 07/04/2026
ms.topic: conceptual
---

> [!IMPORTANT]
> CDPDM ist jetzt PDMDeploy. Beginnend mit PDMDeploy V31 verfügt das Add-in über eine neu gestaltete dunkle Schnittstelle und Aktivierungscodes. Ältere Screenshots und Video-Tutorials, die auf CDPDM verweisen, zeigen die vorherige Benutzeroberfläche.

# Aktualisieren von Blue Byte Systems PDM add-ins mit PDMDeploy


<video src="https://bluebyte.biz/wp-content/docsvideos/cdpdm.mp4" autoplay muted controls style="width: 100%; border-radius: 12px;"></video>

> [!NOTE]
> Dieses Video wurde mit einer älteren Version von PDMDeploy (CDPDM) aufgenommen und zeigt die vorherige Schnittstelle. Der Workflow ist der gleiche. Siehe die Screenshots unten für die aktuelle Schnittstelle (V31 und höher).


In diesem Artikel geht es darum, jedes SOLIDWORKS PDM-Add-in zu aktualisieren, das Sie bei Blue Byte Systems Inc mit dem PDMDeploy-Add-in kaufen. Dieses Tool optimiert den Codebereitstellungsprozess für SOLIDWORKS PDM-Kunden durch die Nutzung der PDMDeploy Continuous Delivery Plattform. Es ermöglicht Ihnen, auf Ihre gekauften add-ins und alle Versionen effizient zuzugreifen und zu aktualisieren.

<a id="installation-steps"></a>
### Anlage Steps:

<div class="bbs-highlight-panel">

<a id="download-pdmdeploy"></a>
### Download PDMDeploy

<a class="bbs-download-button" href="/pdmdeploy/PDMDeploy.cex">Download PDMDeploy</a>

<a id="public-activation-code"></a>
### Öffentlicher Aktivierungscode

<code class="bbs-activation-code">E2A50448-9F15-42D9B2F3-290409E81F94</code>

</div>

1. Verwenden Sie für unsere Standardprodukte den oben genannten öffentlichen Aktivierungscode. Wenn wir eine benutzerdefinierte Lösung für Sie entwickelt haben, verwenden Sie stattdessen den privaten Aktivierungscode aus Ihrer Willkommens-E-Mail. Um PDMDeploy nach dem Herunterladen zu installieren, folgen Sie bitte den Anweisungen in [diesem Artikel](/src/cdpdm.html).

2. Entsperren Sie die heruntergeladene Datei: Rechtsklicken Sie auf `PDMDeploy.cex` und wählen Sie Eigenschaften. Überprüfen Sie im Eigenschaftsdialog die Option Entsperren und klicken Sie auf OK.

3. Öffnen Sie das Verwaltungstool: Melden Sie sich mit einem PDM-Benutzer an, der über die Berechtigung Bearbeiten von Add-Ins verfügt.

4. Importieren Sie das Add-in:

    - Gehen Sie zu Datei > Öffnen und durchsuchen Sie `PDMDeploy.cex`.

    - Klicken Sie auf OK, um die CEX Datei zu öffnen.

    - Ziehen Sie das PDMDeploy-Add-in-Symbol auf den add-ins-Knoten im Verwaltungstool. Dies fügt das Add-in in den add-ins-Knoten hinzu.

5. Laden Sie Ihre Konfiguration:

    - Klicken Sie mit der rechten Maustaste auf das PDMDeploy-Add-in und klicken Sie auf *Kundenkonfiguration laden (Aktivierungscode oder Datei)...*

![PDMDeploy Menü](https://pdmpublisher.com/help/images/pdmdeploy31_menu.png)
    - Geben Sie den Aktivierungscode aus Ihrer Willkommens-E-Mail ein und klicken Sie auf *Aktivieren *.

![PDMDeploy Ladekonfiguration](https://pdmpublisher.com/help/images/pdmdeploy31_loadconfig.png)
    - Alternativ klicken Sie auf *Browse for .cdg file...*, wenn Sie stattdessen eine Kundenkonfigurationsdatei erhalten haben. Wenn die Datei aus dem Internet heruntergeladen wurde, entsperren Sie sie zuerst (mit der rechten Maustaste auf die Datei, Eigenschaften, Unblockieren, OK).

    - Sie erhalten eine Meldung mit der Aufschrift "Konfiguration erfolgreich geladen!"

6. Klicken Sie mit der rechten Maustaste auf PDMDeploy im add-ins-Knoten und klicken Sie auf *AddIns aktualisieren...*

7. Überprüfen Sie das Add-in, das Sie aus der Liste installieren möchten, wählen Sie die benötigte Version aus der Dropdownliste-Liste der Serverversion aus (die neueste ist vorgewählt) und klicken Sie auf *Installieren ausgewählt *.

8. Bestätigen Sie nachfolgende Dialogfelder, um PDM und das Verwaltungstool neu zu starten.


<a id="updating-an-add-in"></a>
### Aktualisieren eines Add-Ins:

1. Klicken Sie mit der rechten Maustaste auf das PDMDeploy-Add-in (unter Add-ins im Administrationstool) und klicken Sie auf *AddIns aktualisieren...*:

![PDMDeploy Menü](https://pdmpublisher.com/help/images/pdmdeploy31_menu.png)
2. Das PDMDeploy-Fenster öffnet sich sofort ohne Wartedialog. Die Statusleiste unten liest zuerst Ihren installierten add-ins aus dem Tresor, lädt dann den verfügbaren add-ins vom Server:

![PDMDeploy Add-in Manager](https://pdmpublisher.com/help/images/pdmdeploy31_manager.png)
3. In der Spalte Status wird angezeigt, wo Sie für jedes Add-in stehen: *Nicht installiert*, *Update verfügbar* oder *Aktualisiert*. Die Dropdownliste-Version Server wählt die neueste Version vor. Wählen Sie eine ältere nur, wenn von der Unterstützung angewiesen.

4. Aktivieren Sie die Add-Ins zum Aktualisieren (das Header-Kontrollkaestchen wählt alle aus) und klicken Sie auf *Installiert *. In der Statusleiste wird angezeigt, welches Add-in heruntergeladen und installiert wird. Der Prozess könnte einige Augenblicke dauern.

5. Sie werden am Ende aufgefordert, Ihre PDM-Sitzung neu zu starten. Dies ermöglicht Ihrem lokalen Client, die neue Version des installierten Add-Ins zu erhalten. *Dies ist optional*, wird jedoch für Aufgaben empfohlen, die vom Datei-Explorer ausgelöst werden.

> [!TIP]
> Wenn PDMDeploy noch nicht konfiguriert wurde, zeigt das Fenster ein Aktivierungsfeld anstelle der Add-in-Liste an. Geben Sie Ihren Aktivierungscode ein oder durchsuchen Sie Ihre `.cdg`-Datei direkt dort.

<a id="warnings"></a>
### Warnungen

> [!WARNING]
> PDMDeploy erlaubt keine neue Aufgabe add-ins in der *Task Host Configuration*. Sie müssen dies manuell tun:
> ![taskhostconfiguration](https://pdmpublisher.com/help/images/taskhostconfiguration.png)
> [!WARNING]
> Alle Clientcomputer, die die Aufgaben des Add-Ins verwenden, müssen neu gestartet werden, um die neue Version zu verwenden.
