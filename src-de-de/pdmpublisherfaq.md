---
title: "FAQ | PDMPublisher | SOLIDWORKS PDM"
description: "PDMPublisher häufig gestellte Fragen."
ms.date: 06/19/2026
ms.topic: conceptual
---
# Häufig gestellte Fragen

<a id="features"></a>
## Merkmale

| Fragestellung | Antwort |
|---|---|
| Ich bekomme einige Fehler im Zusammenhang mit dem Layout der Stückliste. | In den letzten Versionen haben wir begonnen, die PDM BOM anstelle der SOLIDWORKS BOM zu verwenden. PDMPublisher nutzt das erste Stücklistenlayout in Ihrem Tresor, um Mengen zu berechnen (Sie können festlegen, welches Layout auf der Registerkarte Optionen verwendet werden soll). Das Layout muss eine Spalte <RefCount> (Quantity) und eine Spalte <Configuration> (Configuration name) enthalten. |
| Wie berechnet PDMPublisher die Stückzahlen? | PDMPublisher erstellt eine Materialliste im Speicher aus der obersten Baugruppe. Es ignoriert alle unterdrückten, virtuellen, Umschlag und Komponenten, die von der Bill of Materials ausgeschlossen sind. Die meisten dieser Einstellungen stammen aus dem Dialog Komponenteneigenschaften. |
| Wie funktionieren die Bedingungen? | Bedingungen werden für die gefundene PDM-Referenz ausgewertet. Wenn eine der Bedingungen auf true bewertet wird, wird die Referenz in die Verarbeitungswarteschlange hinzugefügt. |
| Ich kann die exportierten Dateien nicht sehen! | Stellen Sie sicher, dass der Exportstandort in Ihrem Tresor (oder außerhalb Ihres Tresors) liegt, an dem Sie über die Workflow- und Ordnerberechtigungen zum Hinzufügen und Bearbeiten von Dateien verfügen. **The vault's root folder** ist in der Regel ein Ordner, der **is locked** zum Hinzufügen oder Bearbeiten von Dateien durch PDM-Administratoren. |
| Ich habe eine Aufgabe geschaffen. Wie kann ich es starten?  | PDMPublisher-Aufgaben können an einen Workflow-Übergang angehängt oder über das Rechtsklick-Menü in einer Datei ausgelöst werden. Sie finden Ihre erstellten Aufgaben unter Aufgaben. Im Rechtsklick-Menü verwenden Aufgaben den Namen, der die Aufgaben-Setup-Seite definiert. Siehe unten: <img src="https://pdmpublisher.com/help/images/pdmpublisher_rmb.png"/> |
| Ich sehe diesen Fehler "Kann die Schrift 'Helvetica-Bold' nicht finden oder erstellen." Einige Zeichen können nicht richtig angezeigt oder gedruckt werden." wenn ich das zusammengeführte PDF öffne. " | Dieser Fehler bezieht sich auf Ihren PDF-Reader. Bitte achten Sie darauf, die entsprechende Schriftart zu installieren Siehe unten: <img src="https://pdmpublisher.com/help/images/pdmpublisher_merge.png"/> |



<a id="installation"></a>
## Installation

|Fragestellung|Antwort|
|---|---|
|Ich kann meine Lizenz nicht verbrauchen|Make sure your system/firewall allows for connections to be made to httsp://bluebyte.biz on **port 443**. **[Contact](https://bluebyte.biz/contact/)** us if this problem still persists.|
|Ich führe das Add-in auf Assembly aus und es erfasst nicht alle Referenzen.|Stellen Sie sicher, dass die Assembly und ihre Referenzen lokale Kopien auf dem Computer haben, auf dem das Add-in ausgeführt wird. Sie können dies tun, indem Sie die Assembly und ihre Referenzen in der Maschine, die die Aufgabe ausführt, auf den neuesten Stand bringen. Dies ist ein By-Design-Verhalten des PDM Publishers.|
|Die Aufgabe kann die Protokolldatei nicht einchecken.|This could be related to a number of issues. You may need to make sure the user running the add-in has proper file and folder permissions on the log folder. You also need to make sure that the txt file extension is NOT part of the **[auto-add user setting](https://help.solidworks.com/2017/english/enterprisepdm/admin/idd_page_file_adding.htm)**.|
