---
title: "Nom de la feuille Options PDMPublisher"
description: "Filtrer les feuilles de dessin par nom et comprendre le repli lorsqu'un motif évalué ne correspond à aucune feuille."
ms.date: 08/19/2026
ms.topic: reference
---

# Modèle de nom de feuille

![Définition du nom de la feuille dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Modèle Wildcard utilisé lorsque **Sheets to export** est défini pour correspondre aux noms de feuille.

> [!NOTE]
> Ce réglage est disponible dans les **tâche PDM** et **SOLIDWORKS add-in**.

<a id="selection-rules"></a>
## Règles de sélection

- Pour un dessin à une feuille, PDMPublisher ignore le motif et exporte la seule feuille.
- Pour un dessin avec deux feuilles ou plus, PDMPublisher exporte les feuilles correspondantes.
- Si le modèle évalué ne correspond à aucune feuille, PDMPublisher revient à exporter toutes les feuilles.

> [!WARNING]
> Une erreur d'orthographe, une valeur de propriété manquante ou un nom de configuration inattendu peuvent ne rien faire correspondre. Dans la version `2026.08.09` et plus tard, ce résultat exporte chaque feuille de dessin et écrit un message de retour au journal.

Utilisez `*` pour correspondre à n'importe quel texte et `?` pour correspondre à un caractère.

Exemples:

- `*` correspond à chaque feuille.
- `Sheet*` correspond à `Sheet1`, `Sheet2` et `Sheet-Main`.
- `REV?` correspond à `REV1` ou `REVA`.
- `DXF*` correspond à des feuilles dont le nom commence par `DXF`.

<a id="match-the-configuration-name"></a>
## Correspond au nom de la configuration

Utilisez `(ConfigurationName)` lorsqu'une feuille de dessin porte le nom de la configuration exportée. PDMPublisher évalue le détenteur de place avant de correspondre au nom de la feuille.

Par exemple, si la configuration sélectionnée est `Machined`:

| Modèle de nom de feuille | Modèle évalué | Correspondance | Ne correspond pas |
| --- | --- | --- | --- |
| `(ConfigurationName)` | `Machined` | `Machined` | `Default`, `Machined-DXF` |
| `(ConfigurationName)*` | `Machined*` | `Machined`, `Machined-DXF` | `Default` |
| `*(ConfigurationName)*` | `*Machined*` | `Machined`, `DXF-Machined`, `Machined-REV-A` | `Default` |

Comme autre exemple, supposons qu'un dessin contient des feuilles nommées `Default`, `Machined` et `Welded`. Lorsque la configuration sélectionnée est `Welded` et que le motif est `(ConfigurationName)`, seule la feuille `Welded` est exportée.

Si la configuration sélectionnée est `Painted` et qu'aucune de ces feuilles ne s'appelle `Painted`, les trois feuilles sont exportées parce que le motif évalué n'a pas de correspondance.

Ce paramètre est utilisé par [Sheets to Export](sheets-to-export.md) lorsque cette option est réglée sur `Sheets matching name`.
