---
title: "Profile mit einer PIN teilen | PDMPublisher für SOLIDWORKS"
description: "Teilen Sie ausgewählte PDMPublisher für SOLIDWORKS Profileinstellungen mit einem anderen Benutzer, indem Sie eine auslaufende sechsstellige PIN verwenden."
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher für SOLIDWORKS
bbsProduktHref: pdmpublishersolidworks.html
---

# Profile mit einer PIN teilen

PDMPublisher für SOLIDWORKS kann ein Profil mit einer sechsstelligen PIN teilen. Ein anderer PDMPublisher für SOLIDWORKS Benutzer kann diese PIN eingeben, um die freigegebenen Einstellungen herunterzuladen, zu speichern und anzuwenden.

Diese Funktion gehört zu **PDMPublisher for SOLIDWORKS**. Die Aufgabe PDM Professional speichert Einstellungen in ihrer Aufgabendefinition und verwendet keine Profil-PINs.

> [!IMPORTANT]
> Beide Nutzer benötigen eine Internetverbindung. Eine PIN bleibt für 30 Tage verfügbar.

<a id="what-a-shared-profile-can-include"></a>
## Was ein gemeinsames Profil enthalten kann

Vor dem Hochladen oder Anwenden eines Profils können Sie mit PDMPublisher diese Abschnitte auswählen:

- **Options**
- **Annotations**
- **Conditions**

Alle verfügbaren Abschnitte werden standardmäßig ausgewählt. Wählen Sie mindestens einen Abschnitt, um fortzufahren.

Der Empfänger kann nur die enthaltenen Abschnitte anwenden, die er benötigt. Einstellungen in nicht ausgewählten Abschnitten bleiben im aktuellen Profil des Empfängers unverändert.

<a id="share-a-profile"></a>
## Ein Profil teilen

1. Wählen Sie das Profil aus, das Sie teilen möchten.
2. Öffnen Sie **Export** und wählen Sie dann **Share using PIN...**.

![Profil-Geteilter Dialog mit einer auslaufenden sechsstelligen PIN](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/profile-shared-pin.png)
3. Wählen Sie die Abschnitte Optionen, Anmerkungen und Bedingungen aus, um sie einzuschließen.
4. Wählen Sie **Share** und warten Sie, bis der Upload abgeschlossen ist.
5. Wählen Sie im **Profile Shared**-Dialog **Copy PIN** und senden Sie die PIN an den Empfänger.

Der Dialog zeigt den PIN-Ablauf in der lokalen Zeit des Absenders an.

<a id="load-a-shared-profile"></a>
## Laden Sie ein gemeinsames Profil

1. Öffnen Sie **Load From...** und wählen Sie dann **Load using PIN...**.

![Load Profile using PIN dialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/profile-load-pin.png)
2. Geben Sie die vom Absender bereitgestellte sechsstellige PIN ein.

3. Wählen Sie **Load Profile**.
4. Wählen Sie aus, welche verfügbaren Abschnitte anzuwenden sind, und wählen Sie dann **Load Selected**.

PDMPublisher lädt das Profil herunter, speichert es lokal, wendet die ausgewählten Abschnitte an und macht es zum aktiven Profil. Andere aktuelle Abschnitte bleiben unverändert.

Wenn ein lokales Profil bereits den Namen des freigegebenen Profils hat, fragt PDMPublisher, ob es ersetzt, unter einem anderen Namen importiert oder den Import storniert werden soll.

<a id="security-and-expiration"></a>
## Sicherheit und Verfall

> [!WARNING]
> Jeder, der eine aktive PIN hat, kann das gemeinsame Profil herunterladen. Verwenden Sie die PIN-Freigabe für einen bequemen, kurzlebigen Konfigurationsaustausch, nicht für vertrauliche Informationen.

Überprüfen Sie die ausgewählten Abschnitte vor dem Teilen. Profile können Exportpfade, Dateinamen, Anmerkungen, Bedingungen, PDM-Eigenschaftsnamen und SQL-Annotationseinstellungen enthalten. Teilen Sie keine Passwörter, private Verbindungszeichenfolgen oder andere Geheimnisse.

Eine abgelaufene oder ungültige PIN kann nicht geladen werden. Bitten Sie den Absender, das Profil erneut zu teilen, um eine neue PIN zu erhalten.

Für dateibasierte Übertragung anstelle von PIN-Sharing siehe [Profile zwischen Computern verschieben](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
