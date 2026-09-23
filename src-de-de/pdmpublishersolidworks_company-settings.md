---
title: Unternehmenseinstellungen | PDMPublisher für SOLIDWORKS
description: Ausgewählte PDMPublisher-Einstellungen unternehmensweit veröffentlichen und verwalten.
ms.date: 10/03/2026
ms.topic: how-to
---

# Unternehmenseinstellungen

Mit **Company Settings** kann ein Administrator ausgewählte Einstellungen für alle lizenzierten Benutzer mit demselben Firmennamen veröffentlichen. Öffnen Sie **PDMPublisher > Settings > Company Settings**.

![Seite Company Settings](/images/pdmpublisher/solidworks/company-settings-20261003.png)

Eine aktivierte Lizenz mit Firmenname ist erforderlich. Wählen Sie **Download company settings**, um die neuesten Einstellungen Ihres Administrators abzurufen. Bei **Let users choose** kann **Use company settings** ein- oder ausgeschaltet werden; bei **Required** sind verwaltete Seiten gesperrt und schreibgeschützt.

## Einstellungen veröffentlichen

Wählen Sie **Company administrator**, geben Sie Ihr Administratorkennwort ein und wählen Sie **Unlock**.

![Administratorkennwort eingeben](/images/pdmpublisher/solidworks/company-settings-admin-unlock-20261003.png)

1. Wählen Sie **Off**, **Let users choose** oder **Required**.
2. Wählen Sie die Gruppen **Advanced Formulas**, **BOM Manager**, **Clone Tree**, **ERP Sync**, **Languages**, **PDM**, **Property Doctor**, **Publish** und/oder **Save As New**.
3. Speichern Sie Änderungen im normalen Einstellungsdialog und wählen Sie anschließend **Publish company settings**.

![Entsperrte Administratorseite](/images/pdmpublisher/solidworks/company-settings-admin-publish-20261003.png)

Nur ausgewählte Gruppen werden geteilt. Nicht ausgewählte Gruppen verwenden weiterhin die lokalen Einstellungen des jeweiligen Benutzers.

Wenn PDMPublisher neuere Unternehmenseinstellungen meldet, laden Sie diese vor dem erneuten Veröffentlichen herunter. Verwenden Sie **Overwrite newer company settings** nur, wenn Ihre Einstellungen die neueren Einstellungen absichtlich ersetzen sollen. Lesen Sie die Bestätigung vor dem Fortfahren sorgfältig.
