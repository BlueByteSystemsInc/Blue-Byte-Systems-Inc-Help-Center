---
title: "Dateiname | PDMPublisher Optionen"
description: "Konfigurieren Sie das Ausgabedateinamenmuster, das von der PDMPublisher PDM-Task und dem SOLIDWORKS-Add-in verwendet wird."
ms.date: 08/13/2026
ms.topic: reference
---

# Dateiname

![Dateiname-Einstellung in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Definiert das Output Dateiname Pattern. Sie können statischen Text mit SOLIDWORKS benutzerdefinierten Eigenschaften oder PDM-Variablen kombinieren.

> [!NOTE]
> Diese Einstellung wird von **PDM task** und **SOLIDWORKS add-in** geteilt. PDM-Variablen sind beim Veröffentlichen in einem Vault-Kontext verfügbar; SOLIDWORKS benutzerdefinierte Eigenschaften und integrierte Platzhalter sind im aktiven Dateikontext verfügbar.

Verwenden Sie eindeutige Werte wie Teilenummer, Revision, Konfigurationsname oder Blattname, wenn eine Quelldatei möglicherweise mehrere Exporte erzeugt.

Verwenden Sie die Platzhalter **File Number**, um die ersten 3, 4, 5 oder 6 Ziffern aus der ersten numerischen Sequenz in einem Quelldateinamen zu extrahieren. Verwenden Sie die **File Number Range**-Platzhalter, um Ausgaben in numerische Bereiche zu ordnen. Siehe [File Number Placeholders](../pdmpublisherspecialvariable.md#file-number-placeholders) für alle verfügbaren Platzhalter, Beispiele und Fallback-Verhalten.

> [!IMPORTANT]
> Wenn **Convert multiple configurations** aktiviert ist, fügen Sie `ConfigurationName` oder einen anderen konfigurationsspezifischen Wert in den Dateinamen ein.

<a id="existing-files-in-pdm"></a>
## Bestehende Dateien in PDM

Wenn die exportierte Datei bereits in PDM vorhanden ist, überschreibt die PDM-Task die Datei durch Erstellen einer neuen Version. Das SOLIDWORKS-Add-in macht dasselbe, wenn es über einen ausgewählten Vault-Kontext veröffentlicht wird und der Benutzer über die erforderlichen Berechtigungen verfügt.

Wenn PDMPublisher die exportierte Datei hinzufügt oder überprüft, wird im Check-in-Kommentar festgestellt, dass die Datei von PDMPublisher hinzugefügt oder überprüft wurde.
