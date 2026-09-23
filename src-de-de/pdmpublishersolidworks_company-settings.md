---
title: Unternehmenseinstellungen | PDMPublisher für SOLIDWORKS
description: Ausgewählte PDMPublisher-Einstellungen unternehmensweit veröffentlichen und verwalten.
ms.date: 10/03/2026
ms.topic: how-to
---

# Unternehmenseinstellungen

Mit **Company Settings** kann ein Administrator ausgewählte Einstellungen für alle lizenzierten Benutzer mit demselben Firmennamen veröffentlichen. Öffnen Sie **PDMPublisher > Settings > Company Settings**.

![Seite Company Settings](/images/pdmpublisher/solidworks/company-settings-20261003.png)

Eine aktivierte, nicht abgelaufene Lizenz mit Firmenname ist erforderlich. Benutzer wählen **Download company settings**, um die neueste Revision abzurufen. Bei **Let users choose** kann **Use company settings** ein- oder ausgeschaltet werden; bei **Required** sind verwaltete Seiten gesperrt und schreibgeschützt.

## Einstellungen veröffentlichen

Wählen Sie **Company administrator**, geben Sie das für den exakten Firmennamen erstellte Administratorkennwort ein und wählen Sie **Unlock**.

![Administratorkennwort eingeben](/images/pdmpublisher/solidworks/company-settings-admin-unlock-20261003.png)

1. Wählen Sie **Off**, **Let users choose** oder **Required**.
2. Wählen Sie die Gruppen **Advanced Formulas**, **BOM Manager**, **Clone Tree**, **ERP Sync**, **Languages**, **PDM**, **Property Doctor**, **Publish** und/oder **Save As New**.
3. Speichern Sie Änderungen im normalen Einstellungsdialog und wählen Sie anschließend **Publish company settings**.

![Entsperrte Administratorseite](/images/pdmpublisher/solidworks/company-settings-admin-publish-20261003.png)

Nur ausgewählte Gruppen werden verwaltet. Kennwörter, Lizenzschlüssel, Connector-Konfigurationen und andere computerspezifische Geheimnisse werden nicht geteilt. Benötigte Connectoren, Makros und externe Ressourcen müssen auf jedem Computer separat eingerichtet werden.

Jede Veröffentlichung basiert auf der zuletzt geladenen Revision. Wenn eine neuere Revision vorhanden ist, laden Sie sie zuerst herunter. **Overwrite newer company settings** darf nur zum absichtlichen Ersetzen verwendet werden; Kennwort und Bestätigung bleiben erforderlich. Der lokale Cache ist für den aktuellen Windows-Benutzer verschlüsselt, und die Übertragung erfolgt über HTTPS.
