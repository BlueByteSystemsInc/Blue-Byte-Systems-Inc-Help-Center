---
title: "Exportstandort | PDMPublisher Optionen"
description: "Konfigurieren Sie, wo die PDMPublisher PDM-Task oder das SOLIDWORKS-Add-in exportierte Dateien schreibt."
ms.date: 08/13/2026
ms.topic: reference
---

# Ausfuhrort

![Einstellung des Exportstandorts in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Legt den Ordner fest, in den PDMPublisher generierte Dateien schreibt. Der Exportort kann auf einen Ordner innerhalb des Gewölbes, einen relativen Pfad, einen UNC/Server-Pfad oder einen Ordner außerhalb des Gewölbes zeigen.

> [!NOTE]
> Diese Einstellung wird von **PDM task** und **SOLIDWORKS add-in** geteilt. Die PDM-Task kann Vault-Platzhalter und Vault-Operationen verwenden. Das Add-in wertet den Pfad aus dem aktuell in SOLIDWORKS geöffneten Dokument und das ausgewählte Profil aus.

<a id="path-types"></a>
## Trassenarten

PDMPublisher akzeptiert mehrere Pfadstile:

| Trassentyp | Beispiel | Verwendung bei |
|---|---|---|
| Vaultpfad (PDM-Aufgabe) | `(VaultRootFolder)\Released PDFs` | Die exportierten Dateien sollten dem Tresor wieder hinzugefügt werden. Verwenden Sie den Platzhalter `VaultRootFolder` aus dem Menü `>...`. |
| Relative Bahn | `Exports\PDF` | Das Ziel sollte auf der Quelldatei oder dem aktuellen Veröffentlichungskontext basieren. |
| UNC/Serverpfad | `\\server\engineering\exports` | Die Ausgabe sollte an einen gemeinsamen Netzwerkstandort geschrieben werden. |
| Außerhalb des Gewölbes | `D:\Exports\PDMPublisher` | Die exportierten Dateien sollten außerhalb von PDM bleiben. |

> [!IMPORTANT]
> Wenn sich der Speicherort im Tresor befindet, muss der PDM-Task-Benutzer oder der Benutzer, der vom Add-in aus veröffentlicht, über die Berechtigung zum Erstellen, Auschecken, Einchecken und Überschreiben von Dateien in diesem Ordner verfügen.

Wenn der Exportordner nicht vorhanden ist, erstellt PDMPublisher ihn vor dem Speichern der exportierten Datei.

`(VaultRootFolder)` ist der bevorzugte Weg, um einen Vault-Pfad in der PDM-Task zu erstellen, da er sich in der lokalen Vault-Root auf dem Task-Computer auflöst.

<a id="browse-button"></a>
## Browse Button

Mit der Browse-Taste können Sie einfach einen statischen Ordnerstandort auswählen und diesen Ordnerpfad in **Export Location** schreiben.

Verwenden Sie es, wenn die Aufgabe immer in den gleichen festen Ordner exportieren soll. Wenn sich der Pfad basierend auf Datei, Revision, Status oder Ordner ändern muss, verwenden Sie stattdessen Platzhalter aus dem `>...`-Menü.

<a id="placeholders"></a>
## Platzhalter

Die blauen Einträge im Feld Exportstandort sind Platzhalter. Ein Platzhalter ist ein dynamischer Wert, den PDMPublisher beim Start der Veröffentlichung auflöst.

Zum Beispiel:

`(TopAssemblyFolder)\Exports\(State)\(Revision)`

Wenn sich die oberste Baugruppe in

`C:\PDMVault\Projects\1001`

und der Dateizustand ist `Released` mit der Revision `B`, PDMPublisher löst den Exportort auf:

`C:\PDMVault\Projects\1001\Exports\Released\B`

`(TopAssemblyFolder)` bezeichnet den Ordner der Top-Level-Datei, die verarbeitet wird. Für die PDM-Task ist dies die Datei, die die Aufgabe gestartet hat. Für das SOLIDWORKS-Add-in ist es das Dokument, das derzeit in SOLIDWORKS geöffnet ist. Wenn die Top-Level-Datei ein einzelner Teil oder eine Zeichnung ist, verwendet PDMPublisher den Ordner dieser Datei.

Wenn die Aufgabe beispielsweise ausgeführt wird:

`C:\PDMVault\Projects\1001\Bracket.SLDPRT`

dann:

`(TopAssemblyFolder)\Exports`

löst auf:

`C:\PDMVault\Projects\1001\Exports`

Platzhalter sind nützlich, wenn dieselbe Aufgabe oder dasselbe Add-in-Profil Dateien in verschiedene Ordner schreiben muss, je nachdem, welche Datei verarbeitet wird. Sie können Werte verwenden, die im `>...`-Menü angezeigt werden, z. B. Quellordner, Dateiname, Konfiguration oder benutzerdefinierte Eigenschaften von SOLIDWORKS. Die PDM-Task kann auch Vault-Werte wie Revision, Zustand, Workflow und PDM-Variablen freigeben.

Verwenden Sie die Platzhalter **File Number** und **File Number Range**, um den Export mit der ersten numerischen Sequenz in einem Quelldateinamen zu organisieren. Sie können die ersten 3, 4, 5 oder 6 Ziffern extrahieren oder einen Bereich aus diesem Präfix erstellen. Siehe [File Number Placeholders](../pdmpublisherspecialvariable.md#file-number-placeholders) für alle verfügbaren Platzhalter, Beispiele und Fallback-Verhalten.

> [!TIP]
> Verwenden Sie Platzhalter für wiederholbare Task-Setups und Add-in-Profile. Hardcodierte Pfade sind für einen festen Exportordner in Ordnung, aber Platzhalter passen den Pfad an jede Quelldatei an.

Wenn der Pfad für die PDM-Task Variablen verwendet, die auf der Registerkarte `@` der Datei gespeichert sind, siehe [Verwenden Sie @ Tab, um Pfade auszuwerten](use-at-tab-to-evaluate-paths.md). Diese Nur-Task-Option wird im SOLIDWORKS-Add-in nicht angezeigt.

<a id="extension-specific-locations"></a>
## Erweiterungsspezifische Standorte

Verwenden Sie **Customize Location**, wenn verschiedene Dateiformate unterschiedliche Ausgabeordner benötigen.

![Locations by file format dialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Locations_by_file_format_Default_Light_100.png)
Der Dialog verwendet die gleichen Formatnamen und Dateitypsymbole, die auf der Seite [Dateiformate](file-formats.md) beschrieben sind. Mit jeder Zeile können Sie einen benutzerdefinierten Speicherort für dieses Ausgabeformat aktivieren.

Wenn ein erweiterungsspezifischer Speicherort für ein Dateiformat aktiviert ist, wird der Hauptspeicherort **Export Location** nur für dieses Format außer Kraft gesetzt.

Zum Beispiel:

| Format | Hauptausfuhrort | Erstreckungsspezifischer Standort | Endgültiger Ausgabeordner |
|---|---|---|---|
| PDF | `C:\PDMVault\Exports` | `C:\PDMVault\Exports\PDF` | `C:\PDMVault\Exports\PDF` |
| DXF | `C:\PDMVault\Exports` | `\\server\laser\DXF` | `\\server\laser\DXF` |
| STEP | `C:\PDMVault\Exports` | nicht aktiviert | `C:\PDMVault\Exports` |

Nur geprüfte / aktivierte Formate verwenden ihren benutzerdefinierten Standort. Jedes Format ohne erweiterungsspezifisches Override verwendet weiterhin das Haupt-**Export Location**.

> [!NOTE]
> Das PDM-Task-Aktivitätsprotokoll und das SOLIDWORKS-Add-in **Logs** identifizieren angepasste Pfade, die von erweiterungsspezifischen Speicherorten verwendet werden.

> [!WARNING]
> Beenden Sie den Exportstandort oder den erweiterungsspezifischen Standort nicht mit einem Backslash.
