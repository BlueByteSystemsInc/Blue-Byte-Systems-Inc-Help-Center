---
title: "Référence des espaces réservés XQZAQZZX"
description: "Référencer toutes les variables intégrées, PDM et SQL disponibles dans PDMPublisher."
ms.date: 08/13/2026
ms.topic: reference
---

# Porte-places et variables dynamiques

Placeholders laisse une tâche créer des chemins, des noms de fichiers, des filtres de feuilles, des signets et des annotations à partir d'informations sur le fichier en cours de traitement. PDMPublisher évalue chaque placeholder sur la machine qui traite la tâche et la remplace par sa valeur actuelle.

>[!Vidéo https://www.loom.com/embed/377f21c2f0b4423c914fae5767b44a21?sid=02cb620e-f91c-421e-8b25-7576d6e5cb0b]

> [!NOTE]
> Les supports disponibles dans un champ sont affichés dans son menu `>...`. Tous les champs n'offrent pas tous les lieux.

<a id="built-in-placeholders"></a>
## Placeurs intégrés

| Titulaire | Valeur | Exemple |
| --- | --- | --- |
| `(VaultRootFolder)` | Dossier racine local de le coffre-fort PDM actuelle sur l'hôte de tâche. | `C:\PDMVault` |
| `(FileNameWithoutExtension)` | Nom de fichier source sans son extension. | `Bracket` |
| `(FileName)` | Nom de fichier source avec les caractères d'époque supprimés. | `BracketSLDPRT` pour `Bracket.SLDPRT` |
| `(FileNameNumberRange)` | Nom de fichier numérique groupé dans une gamme de 1000. Les noms non numériques renvoient le nom du fichier sans son extension. | `11000-11999` pour `11345.SLDPRT` |
| `(FileNameNumberFirst3Digits)` | Les 3 premiers chiffres de la première séquence numérique du nom de fichier. | `123` pour `PART-123456-A.SLDPRT` |
| `(FileNameNumberFirst4Digits)` | Les 4 premiers chiffres de la première séquence numérique du nom de fichier. | `1234` pour `PART-123456-A.SLDPRT` |
| `(FileNameNumberFirst5Digits)` | Les 5 premiers chiffres de la première séquence numérique dans le nom de fichier. | `12345` pour `PART-123456-A.SLDPRT` |
| `(FileNameNumberFirst6Digits)` | Les 6 premiers chiffres de la première séquence numérique du nom de fichier. | `123456` pour `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst3Digits)` | Plage calculée à partir des 3 premiers chiffres de la première séquence numérique. | `100-199` pour `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst4Digits)` | Plage calculée à partir des 4 premiers chiffres de la première séquence numérique. | `1000-1999` pour `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst5Digits)` | Plage calculée à partir des 5 premiers chiffres de la première séquence numérique. | `10000-19999` pour `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst6Digits)` | Plage calculée à partir des 6 premiers chiffres de la première séquence numérique. | `100000-199999` pour `PART-123456-A.SLDPRT` |
| `(FileFolder)` | Dossier local contenant le fichier en cours de traitement. | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyFolder)` | Dossier du fichier de haut niveau qui a lancé la tâche. Pour une tâche lancée sur une partie ou un dessin, c'est le dossier de ce fichier. | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyName)` | Nom du fichier de haut niveau sans son extension. Cela représente également la partie de haut niveau ou le dessin lorsque la tâche n'a pas été lancée sur une assemblée. | `speaker` |
| `(State)` | État actuel du flux de travail PDM du fichier source. | `Released` |
| `(ConfigurationName)` | La configuration SOLIDWORKS est exportée. La configuration PDM `@` est écrite sous la forme de `At`. | `Default` ou `Machined` |
| `(Version)` | Numéro de version du fichier PDM actuel. | `12` |
| `(Revision)` | Révision actuelle du PDM. Le résultat est vide si le fichier n'a pas de révision. | `B` |
| `(Date)` | Date actuelle sur l'hôte de tâche, en utilisant son format de courte date avec `/` remplacé par `-`. | `8-13-2026` |
| `(Extension)` | Extension du fichier source sans la période. | `sldprt` |
| `(TargetExtension)` | Extension du format de destination lorsque l'opération actuelle fournit un format cible. | `pdf`, `dxf` ou `step` |
| `(User)` | L'utilisateur PDM s'est connecté sur l'ordinateur traitant la tâche. | `TaskHostUser` |
| `(LaunchingUser)` | Utilisateur PDM qui a lancé la tâche. Cela peut différer de `(User)` quand un autre ordinateur ou un autre compte le traite. | `jsmith` |
| `(BOMQuantity)` | Quantité calculée pour le fichier à partir du modèle BOM sélectionné et des données de référence des tâches. | `4` |

