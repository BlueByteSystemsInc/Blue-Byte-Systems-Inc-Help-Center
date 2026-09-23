---
title: "Profile veröffentlichen | PDMPublisher für SOLIDWORKS"
description: "Erstellen, Auswählen, Umbenennen, Exportieren, Importieren, Teilen und Löschen von wiederverwendbaren Profilen Veröffentlichen in PDMPublisher für SOLIDWORKS."
ms.date: 09/16/2026
ms.topic: how-to
bbsProductName: PDMPublisher für SOLIDWORKS
bbsProduktHref: pdmpublishersolidworks.html
---

# Profile veröffentlichen

Ein Publish-Profil ist eine wiederverwendbare Kombination aus Publish-Einstellungen, Anmerkungen und Bedingungen. Verwenden Sie Profile, um zwischen Export-Workflows zu wechseln, ohne diese Abschnitte jedes Mal neu zu erstellen.

Diese Profilfamilie gehört zu **PDMPublisher for SOLIDWORKS**. Die PDM-Task speichert ihre Einstellungen in einer Aufgabendefinition und verwendet keine Add-in-Profile. Save As New, Property Doctor und Clone Tree haben separate Profilfamilien, die mit diesen Befehlen dokumentiert sind.

![Profilauswahl und Profilbefehle veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
Ein Profil ist eine benannte Veröffentlichungskonfiguration, die Optionen, Anmerkungen und Bedingungen enthält. Wählen Sie vor der Veröffentlichung ein Profil aus.

<a id="select-a-profile"></a>
## Wählen Sie ein Profil

Verwenden Sie die Profilliste auf der Einstellungsseite veröffentlichen oder den Pfeil neben **Publish** in der CommandManager. Das Profil speichert Veröffentlichungseinstellungen, Anmerkungen und Bedingungen.

![Namens Profile im Menü CommandManager veröffentlichen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)
Das CommandManager Menü listet jedes gespeicherte Profil als **Profile: _name_** auf. Durch Auswählen eines Eintrags wird der Workflow Veröffentlichen mit diesem Profil gestartet. Wenn **Show dialog before processing** aktiviert ist, überprüfen Sie die aufgelösten Ausgabe- und Verarbeitungsoptionen, bevor Sie den Auftrag bestätigen.

Geben Sie Profilnamen an, die ihre Ausgabe beschreiben, z. B. `Released PDF`, `Laser DXF` oder `PDF And Step`.

<a id="create-a-blank-profile"></a>
## Erstellen Sie ein Blank Profil

Wählen Sie **New > New...**, um ein Profil zu erstellen, das Sie von Anfang an konfigurieren können. Legen Sie vor der Veröffentlichung den Exportort, den Dateinamen, die Dateiformate, das Referenzverhalten, die Anmerkungen und die Bedingungen fest.

Um mit einer mitgelieferten Konfiguration anstelle eines leeren Profils zu beginnen, siehe [Integrierte Veröffentlichungsprofile](pdmpublishersolidworks_presets.md).

<a id="rename-a-profile"></a>
## Umbenennen eines Profils

1. Öffnen Sie **PDMPublisher > Settings > Publish** und wählen Sie das Profil aus.
2. Wählen Sie **Edit**.
3. Ändern Sie den Namen im Profilfeld.
4. Wählen Sie **Save**.

Verwenden Sie die Seiten- und Bleistifttasten neben der Profilauswahl, um ein Profil zu erstellen oder umzubenennen, und wählen Sie dann **OK**, um die Änderungen zu speichern.

Während der Profilname bearbeitet wird, sind andere Profilbefehle nicht verfügbar, bis der Name gespeichert ist.

<a id="move-profiles-between-computers"></a>
## Profile zwischen Computern verschieben

Verwenden Sie die Dateiübertragung, wenn Sie ein dauerhaftes Backup benötigen oder das gesamte Profil ohne Verwendung einer PIN verschieben möchten.

<a id="export-a-profile-to-a-file"></a>
### Exportieren eines Profils in eine Datei

1. Wählen Sie das Profil aus.
2. Öffnen Sie **Export** und wählen Sie dann **Export to File...**.
3. Wählen Sie aus, wo Sie die `.pdmpublisherprofile`-Datei speichern möchten.

Die exportierte Datei behält das vollständige Profil, einschließlich der Optionen, Anmerkungen und Bedingungen. Bewahren Sie eine exportierte Kopie auf, bevor Sie den Computer wechseln oder größere Änderungen an einem etablierten Publishing-Setup vornehmen.

<a id="load-a-profile-from-a-file"></a>
### Laden Sie ein Profil aus einer Datei

1. Öffnen Sie **Load From...** und wählen Sie dann **Load from File...**.
2. Wählen Sie eine `.pdmpublisherprofile`-Datei aus.
3. Bestätigen Sie den Profilnamen, wenn PDMPublisher ein lokales Profil mit dem gleichen Namen findet.

Das geladene Profil wird lokal gespeichert, sofort angewendet und wird zum aktiven Profil. Wenn der Name bereits vorhanden ist, können Sie das lokale Profil ersetzen, das Profil unter einem anderen Namen importieren oder abbrechen.

> [!NOTE]
> Eine Profildatei ist eine gespeicherte Konfiguration. Beim Laden wird das integrierte Profil, das als Ausgangspunkt diente, nicht geändert.

<a id="share-profiles-using-a-pin"></a>
## Profile mit einer PIN teilen

Teilen Sie ausgewählte Optionen, Anmerkungen und Bedingungen mit einer sechsstelligen PIN, die 30 Tage lang verfügbar bleibt. Siehe [Profile mit einer PIN teilen](pdmpublishersolidworks_profile_sharing.md) für den Workflow zum Teilen und Laden, die Abschnittsauswahl, das Verhalten von Namenskonflikten und Sicherheitshinweise.

<a id="delete-a-profile"></a>
## Löschen eines Profils

Wählen Sie das Profil und wählen Sie **Delete**. Durch das Löschen eines Profils wird diese gespeicherte Konfiguration entfernt; es werden keine exportierten Dokumente gelöscht.

> [!IMPORTANT]
> Bestätigen Sie, dass keine weitere Kopie benötigt wird, bevor Sie ein Profil löschen. Exportieren Sie das Profil zuerst, wenn es später benötigt wird.

Um jede PDMPublisher-Profilfamilie und freigegebene Ressource zusammen zu verschieben, verwenden Sie [Alle Einstellungen übertragen](pdmpublishersolidworks_settings.md#transfer-all-settings).
