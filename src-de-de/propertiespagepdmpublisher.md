---
title: "Erstellen einer neuen Aufgabe | PDMPublisher | SOLIDWORKS PDM"
description: "Erstellen Sie Ihre erste PDMPublisher Aufgabe in SOLIDWORKS PDM Administration."
ms.date: 08/09/2026
ms.topic: conceptual
---

# Richten Sie Ihre erste PDMPublisher Aufgabe ein

<p class="bbs-read-time">Lesenszeit: 2 Minuten</p>

> [!NOTE]
> Bevor Sie eine Aufgabe erstellen, stellen Sie sicher:
> - **PDMPublisher** wurde Ihrem Tresor hinzugefügt.
> - Sie haben Ihre Lizenz aktiviert. Siehe [Lizenzierung](licensespdmpublisher.md).
>
> Nachdem Sie die Lizenz validiert und Ihre erste Aufgabe gespeichert haben, überprüfen Sie diese wichtigen Einstellungen:
> - Wählen Sie das richtige [Template](pdmpublisher-options/template.md). Dies ist wichtig, wenn PDMPublisher Assemblyreferenzen, Konfigurationen oder Größen berechnen muss.
> Bestätigen Sie [Verwenden Sie diese Version von SOLIDWORKS](pdmpublisher-options/use-this-version-of-solidworks.md) zeigt auf eine SOLIDWORKS-Version, die auf dem Task-Host-Computer installiert ist.
> - Legen Sie einen gültigen [Exportstandort](pdmpublisher-options/export-location.md) und [Dateiname](pdmpublisher-options/filename.md) fest. Vermeiden Sie Backslashes in Exportpfaden und verwenden Sie Platzhalter für Dateinamen wie Revision, Konfiguration oder Blattname, wenn eine Quelldatei mehrere Ausgaben erstellen kann.
> - Wenn Sie Datensätze zur Fehlerbehebung benötigen, aktivieren Sie [Vault Activity Logs](pdmpublisher-options/turn-on-activity-tracking.md) und setzen Sie [Log Ordner (Vault Only)](pdmpublisher-options/log-folder-vault-only.md) auf `(VaultRootFolder)\Logs\PDMPublisher`. Erstellen Sie diesen Ordner manuell und stellen Sie sicher, dass der Benutzer, der die Aufgabe ausführt, oder das Aufgabenhostkonto dort Protokolldateien hinzufügen kann.

<a id="create-the-task"></a>
## Erstellen Sie die Aufgabe

1. Öffnen Sie das SOLIDWORKS PDM Administration Tool.

2. Klicken Sie mit der rechten Maustaste auf **Tasks** und wählen Sie dann **New Task...**.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublishernewtask.png" alt="Create a new PDM task" width="300">
</p>

3. Geben Sie einen eindeutigen Namen für die Aufgabe ein. Verwenden Sie einen Namen, der klar beschreibt, was die Aufgabe exportiert, und überprüfen Sie dann die obigen Notizen, bevor Sie speichern.

4. Wählen Sie auf der **Add-in**-Seite **PDMPublisher** aus dem **Add-in**-Dropdownliste aus.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-addin.png" alt="PDMPublisher selected as the task add-in" width="800">
</p>

5. Klicken Sie auf **Next**.

6. Wählen Sie auf der **Execution Method**-Seite aus, welche Computer die Aufgabe ausführen dürfen.

Diese Seite kommt nach der Add-in Auswahl. Nur Computer, die in dieser Liste überprüft werden, gelten als Aufgabenausführungsmaschinen.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-execution-method.png" alt="PDMPublisher task execution method" width="800">
</p>

Wenn die Computerliste leer ist, klicken Sie mit der rechten Maustaste auf das SOLIDWORKS PDM-Symbol im Windows-Tray und öffnen Sie **Task Host Configuration**.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmicontry.png" alt="SOLIDWORKS PDM tray icon" width="300">
</p>

7. In **Task Host Configuration** erlauben Sie **PDMPublisher** auf dem Task-Hostcomputer.

<p align="center">
<img src="https://pdmpublisher.com/help/images/taskhostconfiguration.png" alt="Permit PDMPublisher in Task Host Configuration" width="800">
</p>

8. Konfigurieren Sie die **Scheduling**-Seite, wenn SOLIDWORKS PDM diese Aufgabe automatisch starten soll. Siehe [Geplante Elemente](scheduleditems.md), wenn die geplante Aufgabe eine gespeicherte Liste von Dateien verarbeiten soll.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduling.png" alt="SOLIDWORKS PDM task scheduling page" width="800">
</p>

Scheduling ist das eigene Scheduling-Framework von SOLIDWORKS PDM. Es kontrolliert, wann die Aufgabe beginnt.

9. Überprüfen Sie die unten aufgeführten PDMPublisher-Setup-Seiten.

10. Klicken Sie auf **OK**, um die Aufgabe zu speichern.

Die Aufgabe erscheint im Datei-Explorer unter **Tasks** im Rechtsklick-Menü.

Wenn das **Tasks**-Menü nicht angezeigt wird, siehe [Warum fehlt das Aufgaben-Menü?](pdmpublisher-task-menu-missing.md).

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublishertaskrmb.png" alt="PDMPublisher task in the File Explorer right-click menu" width="800">
</p>

<a id="setup-pages"></a>
## Einrichtungsseiten

Verwenden Sie diese Seiten, um zu konfigurieren, was PDMPublisher exportiert und wie es mit jeder Datei umgeht.

| Tab. | Verwenden Sie diese Seite zum |
| --- | --- |
| [Optionen](options.md) | Konfigurieren Sie Dateiformate, Ausgabepfade, Dateinamen, SOLIDWORKS-Version, Vorlagen, Protokolle und anderes Exportverhalten. |
| [Anmerkungen](annotations.md) | Fügen Sie Notizen oder Wasserzeichen hinzu, die festen Text, PDM-Variablen und SOLIDWORKS-Eigenschaften enthalten können. |
| [Bedingungen](conditions.md) | Entscheiden Sie, welche referenzierten Dateien bei der Bearbeitung von Assemblys enthalten sein sollen. |
| [Scheduled Items](scheduleditems.md) | Definieren Sie Dateien, die verarbeitet werden sollen, wenn die Aufgabe ohne ausgewählte Dateien ausgeführt wird. |

<a id="options"></a>
### Optionen

![PDMPublisher Options setup page](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-options.png)

Überprüfen Sie die empfohlenen Setup-Elemente in [Options Task Page](options.md), insbesondere Exportstandort, Dateiname, Dateiformate, SOLIDWORKS-Version, Vorlage und Aktivitätsverfolgung.

<a id="annotations"></a>
### Anmerkungen

![PDMPublisher Annotations setup page](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-annotations.png)

Die Annotationstabelle ist der Arbeitsbereich, in dem Sie Notizen oder Wasserzeichen erstellen und verwalten, die auf exportierten PDFs platziert werden. Jede Anmerkung kann ihren eigenen Text, Formatierung, Position, Blattregel und aktiven Zustand haben.

<a id="conditions"></a>
### Bedingungen

![PDMPublisher Conditions setup page](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-conditions.png)

Verwenden Sie Bedingungen, um zu steuern, welche referenzierten Dateien beim Veröffentlichen von Assemblys verarbeitet werden.

<a id="scheduled-items"></a>
### Geplante Positionen

![PDMPublisher Scheduled Items setup page](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduled-items.png)
Verwenden Sie geplante Elemente, wenn diese Aufgabe immer eine gespeicherte Liste von Dateien verarbeiten soll. Geplante Elemente überschreiben andere ausgewählte Dateien.
