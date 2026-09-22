---
title: "Installieren Sie PDMPublisher für SOLIDWORKS"
description: "Laden, entsperren, installieren und aktivieren Sie das PDMPublisher für das SOLIDWORKS-Add-in."
ms.date: 09/22/2026
ms.topic: how-to
---

# Installieren Sie PDMPublisher für SOLIDWORKS

Verwenden Sie das PDMPublisher MSI-Installationsprogramm, um das SOLIDWORKS-Desktop-Add-in zu installieren. SOLIDWORKS muss geschlossen werden, während Sie das Add-in installieren oder aktualisieren.

<p align="center">
<a class="bbs-download-button" href="https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher">Download PDMPublisher für SOLIDWORKS</a>
</p>

<a id="before-you-begin"></a>
## Bevor Sie beginnen

- Speichern Sie Ihre Arbeit und schließen Sie jedes laufende SOLIDWORKS-Fenster.
- Stellen Sie sicher, dass Ihr Windows-Konto Anwendungen installieren kann. Ihre Organisation erfordert möglicherweise eine Administratorgenehmigung.
- Laden Sie das PDMPublisher MSI Installer auf den lokalen Computer herunter. Führen Sie es nicht direkt aus einem E-Mail-Anhang, einem ZIP-Archiv oder einer Netzwerkvorschau aus.

> [!IMPORTANT]
> Halten Sie SOLIDWORKS geschlossen, bis der Installationsassistent beendet ist. Ein offener SOLIDWORKS-Prozess kann verhindern, dass das Installationsprogramm Add-in-Dateien korrekt ersetzt oder registriert.

<a id="unblock-the-downloaded-msi"></a>
## Freigeben des heruntergeladenen MSI

Windows kann Dateien blockieren, die aus dem Internet heruntergeladen wurden. Entsperren Sie den MSI, bevor Sie ihn ausführen:

1. Öffnen Sie **File Explorer** und suchen Sie die heruntergeladene `.msi`-Datei.
2. Klicken Sie mit der rechten Maustaste auf das MSI und wählen Sie **Properties**.
3. Wählen Sie auf der Registerkarte **General** **Unblock** unter **Security** aus.
4. Wählen Sie **Apply** und dann **OK**.

![Windows-Eigenschaften mit dem Kontrollkästchen Unblock für das heruntergeladene PDMPublisher-MSI](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/installer-unblock-20260922.png)

> [!NOTE]
> Wenn die Option **Unblock** nicht angezeigt wird, hat Windows die Datei nicht als blockiert markiert und Sie können mit der Installation fortfahren.

<a id="run-the-installation-wizard"></a>
## Führen Sie den Installations-Assistenten aus

1. Bestätige, dass SOLIDWORKS geschlossen ist.
2. Doppelklicken Sie auf die unblockierte MSI-Datei.
3. Genehmigen Sie die Windows-Sicherheits- oder Administratoraufforderung, wenn eine angezeigt wird.
4. Folgen Sie dem Installationsassistenten durch jede Seite.
5. Wählen Sie **Install**, wenn Sie aufgefordert werden.
6. Warten Sie, bis der Installer fertig ist, und wählen Sie dann **Finish** aus.

<a id="enable-pdmpublisher-in-solidworks"></a>
## PDMPublisher in SOLIDWORKS aktivieren

1. Starten Sie SOLIDWORKS.
2. Wählen Sie **Tools > Add-Ins**.
3. Erweitern Sie **Partner Solution Add-Ins**, wenn die Gruppe zusammengebrochen ist.
4. Finden Sie **PDMPublisher (SOLIDWORKS)**.
5. Aktivieren Sie das Kontrollkästchen in **Active Add-ins**, um es in der aktuellen SOLIDWORKS-Sitzung zu laden.
6. Aktivieren Sie das Kontrollkästchen in **Start Up**, um PDMPublisher automatisch zu laden, wenn SOLIDWORKS startet.
7. Wählen Sie **OK**.

![PDMPublisher für SOLIDWORKS aktiviert unter Partnerlösung Add-Ins](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)
Öffnen Sie nach den Add-in-Laden die Registerkarte **PDMPublisher** CommandManager. Verwenden Sie **Settings**, um Profile und freigegebene Ressourcen zu konfigurieren; der Aufgabenbereich zeigt nun die Produktdokumentation an.

<a id="update-pdmpublisher"></a>
## Update PDMPublisher

Um eine neuere Version zu installieren, schließen Sie SOLIDWORKS, laden Sie das aktuelle MSI herunter, entsperren Sie es und führen Sie den Installationsassistenten erneut aus. Öffnen Sie SOLIDWORKS erst nach Abschluss des Updates.

<a id="next-steps"></a>
## Nächste Steps

- [Öffnen Sie die PDMPublisher für SOLIDWORKS Übersicht](pdmpublishersolidworks.md).
- [Profile erstellen und verwalten](pdmpublishersolidworks_profiles.md).
- [Verwalten Sie Ihre Lizenz](licensespdmpublisher.md).
- [Sehen Sie sich die Videodemos an](pdmpublisherdemo.md).

Wenn PDMPublisher nicht in **Tools > Add-Ins** angezeigt wird, schließen Sie SOLIDWORKS und führen Sie das Installationsprogramm erneut aus. Für weitere Hilfe wenden Sie sich an `support@bluebytesystemsinc.zohodesk.com` und fügen Ihre SOLIDWORKS-Version und einen Screenshot des Add-Ins-Dialogs bei.
