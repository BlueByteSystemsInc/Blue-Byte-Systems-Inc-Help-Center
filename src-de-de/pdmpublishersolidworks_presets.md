---
title: "Voreinstellungen | PDMPublisher für SOLIDWORKS"
description: "Erstellen Sie ein PDMPublisher für SOLIDWORKS-Profil aus einem integrierten DXF, PDF und STEP oder STEP Preset."
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher für SOLIDWORKS
bbsProduktHref: pdmpublishersolidworks.html
---

# Presets

Presets sind integrierte Startkonfigurationen für gängige Publishing-Workflows. Sie sind nur in **PDMPublisher for SOLIDWORKS** verfügbar.

![Profilauswahl und Profilbefehle veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
<a id="create-a-profile-from-a-preset"></a>
## Erstellen eines Profils aus einem Preset

1. Öffnen Sie **New**.
2. Wählen Sie **New From**.
3. Wählen Sie ein mitgeliefertes Preset.
4. Überprüfen Sie das neue Profil, passen Sie seine Einstellungen an und wählen Sie **Save** aus.

Die bereitgestellten Presets sind:

| Preset | Startzweck |
| --- | --- |
| `DXF` | Zeichnen oder Herstellen DXF Ausgabe. |
| `PDF And Step` | PDF Dokumentation und STEP Modellausgabe. |
| `STEP` | STEP Modellausgabe. |

> [!IMPORTANT]
> Ein Preset veröffentlicht nicht von selbst. **New From** erstellt ein Profil aus der Voreinstellung; das neue Profil ist die Konfiguration, die verwendet wird, wenn Sie **PUBLISH** auswählen.

<a id="customize-the-new-profile"></a>
## Anpassung des neuen Profils

Presets sind Startpunkte, keine gesperrten Konfigurationen. Überprüfen Sie diese Bereiche vor der Veröffentlichung:

- [Optionen](pdmpublishersolidworks_options.md), einschließlich Exportort, Dateiname, Formate und Referenzverarbeitung
- [Anmerkungen](pdmpublishersolidworks_annotations.md)
- [Bedingungen](conditions_solidworks.md)

Das Ändern eines aus einer Voreinstellung erstellten Profils ändert nicht die ursprüngliche Voreinstellung. Sie können mehrere Profile aus derselben Voreinstellung erstellen und jedes für ein anderes Kunden-, Projekt- oder Ausgabepaket anpassen.

Profilauswahl, Umbenennung, Dateiübertragung, Löschung und andere Profilbefehle finden Sie unter [Profile](pdmpublishersolidworks_profiles.md).
