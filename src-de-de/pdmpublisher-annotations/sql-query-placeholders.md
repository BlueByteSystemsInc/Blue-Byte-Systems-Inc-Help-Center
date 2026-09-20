---
title: "SQL Query Platzhalter | PDMPublisher Anmerkungen"
description: "Abrufen von Annotationstext aus einer SQL-Datenbank unter Verwendung von dateibasierten Abfrageplatzhaltern."
ms.date: 08/13/2026
ms.topic: how-to
---

# SQL Query Platzhalter

Verwenden Sie einen SQL-Abfrageplatzhalter, wenn der Annotationstext aus einer SQL-Datenbank stammen muss. PDMPublisher ersetzt den Dateiplatzhalter in der Abfrage, führt die Abfrage aus und verwendet den zurückgegebenen Wert in der Annotation.

Im SOLIDWORKS-Add-in wird der Platzhalter für das aktive Dokument oder die Referenz ausgewertet, die gerade veröffentlicht wird.

![Bearbeiten des SQL-Abfragedialogs mit Verbindungszeichenfolge, Abfrage, Ausgabe und SQL-Platzhaltern](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/annotations-sql-query-placeholder.png)
<a id="configure-the-query"></a>
## Konfigurieren der Query

1. Fügen oder wählen Sie die Annotation.
2. Fügen Sie der Anmerkung einen SQL-Wert hinzu und wählen Sie dann das Bleistiftsymbol aus, um **Edit SQL Query** zu öffnen.
3. Geben Sie den SQL Server-Verbindungsstring ein.
4. Geben Sie eine Abfrage ein, die den Platzhalter für den Dateityp enthält, den Sie benötigen.
5. Wählen Sie **Test Query** und bestätigen Sie, dass der Erwartungswert unter **Output** erscheint.

Zum Beispiel kann ein Windows-authentifizierter Verbindungsstring so aussehen:

```text
Server=localhost;Database=TestPDMSql;Trusted_Connection=True;
```

<a id="available-placeholders"></a>
## Verfügbare Platzhalter

| Platzhalter | In der Abfrage verwendeter Wert |
| --- | --- |
| `($SQL-Filename)` | Der Dateiname wird verarbeitet. |
| `($SQL-Part)` | Der Dateiname wurde in die `.sldprt`-Erweiterung geändert. |
| `($SQL-Assembly)` | Der Dateiname wurde in die `.sldasm`-Erweiterung geändert. |
| `($SQL-Drawing)` | Der Dateiname wurde in die `.slddrw`-Erweiterung geändert. |

Wählen Sie den Platzhalter, der mit dem in Ihrer Datenbank gespeicherten Datensatz übereinstimmt. Verwenden Sie z. B. `($SQL-Assembly)`, wenn die Datenbankzeile durch den Assembly-Dateinamen identifiziert wird, auch wenn die Anmerkung einer exportierten Zeichnung hinzugefügt wird.

<a id="filename-example"></a>
## Dateiname Beispiel

Die folgende Abfrage sucht nach einer Projektnummer nach dem aktuellen Dateinamen:

```sql
SELECT ProjectNumber
FROM FileProperties
WHERE FileName = '($SQL-Filename)'
```

Wenn der Dateiname `Bracket.sldprt` lautet, bewertet PDMPublisher die Abfrage als:

```sql
SELECT ProjectNumber
FROM FileProperties
WHERE FileName = 'Bracket.sldprt'
```

<a id="assembly-example"></a>
## Montagebeispiel

Die folgende Abfrage sucht das Material mit dem Assembly-Dateinamen nach:

```sql
SELECT Material
FROM PartProperties
WHERE FileName = '($SQL-Assembly)'
```

Wenn Sie diese Abfrage im Dialog testen, ersetzen Sie den Platzhalter durch einen tatsächlichen Assembly-Dateinamen, da der Dateikontext des Tests nicht von einem Veröffentlichungsauftrag geliefert wird. Zum Beispiel:

```sql
SELECT Material
FROM PartProperties
WHERE FileName = 'Full_Grill_Assembly.sldasm'
```

Der **Output** Bereich zeigt das Testergebnis. Bestätigen Sie, dass die Abfrage den Text zurückgibt, den Sie in der Anmerkung anzeigen möchten, bevor Sie das Profil Veröffentlichen speichern.

> [!WARNING]
> Verwenden Sie ein Datenbankkonto mit nur den Berechtigungen, die zum Lesen der Annotationsdaten erforderlich sind. Wenn der Verbindungsstring Anmeldeinformationen enthält, beschränken Sie den Zugriff auf exportierte SOLIDWORKS-Add-in-Profile.
