---
title: "Fehlerbehebung bei blockierten Dateien in Windows | SOLIDWORKS PDM"
description: "Erfahren Sie, wie Sie Dateien in Windows entsperren, die aus dem Internet oder externen Quellen heruntergeladen werden, einschließlich SOLIDWORKS PDM add-ins."
ms.date: 06/19/2026
ms.topic: conceptual
---

# Eine Datei, die ich heruntergeladen habe (wie ein SOLIDWORKS PDM-Add-in), funktioniert nicht. Wie überprüfe ich, ob es blockiert ist?

> [!WARNING]
> **Please unblock your downloads. Blocked files will affect the proper execution of our products in your systems**.


<br>

Wenn eine aus dem Internet heruntergeladene Datei (z. B. ein SOLIDWORKS PDM-Add-in, Makro, Installationsprogramm oder Skript) nicht geladen oder ausgeführt wird, blockiert Windows sie möglicherweise aus Sicherheitsgründen. Folgen Sie diesen steps, um es zu entsperren:

- **Locate the File:** Open File Explorer und navigieren Sie zur heruntergeladenen Datei.

- **Right-click the File:** Klicken Sie mit der rechten Maustaste auf die Datei, um das Kontextmenü aufzurufen.

- **Go to Properties:** Klicken Sie auf "Eigenschaften" unten im Kontextmenü.

- **Check for Blocking:** Suchen Sie auf der Registerkarte **General** nach einem Kontrollkästchen mit der Bezeichnung **“Unblock”** unten. Wenn Sie es sehen, wird die Datei von Windows blockiert.

- **Unblock the File:** Aktivieren Sie das Feld **“Unblock”** und klicken Sie auf **“Apply”**, dann auf **“OK”**.

- **Verify:** Öffnen Sie das Fenster Eigenschaften erneut, um sicherzustellen, dass das Kontrollkästchen "Entsperren" verschwunden ist.

Nach dem Entsperren sollte die Datei normal funktionieren, ohne von den Sicherheitsmechanismen von Windows blockiert zu werden.

<br>

<center>
<img src="https://pdmpublisher.com/help/images/blocked.png" alt="Blocked file example" />
</center>

<br><br>

> [!NOTE]
> Windows blockiert möglicherweise Dateien von externen Quellen, um Ihr System zu schützen. Dazu gehören Dateien, die sind:
>
> **✅ Downloaded from the Internet**
> Dateien von Websites, Cloud-Speichern oder Softwareanbietern können automatisch blockiert werden.
>
> **📩 Received as Email Attachments**
> Vor allem solche von unbekannten oder nicht vertrauenswürdigen Absendern.
>
> **🔌 Copied from External Devices**
> USB-Laufwerke, freigegebene Netzwerkstandorte oder Remote-Server können Dateien als nicht vertrauenswürdig markieren.
>
> **⚙️ Controlled by Security Policies**
> Dateien werden mit einer Zonenkennung versehen (z. B. „aus dem Internet) und können basierend auf System- oder Gruppenrichtlinieneinstellungen eingeschränkt werden.

---

Das Entsperren der Datei stellt sicher, dass Windows die Ausführung nicht mehr verhindert - stellen Sie einfach sicher, dass die Quelle vertrauenswürdig ist.
