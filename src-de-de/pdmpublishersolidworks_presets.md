---
title: "Integrierte Veröffentlichungsprofile | PDMPublisher für SOLIDWORKS"
description: "Erstellen Sie ein PDMPublisher für SOLIDWORKS-Profil aus einem mitgelieferten DXF-, PDF-und-STEP- oder STEP-Startprofil."
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher für SOLIDWORKS
bbsProduktHref: pdmpublishersolidworks.html
---

# Integrierte Veröffentlichungsprofile

PDMPublisher enthält Startprofile für gängige Veröffentlichungsabläufe. Sie sind nur in **PDMPublisher für SOLIDWORKS** verfügbar.

![Profilauswahl und Profilbefehle veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
## Profil aus einem integrierten Profil erstellen

1. Öffnen Sie **New**.
2. Wählen Sie **New From**.
3. Wählen Sie ein mitgeliefertes Profil.
4. Überprüfen Sie das neue Profil, passen Sie seine Einstellungen an und wählen Sie **Save** aus.

Die mitgelieferten Profile sind:

| Profil | Startzweck |
| --- | --- |
| `DXF` | Zeichnen oder Herstellen DXF Ausgabe. |
| `PDF And Step` | PDF Dokumentation und STEP Modellausgabe. |
| `STEP` | STEP Modellausgabe. |

> [!IMPORTANT]
> Ein integriertes Profil veröffentlicht nicht selbstständig. **New From** erstellt aus der mitgelieferten Startkonfiguration ein bearbeitbares Profil, das bei **PUBLISH** verwendet wird.

<a id="customize-the-new-profile"></a>
## Anpassung des neuen Profils

Integrierte Profile sind Startpunkte und keine gesperrten Konfigurationen. Prüfen Sie diese Bereiche vor der Veröffentlichung:

- [Optionen](pdmpublishersolidworks_options.md), einschließlich Exportort, Dateiname, Formate und Referenzverarbeitung
- [Anmerkungen](pdmpublishersolidworks_annotations.md)
- [Bedingungen](conditions_solidworks.md)

Das Ändern eines Profils, das aus einem integrierten Profil erstellt wurde, ändert die mitgelieferte Startkonfiguration nicht. Sie können mehrere Profile aus demselben integrierten Profil erstellen und jedes für ein anderes Kunden-, Projekt- oder Ausgabepaket anpassen.

Profilauswahl, Umbenennung, Dateiübertragung, Löschung und andere Profilbefehle finden Sie unter [Profile](pdmpublishersolidworks_profiles.md).
