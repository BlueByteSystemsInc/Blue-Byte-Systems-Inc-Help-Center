---
title: "Options de modèle PDMPublisher"
description: "Sélectionnez le modèle BOM utilisé pour l'édition quantitative."
ms.date: 08/10/2026
ms.topic: reference
---

# Modèle

![Détermination du template](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-030-property-template.png)
Sélectionne le modèle ou la mise en page de BOM utilisé pour l'édition quantitative.

![Déclin temporaire](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-dropdown-002-template.png)
L'icône de mise en page BOM est un identifiant visuel. Le nom de modèle sélectionné détermine la disposition de PDM BOM PDMPublisher.

Le modèle BOM sélectionné est utilisé lorsque PDMPublisher doit calculer les références d'assemblage, les configurations et les quantités.

Lorsque [Utiliser BOM Drawing-Derved](use-drawing-derived-bom.md) est activé, PDMPublisher essaie d'abord de lire le premier BOM nommé sauvegardé sur le dessin associé. Ce modèle reste nécessaire parce que PDMPublisher l'utilise pour calculer le BOM lorsque le dessin ou un BOM dérivé utilisable n'est pas disponible.

Cela importe le plus lorsque [Exporter des références aux formats de fichiers individuellement] (export-references-individually.md) est activé.

Utiliser [Méthode de calculation](calculation-method.md) pour contrôler si le calcul de la référence et de la quantité utilise des références construites ou les dernières références.

<a id="required-bom-columns"></a>
## Colonnes BOM requises

Le modèle BOM doit inclure les valeurs nécessaires pour identifier chaque fichier référencé et calculer la quantité.

![Configuration du modèle BOM](https://pdmpublisher.com/help/images/bomsetting.png)
| Valeur requise | Pourquoi c'est nécessaire |
|---|---|
| `<Name>` | Identifie le fichier ou le composant référencé. |
| `<Configuration>` / nom de la configuration | Indique la configuration référencée. |
| Quantité / `<RefCount>` | Fournit la quantité utilisée pour les exportations de matériel de référence. |

![colonnes de mise en page BOM](https://pdmpublisher.com/help/images/bom.png)
> [!IMPORTANT]
> Si le modèle BOM sélectionné manque la colonne nom, configuration ou quantité, PDMPublisher peut ne pas être en mesure de calculer correctement les références de montage.