<a id="file-and-top-level-values"></a>
### Valeurs des fichiers et des niveaux supérieurs

`(FileFolder)` suit le fichier individuel actuellement exporté. `(TopAssemblyFolder)` et `(TopAssemblyName)` restent liés au fichier qui a lancé la tâche pendant que PDMPublisher traite ses références.

Par exemple, lorsque `Speaker.SLDASM` lance une tâche et que PDMPublisher traite `Components\Cone.SLDPRT`:

| Titulaire | Exemple de résultat |
| --- | --- |
| `(FileFolder)` | `C:\PDMVault\Projects\Speaker\Components` |
| `(TopAssemblyFolder)` | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyName)` | `Speaker` |

<a id="configuration-name"></a>
### Nom de la configuration

`(ConfigurationName)` retourne la configuration associée à la sortie courante. Il est particulièrement important lorsque [Convert Multiple Configurations](pdmpublisher-options/convert-multiple-configurations.md) est activé car il empêche les sorties de différentes configurations d'utiliser le même nom.

Le détenteur de place peut également être utilisé par [Sheet Name Pattern](pdmpublisher-options/sheet-name-pattern.md). Pour un dessin à feuilles multiples, PDMPublisher l'évalue à partir du modèle associé et correspond au nom de configuration résultant par rapport aux feuilles de dessin. Si le nom de configuration évalué ne correspond à aucune feuille, la version `2026.08.09` et plus tard exporte toutes les feuilles de dessin et enregistre le retour.

<a id="bom-quantity"></a>
### Quantité BOM

`(BOMQuantity)` utilise la quantité calculée à partir du [Template](pdmpublisher-options/template.md) sélectionné. Le calcul de la quantité de référence nécessite les champs de gabarit décrits sur cette page.

Lorsque [Demander à l'utilisateur de sélectionner la configuration](pdmpublisher-options/ask-user-to-select-configuration-on-startup.md) est activé, la quantité saisie sur le lancement de la tâche multiplie `(BOMQuantity)`. Par exemple, une quantité calculée de `2` et un multiplicateur personnalisé de `3` produisent `6`. Le journal des tâches enregistre l'information sur la quantité appliquée.

<a id="source-and-target-extensions"></a>
### Extension des sources et des cibles

`(Extension)` décrit le fichier source. Par exemple, un dessin exporté vers PDF a une valeur `(Extension)` de `slddrw`.

`(TargetExtension)` décrit le format de sortie demandé lorsque cette opération fournit un. PDMPublisher ajoute normalement l'extension de sortie automatiquement, donc n'ajoutez pas une autre période et une extension après ce détenteur de place à moins que le champ de destination ne l'exige spécifiquement.

<a id="pdm-variable-placeholders"></a>
## Porte-places variables PDM

Les variables PDM utilisent ce format :

`($VariableName)`

Le sous-menu `PDM Variables` énumère les variables disponibles dans le coffre. Sélectionnez une variable dans le menu au lieu de la taper manuellement afin que son nom et le préfixe `$` soient corrects.

Exemples:

| Titulaire | Exemple de valeur |
| --- | --- |
| `($Document Number)` | `11345` |
| `($ProjectNumber)` | `P-24017` |
| `($Description)` | `Speaker frame` |

Par défaut, PDMPublisher lit la valeur associée à la configuration en cours de traitement. Activer [Utiliser @ Tab pour évaluer les chemins](pdmpublisher-options/use-at-tab-to-evaluate-paths.md) lorsque les variables utilisées par Export Location ou nom de fichier sont stockées dans l'onglet `@` du fichier.

> [!NOTE]
> Une variable PDM vide ou non disponible évalue à une valeur vide. Lorsque PDMPublisher évalue un dessin associé et que sa valeur est vide, il peut lire la variable de la partie ou de l'ensemble correspondant.

<a id="sql-placeholders-for-annotations"></a>
## Porte-places SQL pour les annotations

Les espaces SQL ne sont disponibles que pour les requêtes SQL d'annotation. Ils remplacent le jeton dans la requête par un nom de fichier avant que PDMPublisher n'exécute la requête.

| Titulaire | Nom de fichier fourni à la requête |
| --- | --- |
| `($SQL-Filename)` | Nom de fichier actuel avec son extension existante. |
| `($SQL-Part)` | Le nom de fichier actuel a été changé en `.sldprt`. |
| `($SQL-Assembly)` | Le nom de fichier actuel a été changé en `.sldasm`. |
| `($SQL-Drawing)` | Le nom de fichier actuel a été changé en `.slddrw`. |

Pour les chaînes de connexion, les exemples de requêtes, les tests et les conseils de sécurité, voir [SQL Query Placeholders](pdmpublisher-annotations/sql-query-placeholders.md).

<a id="combined-path-example"></a>
## Exemple de trajectoire combinée

La position d'exportation suivante combine les supports de localisation variables intégrés et PDM:

```text
(VaultRootFolder)\Released PDFs\($ProjectNumber)\(FileNameNumberRange)\(State)
```

Pour `11345.SLDPRT`, le projet `P-24017` et l'état `Released`, il évalue :

```text
C:\PDMVault\Released PDFs\P-24017\11000-11999\Released
```

<a id="file-name-number-range"></a>
## Numéro de fichier Gamme

Utilisez `(FileNameNumberRange)` pour regrouper des fichiers avec des noms de fichiers numériques dans des dossiers ou des noms de sorties couvrant 1000 numéros.

PDMPublisher supprime l'extension de fichier, lit le nom complet du fichier comme un nombre, tourne vers le millier le plus proche, et retourne le début et la fin de cette gamme.

| Nom de fichier source | Résultat `(FileNameNumberRange)` |
| --- | --- |
| `1000.SLDPRT` | `1000-1999` |
| `11345.SLDASM` | `11000-11999` |
| `19999.SLDDRW` | `19000-19999` |
| `25001.SLDPRT` | `25000-25999` |

Par exemple, ce lieu d'exportation :

`(VaultRootFolder)\Released PDFs\(FileNameNumberRange)`

évalue pour `11345.SLDPRT` comme suit:

`C:\PDMVault\Released PDFs\11000-11999`

> [!IMPORTANT]
> Le nom complet du fichier sans son extension doit être numérique. Un nom de fichier tel que `11345-A.SLDPRT`, `PART11345.SLDPRT` ou `Bracket.SLDPRT` n'est pas traité comme un nombre. Lorsque le nom de fichier n'est pas numérique, `(FileNameNumberRange)` retourne le nom de fichier réel sans l'extension.

| Nom de fichier source | Résultat de l'échec |
| --- | --- |
| `11345-A.SLDPRT` | `11345-A` |
| `PART11345.SLDPRT` | `PART11345` |
| `Bracket.SLDPRT` | `Bracket` |

Vous pouvez insérer ce placeholder à partir du menu Placeholder `>...` dans les champs qui prennent en charge les valeurs dynamiques, y compris [Export Location](pdmpublisher-options/export-location.md) et [Nom du fichier](pdmpublisher-options/filename.md).

Pour les noms de fichiers sous `1000`, la plage commence à zéro. Par exemple, `245.SLDPRT` retourne `0-999`. Les zéros de tête ne sont pas conservés : `00123.SLDPRT` retourne également `0-999`.

<a id="file-number-placeholders"></a>
## Numéro de fichier Titulaires

La version `2026.08.08` ajoute des supports qui extrait le début de la première séquence numérique continue trouvée n'importe où dans le nom de fichier. L'extension de fichier n'est pas incluse dans la recherche.

Vous pouvez les trouver sous **File Number** dans le menu `>...`.

Pour `PART-123456-A.SLDPRT`, la première séquence numérique est `123456`:

| Titulaire | Résultat |
| --- | --- |
| `(FileNameNumberFirst3Digits)` | `123` |
| `(FileNameNumberFirst4Digits)` | `1234` |
| `(FileNameNumberFirst5Digits)` | `12345` |
| `(FileNameNumberFirst6Digits)` | `123456` |

Si un nom de fichier contient plus d'une séquence numérique, PDMPublisher utilise la première. Par exemple, `(FileNameNumberFirst3Digits)` retourne `123` pour `PART-123-REV-02.SLDPRT`.

Si la séquence numérique est plus courte que la longueur demandée, PDMPublisher retourne tous les chiffres disponibles. Par exemple, `(FileNameNumberFirst6Digits)` retourne `42` pour `PART-42-A.SLDPRT`.

Si le nom de fichier ne contient pas de chiffres, le titulaire du lieu renvoie le nom de fichier complet sans son extension. Par exemple, `(FileNameNumberFirst3Digits)` retourne `Bracket` pour `Bracket.SLDPRT`.

<a id="file-number-range-placeholders"></a>
## Numéro de fichier Range Placeholders

Le menu **File Number Range** contient le porte-place `(FileNameNumberRange)` original et quatre nouveaux porte-places préfixes.

Les nouveaux détenteurs extraient d'abord 3, 4, 5 ou 6 chiffres en utilisant le comportement **File Number** correspondant. Ils arrondissent ensuite ce nombre jusqu'à une plage basée sur la longueur extraite:

| Titulaire | Résultat pour `PART-123456-A.SLDPRT` |
| --- | --- |
| `(FileNameNumberRangeFirst3Digits)` | `100-199` |
| `(FileNameNumberRangeFirst4Digits)` | `1000-1999` |
| `(FileNameNumberRangeFirst5Digits)` | `10000-19999` |
| `(FileNameNumberRangeFirst6Digits)` | `100000-199999` |

Par exemple, le lieu d'exportation :

`(VaultRootFolder)\Released PDFs\(FileNameNumberRangeFirst4Digits)`

évalue pour `PART-123456-A.SLDPRT` comme suit:

`C:\PDMVault\Released PDFs\1000-1999`

Si moins de chiffres sont disponibles que demandé, la plage utilise le nombre de chiffres qui ont été trouvés. Par exemple, `(FileNameNumberRangeFirst6Digits)` retourne `10-19` pour `PART-12-A.SLDPRT`.

> [!NOTE]
> Les résultats de l'intervalle ne préservent pas les zéros de tête. Par exemple, `(FileNameNumberFirst3Digits)` renvoie `001` pour `PART-001234.SLDPRT`, mais `(FileNameNumberRangeFirst3Digits)` renvoie `0-99`.

Si le nom de fichier ne contient pas de séquence numérique, un placeholder de gamme retourne le nom de fichier complet sans son extension.

<a id="invalid-characters-and-empty-values"></a>
## Caractères non valides et valeurs vides

Lorsque des placeholders sont utilisés pour créer des chemins ou des noms de fichiers, les valeurs contenant des caractères que Windows ne permet pas dans un nom de fichier sont nettoyées avant que la sortie soit enregistrée. La tâche rapporte la variable qui contient un caractère invalide.

Si une valeur telle que Révision ou une variable PDM est vide, le placeholder contribue à une chaîne vide. Inclure soigneusement les séparateurs afin qu'une valeur vide ne laisse pas un tiret de fuite indésirable ou un niveau de dossier supplémentaire.
