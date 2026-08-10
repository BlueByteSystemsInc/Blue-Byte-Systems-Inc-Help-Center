---
title: SQL Query Placeholders | PDMPublisher Annotations
description: Retrieve annotation text from a SQL database by using file-aware query placeholders.
ms.date: 08/10/2026
ms.topic: how-to
---

# SQL Query Placeholders

Use an SQL query placeholder when annotation text must come from a SQL database. PDMPublisher replaces the file placeholder in the query, runs the query, and uses the returned value in the annotation.

![Edit SQL Query dialog showing the connection string, query, output, and SQL placeholders](/images/pdmpublisher/screenshots/annotations-sql-query-placeholder.png)

## Configure the Query

1. Add or select the annotation.
2. Add an SQL value to the annotation, then select the pencil icon to open **Edit SQL Query**.
3. Enter the SQL Server connection string.
4. Enter a query that includes the placeholder for the file type you need.
5. Select **Test Query** and confirm that the expected value appears under **Output**.

For example, a Windows-authenticated connection string can look like this:

```text
Server=localhost;Database=TestPDMSql;Trusted_Connection=True;
```

## Available Placeholders

| Placeholder | Value used in the query |
| --- | --- |
| `{$SQL-Filename}` | The filename being processed. |
| `{$SQL-Part}` | The part value associated with the file. |
| `{$SQL-Assembly}` | The assembly value associated with the file. |
| `{$SQL-Drawing}` | The drawing value associated with the file. |

Choose the placeholder that matches the record stored in your database. For example, use `{$SQL-Assembly}` when the database row is identified by the assembly filename, even when the annotation is being added to an exported drawing.

## Filename Example

The following query looks up a project number by the current filename:

```sql
SELECT ProjectNumber
FROM FileProperties
WHERE FileName = '{$SQL-Filename}'
```

If the filename is `Bracket.sldprt`, PDMPublisher evaluates the query as:

```sql
SELECT ProjectNumber
FROM FileProperties
WHERE FileName = 'Bracket.sldprt'
```

## Assembly Example

The following query looks up material using the assembly filename:

```sql
SELECT Material
FROM PartProperties
WHERE FileName = '{$SQL-Assembly}'
```

When testing this query in the dialog, replace the placeholder with an actual assembly filename because the test does not have the file context supplied by a launched task. For example:

```sql
SELECT Material
FROM PartProperties
WHERE FileName = 'Full_Grill_Assembly.sldasm'
```

The **Output** area shows the test result. Confirm that the query returns the text you want displayed in the annotation before saving the task.

> [!WARNING]
> Use a database account with only the permissions required to read the annotation data. If the connection string contains credentials, restrict access to the task configuration.
