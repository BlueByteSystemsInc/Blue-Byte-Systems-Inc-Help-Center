---
title: "Blattname Muster | PDMPublisher Optionen"
description: "Filtern Sie das Zeichnen von Blättern nach Namen und verstehen Sie den Fallback, wenn ein ausgewertetes Muster mit keinem Blatt übereinstimmt."
ms.date: 08/19/2026
ms.topic: reference
---

# Blattbezeichnungsmuster

![Namensmustereinstellung in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Wildcard-Muster verwendet, wenn **Sheets to export** auf übereinstimmende Blattnamen gesetzt ist.

> [!NOTE]
> Diese Einstellung ist sowohl im **PDM task** als auch im **SOLIDWORKS add-in** verfügbar.

<a id="selection-rules"></a>
## Auswahlregeln

- Für eine Einblattzeichnung ignoriert PDMPublisher das Muster und exportiert das einzige Blatt.
- Für eine Zeichnung mit zwei oder mehr Blättern exportiert PDMPublisher die passenden Blätter.
- Wenn das ausgewertete Muster ohne Blätter übereinstimmt, greift PDMPublisher auf den Export aller Blätter zurück.

> [!WARNING]
> Ein Rechtschreibfehler, fehlender Eigenschaftswert oder unerwarteter Konfigurationsname kann dazu führen, dass das Muster mit nichts übereinstimmt. In Version `2026.08.09` und höher exportiert dieses Ergebnis jedes Zeichenblatt und schreibt eine Fallback-Nachricht in das Protokoll.

Verwenden Sie `*`, um einen beliebigen Text und `?`, um ein Zeichen zu passen.

Beispiele:

- `*` passt zu jedem Blatt.
- `Sheet*` entspricht `Sheet1`, `Sheet2` und `Sheet-Main`.
- `REV?` entspricht `REV1` oder `REVA`.
- `DXF*` passt zu Blättern, deren Namen mit `DXF` beginnen.

<a id="match-the-configuration-name"></a>
## Passen Sie den Konfigurationsnamen an

Verwenden Sie `(ConfigurationName)`, wenn ein Zeichenblatt nach der zu exportierenden Konfiguration benannt ist. PDMPublisher bewertet den Platzhalter vor der Übereinstimmung mit dem Blattnamen.

Zum Beispiel, wenn die ausgewählte Konfiguration `Machined` ist:

| Blattbezeichnungsmuster | Bewertetes Muster | Matches | Nicht übereinstimmend |
| --- | --- | --- | --- |
| `(ConfigurationName)` | `Machined` | `Machined` | `Default`, `Machined-DXF` |
| `(ConfigurationName)*` | `Machined*` | `Machined`, `Machined-DXF` | `Default` |
| `*(ConfigurationName)*` | `*Machined*` | `Machined`, `DXF-Machined`, `Machined-REV-A` | `Default` |

Angenommen, eine Zeichnung enthält Blätter mit den Namen `Default`, `Machined` und `Welded`. Wenn die ausgewählte Konfiguration `Welded` ist und das Muster `(ConfigurationName)` ist, wird nur das Blatt `Welded` exportiert.

Wenn die ausgewählte Konfiguration `Painted` ist und keines dieser Blätter `Painted` heißt, werden alle drei Blätter exportiert, da das ausgewertete Muster keine Übereinstimmungen aufweist.

Diese Einstellung wird von [Sheets to Export](sheets-to-export.md) verwendet, wenn diese Option auf `Sheets matching name` gesetzt ist.
