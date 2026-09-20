---
title: "Veröffentlichung von Workflow und Ergebnissen | PDMPublisher für SOLIDWORKS"
description: "Folgen Sie einem PDMPublisher-Job von der Dokumentenvorbereitung über die Überprüfung, den Export, die Protokollierung und die Fehlerbehebung."
ms.date: 09/16/2026
ms.topic: how-to
---

# Veröffentlichung von Workflow und Ergebnissen

Verwenden Sie diese Sequenz für einen wiederholbaren PDMPublisher für SOLIDWORKS Job.

<a id="1-prepare-the-document"></a>
## 1. Vorbereitung des Dokuments

1. Öffnen und speichern Sie den Quellteil, die Baugruppe oder die Zeichnung.
2. Beheben Sie unterdrückte, leichte, fehlende oder veraltete Referenzen, wie im Workflow erforderlich.
3. Aktivieren Sie die Konfigurations- und Zeichnungsblätter, die Sie auswerten möchten.
4. Bestätigen Sie, dass jedes PDM-fähige Profil den beabsichtigten lokalen Tresor verwendet.

<a id="2-select-and-review-the-profile"></a>
## 2. Wählen und Überprüfen Sie das Profil

Wählen Sie das benannte Profil aus dem Pfeil neben **Publish**.

![Profilauswahlmenü veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)
Überprüfen Sie den Exportort, den Dateinamen, die Formate, den Blattmodus, Referenzen, Konfigurationen, Anmerkungen und Bedingungen. Aktivieren Sie **Show dialog before processing**, wenn ein Operator den gelösten Auftrag bestätigen muss, bevor Dateien geschrieben werden.

<a id="3-review-assembly-selection"></a>
## 3. Auswahl der Versammlung

Für eine Baugruppe mit aktiviertem Export und aktivierter Zustandsprüfung für einzelne Referenzen listet PDMPublisher die Referenzen auf, die die Bewertung bestanden haben. Löschen Sie eine Datei, um sie von diesem Lauf wegzulassen. Bestätigen Sie die Fortsetzung oder stornieren Sie die Beendigung vor der Ausfuhrverarbeitung.

![Dateien überprüfen, um nach der Zustandsbewertung zu veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-condition-review-20260916.png)
Die Überprüfungsauswahl betrifft nur den aktuellen Lauf. Es schreibt den Profil- oder Zustandsbaum nicht um.

<a id="4-process-outputs"></a>
## 4. Prozessoutputs

Während der Verarbeitung löst PDMPublisher Platzhalter für jedes Quelldokument und jede Konfiguration auf, erstellt die erforderlichen Ordner, ruft den entsprechenden SOLIDWORKS-Exporteur auf, verwendet Anmerkungen oder PDF-Operationen und erstellt optional ein Archiv.

Schließen Sie SOLIDWORKS nicht, ändern Sie das aktive Dokument oder ändern Sie referenzierte Dateien, während der Auftrag ausgeführt wird.

<a id="5-interpret-the-result"></a>
## 5. Interpretieren des Ergebnisses

| Ergebnis | Bedeutung | Nächste Maßnahme |
| --- | --- | --- |
| Abgeschlossen | Der angeforderte Output wurde produziert. | Kontrollieren Sie den Bestimmungsort und überprüfen Sie die Dateien stichprobenartig. |
| Warnung | Die Verarbeitung ging weiter, aber ein Fallback oder ein nicht tödliches Problem trat auf. | Lesen Sie die vorherigen Protokolleinträge und überprüfen Sie die betroffene Datei. |
| Überschifft | Eine Bedingung, eine nicht unterstützte Quell-/Format-Kombination, fehlende Eingabe oder eine Operatorauswahl haben das Element ausgeschlossen. | Bestätigen Sie, dass der Skip beabsichtigt war. |
| Fehler | Der Artikel konnte nicht exportiert werden oder eine erforderliche Nachbearbeitung step ist fehlgeschlagen. | Speichern Sie das Protokoll, korrigieren Sie die Ursache und führen Sie einen kontrollierten Job erneut aus. |
| Storniert | Der Betreiber stornierte eine Überprüfung oder einen laufenden Auftrag. | Überprüfen Sie das Ziel; Dateien, die vor der Stornierung abgeschlossen wurden, können verbleiben. |

<a id="6-review-and-preserve-the-log"></a>
## 6. Überprüfen und bewahren Sie das Protokoll

Öffnen Sie **PDMPublisher > Logs**. Filtern Sie nach **Errors**, **Warnings**, **Completed**, **Processing** oder **Skipped**, dann überprüfen Sie die Nachrichten unmittelbar vor dem Ergebnis.

![Logcontrols veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)
Verwenden Sie **Save...** für das vollständige Sitzungsprotokoll oder **Copy selected** für einen fokussierten Auszug. Fügen Sie den Profilnamen, den Quelldateinamen, die erwartete Ausgabe und das gespeicherte Protokoll bei der Kontaktaufnahme mit dem Support hinzu.

> [!IMPORTANT]
> Stornierung rollt keine bereits exportierten Dateien zurück. Überprüfen Sie den Ausgabeordner vor dem erneuten Ausführen, damit ein früheres Teilergebnis nicht mit dem neuen Job verwechselt wird.
