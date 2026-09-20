---
title: "PDM Einstellungen | PDMPublisher für SOLIDWORKS"
description: "Wählen Sie das lokale SOLIDWORKS PDM-Gewölbe, das von PDM-bewussten PDMPublisher-Funktionen verwendet wird."
ms.date: 09/16/2026
ms.topic: how-to
---

# PDM-Einstellungen

Öffnen Sie **PDMPublisher > Settings > PDM**, um den lokalen SOLIDWORKS PDM-Tresor auszuwählen, der von PDM-bewussten Dienstprogrammeinstellungen verwendet wird.

![PDM-Vault-Verbindungseinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)
| Kontrolle | Was es tut |
| --- | --- |
| **Use vault** | Ermöglicht PDM-bewusstes Verhalten für Befehle und Profile, die es unterstützen. |
| Fehlerliste | Wählen Sie das lokale SOLIDWORKS PDM Professional-Gewölbe, das von PDMPublisher geteilt wird. |

Verwenden Sie diese Seite, wenn ein Save As New- oder Clone Tree-Profil PDM-Seriennummern, Revisionen, Check-in oder eine andere vaultabhängige Operation verwendet. Der ausgewählte Tresor muss über eine lokale Tresoransicht auf dem Computer verfügen und der aktuelle Windows-Benutzer muss sich anmelden können.

<a id="before-selecting-a-vault"></a>
## Vor der Auswahl eines Vault

1. Bestätigen Sie, dass die erforderliche Vault-Ansicht lokal vorhanden ist.
2. Melden Sie sich mindestens einmal über den SOLIDWORKS PDM File Explorer an.
3. Öffnen Sie Einstellungen und wählen Sie den Tresor auf der **PDM**-Seite aus.
4. Aktivieren Sie **Use vault** und wählen Sie das beabsichtigte Gewölbe aus.
5. Wählen Sie **OK**, um die Auswahl zu speichern.

Das ausgewählte Gewölbe wird für Seriennummern, automatisches Einchecken, Platzhalter für Vault-Rootordner und andere PDM-fähige Tools verwendet.

Wenn kein Tresor verfügbar ist, erstellen oder reparieren Sie die lokale Tresoransicht außerhalb von PDMPublisher. Veröffentlichungen, die nur lokale SOLIDWORKS-Dateien verwenden, erfordern keine Tresorauswahl.

> [!IMPORTANT]
> Durch die Auswahl eines Tresors werden keine Dateien verschoben, der Benutzer angemeldet oder PDM-Berechtigungen gewährt. Es identifiziert nur das Gewölbe, das PDM-bewusste PDMPublisher-Steuerelemente verwenden sollten.
