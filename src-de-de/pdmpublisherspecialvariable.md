---
title: "Platzhalterreferenz | PDMPublisher | SOLIDWORKS PDM"
description: "Referenzieren Sie alle integrierten, PDM-Variablen und SQL-Platzhalter, die in PDMPublisher verfügbar sind."
ms.date: 08/13/2026
ms.topic: reference
---

# Platzhalter und dynamische Variablen

Platzhalter lassen eine Aufgabe Pfade, Dateinamen, Blattfilter, Lesezeichen und Anmerkungen aus Informationen über die zu verarbeitende Datei erstellen. PDMPublisher bewertet jeden Platzhalter auf der Maschine, die die Aufgabe verarbeitet und ersetzt sie durch ihren aktuellen Wert.

>[Video https://www.loom.com/embed/377f21c2f0b4423c914fae5767b44a21?sid=02cb620e-f91c-421e-8b25-7576d6e5cb0b]]

> [!NOTE]
> Die in einem Feld verfügbaren Platzhalter werden im `>...`-Menü angezeigt. Nicht jedes Feld bietet jeden Platzhalter.

<a id="built-in-placeholders"></a>
## Eingebaute Platzhalter

| Platzhalter | Wert | Beispiel |
| --- | --- | --- |
| `(VaultRootFolder)` | Lokaler Stammordner des aktuellen PDM-Tresors auf dem Task-Host. | `C:\PDMVault` |
| `(FileNameWithoutExtension)` | Quelldateiname ohne Erweiterung. | `Bracket` |
| `(FileName)` | Quelldateiname mit Periodenzeichen entfernt. | `BracketSLDPRT` für `Bracket.SLDPRT` |
| `(FileNameNumberRange)` | Numerischer Dateiname in einem Bereich von 1.000 gruppiert. Nicht numerische Namen geben den Dateinamen ohne dessen Erweiterung zurück. | `11000-11999` für `11345.SLDPRT` |
| `(FileNameNumberFirst3Digits)` | Erste 3 Ziffern der ersten numerischen Sequenz im Dateinamen. | `123` für `PART-123456-A.SLDPRT` |
| `(FileNameNumberFirst4Digits)` | Erste 4 Ziffern der ersten numerischen Sequenz im Dateinamen. | `1234` für `PART-123456-A.SLDPRT` |
| `(FileNameNumberFirst5Digits)` | Erste 5 Ziffern der ersten numerischen Sequenz im Dateinamen. | `12345` für `PART-123456-A.SLDPRT` |
| `(FileNameNumberFirst6Digits)` | Erste 6 Ziffern der ersten numerischen Sequenz im Dateinamen. | `123456` für `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst3Digits)` | Bereich berechnet aus den ersten 3 Ziffern der ersten numerischen Sequenz. | `100-199` für `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst4Digits)` | Bereich, der aus den ersten vier Ziffern der ersten numerischen Sequenz berechnet wird. | `1000-1999` für `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst5Digits)` | Bereich berechnet aus den ersten 5 Ziffern der ersten numerischen Sequenz. | `10000-19999` für `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst6Digits)` | Bereich, der aus den ersten sechs Ziffern der ersten numerischen Sequenz berechnet wird. | `100000-199999` für `PART-123456-A.SLDPRT` |
| `(FileFolder)` | Lokaler Ordner mit der aktuell verarbeiteten Datei. | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyFolder)` | Ordner der Top-Level-Datei, die die Aufgabe gestartet hat. Für eine Aufgabe, die auf einem Teil oder einer Zeichnung gestartet wird, ist dies der Ordner dieser Datei. | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyName)` | Dateiname der Top-Level-Datei ohne ihre Erweiterung. Dies stellt auch den Top-Level-Teil oder die Zeichnung dar, wenn die Aufgabe nicht in einer Assembly gestartet wurde. | `speaker` |
| `(State)` | Aktueller PDM-Workflowzustand der Quelldatei. | `Released` |
| `(ConfigurationName)` | SOLIDWORKS-Konfiguration wird exportiert. Die PDM `@`-Konfiguration wird als `At` geschrieben. | `Default` oder `Machined` |
| `(Version)` | Aktuelle Versionsnummer der PDM-Datei. | `12` |
| `(Revision)` | Aktuelle PDM-Revision. Das Ergebnis ist leer, wenn die Datei keine Revision hat. | `B` |
| `(Date)` | Aktuelles Datum auf dem Task-Host unter Verwendung des Kurzdatenformats mit `/`, das durch `-` ersetzt wurde. | `8-13-2026` |
| `(Extension)` | Source File Extension ohne den Zeitraum. | `sldprt` |
| `(TargetExtension)` | Erweiterung des Zielformats, wenn die aktuelle Operation ein Zielformat liefert. | `pdf`, `dxf` oder `step` |
| `(User)` | PDM-Benutzer angemeldet auf dem Computer, der die Aufgabe verarbeitet. | `TaskHostUser` |
| `(LaunchingUser)` | PDM-Benutzer, der die Aufgabe gestartet hat. Dies kann von `(User)` abweichen, wenn ein anderer Computer oder ein anderes Konto es verarbeitet. | `jsmith` |
| `(BOMQuantity)` | Für die Datei berechnete Menge aus der ausgewählten Stücklistenvorlage und den Aufgabenreferenzdaten. | `4` |

