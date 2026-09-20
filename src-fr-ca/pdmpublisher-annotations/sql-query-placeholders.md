---
title: "SQL Query Placeholders.Annotations PDMPublisher"
description: "Récupérer le texte d'annotation à partir d'une base de données SQL en utilisant les fichiers-aware placeholders."
ms.date: 08/13/2026
ms.topic: how-to
---

# Espaces réservés de requête SQL

Utilisez un placeholder de requête SQL lorsque le texte d'annotation doit provenir d'une base de données SQL. PDMPublisher remplace le placeholder du fichier dans la requête, exécute la requête et utilise la valeur retournée dans l'annotation.

Dans le complément SOLIDWORKS, le détenteur du lieu est évalué pour le document actif ou la référence en cours de publication.

![Modifier la boîte de dialogue SQL Query montrant la chaîne de connexion, la requête, la sortie et les espaces SQL](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/annotations-sql-query-placeholder.png)
<a id="configure-the-query"></a>
## Configurer la requête

1. Ajouter ou sélectionner l'annotation.
2. Ajoutez une valeur SQL à l'annotation, puis sélectionnez l'icône du crayon pour ouvrir **Edit SQL Query**.
3. Saisissez la chaîne de connexion SQL Server.
4. Saisissez une requête qui inclut le détenteur de place pour le type de fichier dont vous avez besoin.
5. Sélectionnez **Test Query** et confirmez que la valeur attendue apparaît sous **Output**.

Par exemple, une chaîne de connexion authentifiée par Windows peut ressembler à ceci :

```text
Server=localhost;Database=TestPDMSql;Trusted_Connection=True;
```

<a id="available-placeholders"></a>
## Titulaires de places disponibles

| Titulaire | Valeur utilisée dans la requête |
| --- | --- |
| `($SQL-Filename)` | Le nom de fichier en cours de traitement. |
| `($SQL-Part)` | Le nom du fichier a changé pour l'extension `.sldprt`. |
| `($SQL-Assembly)` | Le nom du fichier a changé pour l'extension `.sldasm`. |
| `($SQL-Drawing)` | Le nom du fichier a changé pour l'extension `.slddrw`. |

Choisissez le détenteur de place qui correspond à l'enregistrement stocké dans votre base de données. Par exemple, utilisez `($SQL-Assembly)` lorsque la ligne de base de données est identifiée par le nom du fichier d'assemblage, même lorsque l'annotation est ajoutée à un dessin exporté.

<a id="filename-example"></a>
## Exemple de nom de fichier

La requête suivante cherche un numéro de projet par le nom de fichier actuel:

```sql
SELECT ProjectNumber
FROM FileProperties
WHERE FileName = '($SQL-Filename)'
```

Si le nom de fichier est `Bracket.sldprt`, PDMPublisher évalue la requête comme suit:

```sql
SELECT ProjectNumber
FROM FileProperties
WHERE FileName = 'Bracket.sldprt'
```

<a id="assembly-example"></a>
## Exemple d'assemblage

La requête suivante cherche du matériel en utilisant le nom de fichier d'assemblage:

```sql
SELECT Material
FROM PartProperties
WHERE FileName = '($SQL-Assembly)'
```

Lors de l'essai de cette requête dans la boîte de dialogue, remplacer le placeholder par un nom de fichier d'assemblage réel parce que le test n'a pas le contexte de fichier fourni par une tâche de publication. Par exemple:

```sql
SELECT Material
FROM PartProperties
WHERE FileName = 'Full_Grill_Assembly.sldasm'
```

La zone **Output** affiche le résultat du test. Confirmez que la requête retourne le texte que vous souhaitez afficher dans l'annotation avant d'enregistrer le profil Publier.

> [!WARNING]
> Utilisez un compte de base de données avec seulement les permissions nécessaires pour lire les données d'annotation. Si la chaîne de connexion contient des identifiants, restreindre l'accès aux profils supplémentaires SOLIDWORKS exportés.