<a id="file-and-top-level-values"></a>
### Datei und Top-Level-Werte

`(FileFolder)` folgt der einzelnen Datei, die derzeit exportiert wird. `(TopAssemblyFolder)` und `(TopAssemblyName)` bleiben an die Datei gebunden, die die Aufgabe gestartet hat, während PDMPublisher seine Referenzen verarbeitet.

Zum Beispiel, wenn `Speaker.SLDASM` eine Aufgabe startet und PDMPublisher `Components\Cone.SLDPRT` verarbeitet:

| Platzhalter | Beispielergebnis |
| --- | --- |
| `(FileFolder)` | `C:\PDMVault\Projects\Speaker\Components` |
| `(TopAssemblyFolder)` | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyName)` | `Speaker` |

<a id="configuration-name"></a>
### Name der Konfiguration

`(ConfigurationName)` gibt die Konfiguration zurück, die dem aktuellen Ausgang zugeordnet ist. Es ist besonders wichtig, wenn [Mehrere Konfigurationen konvertieren](pdmpublisher-options/convert-multiple-configurations.md) aktiviert ist, da es verhindert, dass Ausgaben aus verschiedenen Konfigurationen denselben Namen verwenden.

Der Platzhalter kann auch von [Sheet Name Pattern](pdmpublisher-options/sheet-name-pattern.md) verwendet werden. Bei einer Mehrblattzeichnung wertet PDMPublisher sie aus dem zugehörigen Modell aus und vergleicht den resultierenden Konfigurationsnamen mit den Zeichnungsblättern. Wenn der ausgewertete Konfigurationsname mit keinem Blatt übereinstimmt, exportiert Version `2026.08.09` und höher alle Zeichnungsblätter und protokolliert das Fallback.

<a id="bom-quantity"></a>
### Stückzahl

`(BOMQuantity)` verwendet die aus dem ausgewählten [Template](pdmpublisher-options/template.md) berechnete Größe. Eine referenzbewusste Mengenberechnung erfordert die auf dieser Seite beschriebenen Vorlagenfelder.

Wenn [Benutzer bitten, Konfiguration auszuwählen](pdmpublisher-options/ask-user-to-select-configuration-on-startup.md) aktiviert ist, multipliziert die beim Task-Start eingegebene Menge `(BOMQuantity)`. Beispielsweise erzeugen eine berechnete Menge von `2` und ein benutzerdefinierter Multiplikator von `3` `6`. Das Task-Log zeichnet die verwendeten Mengeninformationen auf.

<a id="source-and-target-extensions"></a>
### Source und Target Extensions

`(Extension)` beschreibt die Quelldatei. Beispielsweise hat eine in PDF exportierte Zeichnung einen `(Extension)`-Wert von `slddrw`.

`(TargetExtension)` beschreibt das angeforderte Ausgabeformat, wenn diese Operation eines liefert. PDMPublisher fügt normalerweise die Ausgabeerweiterung automatisch hinzu, also fügen Sie keine weitere Periode und Erweiterung nach diesem Platzhalter hinzu, es sei denn, das Zielfeld erfordert dies ausdrücklich.

<a id="pdm-variable-placeholders"></a>
## PDM Variable Platzhalter

PDM-Variablen verwenden dieses Format:

`($VariableName)`

Das `PDM Variables`-Untermenü listet die verfügbaren Variablen im Tresor auf. Wählen Sie eine Variable aus dem Menü, anstatt sie manuell einzugeben, damit der Name und das Präfix `$` korrekt sind.

Beispiele:

| Platzhalter | Beispielwert |
| --- | --- |
| `($Document Number)` | `11345` |
| `($ProjectNumber)` | `P-24017` |
| `($Description)` | `Speaker frame` |

Standardmäßig liest PDMPublisher den Wert, der der zu verarbeitenden Konfiguration zugeordnet ist. Aktivieren Sie [Use @ Tab to Evaluate Paths](pdmpublisher-options/use-at-tab-to-evaluate-paths.md), wenn die von Export Location oder Dateiname verwendeten Variablen auf der Registerkarte `@` der Datei gespeichert werden.

> [!NOTE]
> Eine leere oder nicht verfügbare PDM-Variable wird auf einen leeren Wert ausgewertet. Wenn PDMPublisher eine zugehörige Zeichnung auswertet und ihr Wert leer ist, kann sie die Variable aus dem passenden Teil oder der Baugruppe lesen.

<a id="sql-placeholders-for-annotations"></a>
## SQL Platzhalter für Anmerkungen

SQL-Platzhalter sind nur für Annotations-SQL-Abfragen verfügbar. Sie ersetzen das Token in der Abfrage durch einen Dateinamen, bevor PDMPublisher die Abfrage ausführt.

| Platzhalter | Dateiname an die Abfrage geliefert |
| --- | --- |
| `($SQL-Filename)` | Aktueller Dateiname mit seiner vorhandenen Erweiterung. |
| `($SQL-Part)` | Der aktuelle Dateiname wurde in `.sldprt` geändert. |
| `($SQL-Assembly)` | Der aktuelle Dateiname wurde in `.sldasm` geändert. |
| `($SQL-Drawing)` | Der aktuelle Dateiname wurde in `.slddrw` geändert. |

Verbindungszeichenfolgen, Abfragebeispiele, Tests und Sicherheitshinweise finden Sie unter [SQL Query Placeholders](pdmpublisher-annotations/sql-query-placeholders.md).

<a id="combined-path-example"></a>
## Kombiniertes Pfadbeispiel

Der folgende Export-Standort kombiniert integrierte und PDM variable Platzhalter:

```text
(VaultRootFolder)\Released PDFs\($ProjectNumber)\(FileNameNumberRange)\(State)
```

Für `11345.SLDPRT`, Projekt `P-24017` und Zustand `Released` bewertet es:

```text
C:\PDMVault\Released PDFs\P-24017\11000-11999\Released
```

<a id="file-name-number-range"></a>
## Dateiname-Nummernbereich

Verwenden Sie `(FileNameNumberRange)`, um Dateien mit numerischen Dateinamen in Ordnern zu gruppieren oder Namen auszugeben, die 1.000 Zahlen abdecken.

PDMPublisher entfernt die Dateierweiterung, liest den vollständigen Dateinamen als Zahl, rundet auf das nächste Tausend ab und gibt den Anfang und das Ende dieses Bereichs zurück.

| Quelldateiname | `(FileNameNumberRange)` Ergebnis |
| --- | --- |
| `1000.SLDPRT` | `1000-1999` |
| `11345.SLDASM` | `11000-11999` |
| `19999.SLDDRW` | `19000-19999` |
| `25001.SLDPRT` | `25000-25999` |

Zum Beispiel dieser Exportstandort:

`(VaultRootFolder)\Released PDFs\(FileNameNumberRange)`

bewertet für `11345.SLDPRT` als:

`C:\PDMVault\Released PDFs\11000-11999`

> [!IMPORTANT]
> Der vollständige Dateiname ohne dessen Erweiterung muss numerisch sein. Ein Dateiname wie `11345-A.SLDPRT`, `PART11345.SLDPRT` oder `Bracket.SLDPRT` wird nicht als Zahl behandelt. Wenn der Dateiname nicht numerisch ist, gibt `(FileNameNumberRange)` den tatsächlichen Dateinamen ohne die Erweiterung zurück.

| Quelldateiname | Fallback-Ergebnis |
| --- | --- |
| `11345-A.SLDPRT` | `11345-A` |
| `PART11345.SLDPRT` | `PART11345` |
| `Bracket.SLDPRT` | `Bracket` |

Sie können diesen Platzhalter aus dem Platzhaltermenü `>...` in Felder einfügen, die dynamische Werte unterstützen, einschließlich [Exportstandort](pdmpublisher-options/export-location.md) und [Dateiname](pdmpublisher-options/filename.md).

Für Dateinamen unterhalb von `1000` beginnt der Bereich bei Null. `245.SLDPRT` gibt beispielsweise `0-999` zurück. Führende Nullen bleiben nicht erhalten: `00123.SLDPRT` gibt auch `0-999` zurück.

<a id="file-number-placeholders"></a>
## Dateinummer Platzhalter

Version `2026.08.08` fügt Platzhalter hinzu, die den Anfang der ersten kontinuierlichen numerischen Sequenz extrahieren, die irgendwo im Dateinamen zu finden ist. Die Dateierweiterung ist nicht in der Suche enthalten.

Diese Platzhalter finden Sie unter **File Number** im Platzhaltermenü `>...`.

Für `PART-123456-A.SLDPRT` ist die erste numerische Sequenz `123456`:

| Platzhalter | Ergebnis |
| --- | --- |
| `(FileNameNumberFirst3Digits)` | `123` |
| `(FileNameNumberFirst4Digits)` | `1234` |
| `(FileNameNumberFirst5Digits)` | `12345` |
| `(FileNameNumberFirst6Digits)` | `123456` |

Wenn ein Dateiname mehr als eine numerische Sequenz enthält, verwendet PDMPublisher die erste. `(FileNameNumberFirst3Digits)` gibt `123` für `PART-123-REV-02.SLDPRT` zurück.

Wenn die numerische Sequenz kürzer als die angeforderte Länge ist, gibt PDMPublisher alle verfügbaren Ziffern zurück. `(FileNameNumberFirst6Digits)` gibt `42` für `PART-42-A.SLDPRT` zurück.

Wenn der Dateiname keine Ziffern enthält, gibt der Platzhalter den vollständigen Dateinamen ohne dessen Erweiterung zurück. `(FileNameNumberFirst3Digits)` gibt `Bracket` für `Bracket.SLDPRT` zurück.

<a id="file-number-range-placeholders"></a>
## File Number Range Platzhalter

Das **File Number Range**-Menü enthält den ursprünglichen `(FileNameNumberRange)`-Platzhalter und vier neue präfixbasierte Range-Platzhalter.

Die neuen Platzhalter extrahieren zuerst 3, 4, 5 oder 6 Ziffern unter Verwendung des entsprechenden **File Number**-Verhaltens. Sie runden diese Zahl dann auf einen Bereich basierend auf der extrahierten Länge ab:

| Platzhalter | Ergebnis für `PART-123456-A.SLDPRT` |
| --- | --- |
| `(FileNameNumberRangeFirst3Digits)` | `100-199` |
| `(FileNameNumberRangeFirst4Digits)` | `1000-1999` |
| `(FileNameNumberRangeFirst5Digits)` | `10000-19999` |
| `(FileNameNumberRangeFirst6Digits)` | `100000-199999` |

Zum Beispiel der Exportstandort:

`(VaultRootFolder)\Released PDFs\(FileNameNumberRangeFirst4Digits)`

bewertet für `PART-123456-A.SLDPRT` als:

`C:\PDMVault\Released PDFs\1000-1999`

Wenn weniger Ziffern verfügbar sind als angefordert, verwendet der Bereich die Anzahl der gefundenen Ziffern. `(FileNameNumberRangeFirst6Digits)` gibt `10-19` für `PART-12-A.SLDPRT` zurück.

> [!NOTE]
> Range-Ergebnisse bewahren keine führenden Nullen. `(FileNameNumberFirst3Digits)` gibt `001` für `PART-001234.SLDPRT` zurück, aber `(FileNameNumberRangeFirst3Digits)` gibt `0-99` zurück.

Wenn der Dateiname keine numerische Sequenz enthält, gibt ein Range-Platzhalter den vollständigen Dateinamen ohne dessen Erweiterung zurück.

<a id="invalid-characters-and-empty-values"></a>
## Ungültige Zeichen und leere Werte

Wenn Platzhalter zum Erstellen von Pfaden oder Dateinamen verwendet werden, werden Werte mit Zeichen, die Windows in einem Dateinamen nicht zulässt, bereinigt, bevor die Ausgabe gespeichert wird. Der Vorgang meldet die Variable, die ein ungültiges Zeichen enthielt.

Wenn ein Wert wie Revision oder eine PDM-Variable leer ist, trägt der Platzhalter eine leere Zeichenfolge bei. Fügen Sie Trennzeichen sorgfältig ein, damit ein leerer Wert keinen unerwünschten Schleppstrich oder eine zusätzliche Ordnerebene hinterlässt.
