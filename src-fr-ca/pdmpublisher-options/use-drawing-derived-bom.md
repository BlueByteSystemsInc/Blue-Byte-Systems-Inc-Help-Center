---
title: "Utiliser les options BOM-Derved PDMPublisher"
description: "Utilisez le premier BOM nommé sauvegardé sur un dessin d'assemblage pour déterminer les références, les configurations et les quantités PDMPublisher."
ms.date: 08/19/2026
ms.topic: reference
---

# Utiliser le modèle BOM

![Utilisez le réglage BOM dérivé du dessin](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-034-property-use-drawing-derived-bom.png)
Utilise le premier BOM dérivé (nommé) enregistré sur le dessin SOLIDWORKS associé au lieu de calculer le BOM directement à partir de l'assemblage.

> [!IMPORTANT]
> Cette option n'est disponible que dans **PDMPublisher for SOLIDWORKS PDM Professional**. Il n'est pas affiché dans le complément SOLIDWORKS.

Utilisez cette option lorsque le dessin BOM définit la structure d'assemblage et les quantités qui devraient conduire à la publication. Cela permet une tâche lancée sur un assemblage pour obtenir son BOM à partir du dessin de l'assemblage.

<a id="how-pdmpublisher-finds-the-drawing"></a>
## Comment PDMPublisher trouve le dessin

PDMPublisher localise d'abord le dessin associé à l'assemblage:

1. Si [Utiliser la recherche PDM pour localiser les dessins](use-pdm-search-to-locate-drawings.md) est activé, PDMPublisher recherche les parents **Where Used** immédiats de l'ensemble pour un dessin.
2. Si la recherche ne renvoie pas un dessin, ou si l'option de recherche est désactivée, PDMPublisher recherche dans le dossier d'assemblage un dessin portant le même nom de base.

Par exemple:

```text
Assembly: C:\PDMVault\Projects\Speaker\Speaker.sldasm
Drawing:  C:\PDMVault\Projects\Speaker\Speaker.slddrw
```

<a id="how-the-bom-is-selected"></a>
## Comment le BOM est sélectionné

Après avoir localisé le dessin, PDMPublisher demande les BOMs dérivés enregistrés sur ce dessin et utilise le premier BOM retourné par SOLIDWORKS PDM. Il charge la vue actuelle de ce BOM, puis continue avec la référence standard, la configuration, la quantité, et le traitement de l'état.

> [!WARNING]
> Si un dessin contient plusieurs BOMs dérivés, PDMPublisher utilise le premier retourné par PDM. Confirmer que le nom de BOM est le premier BOM disponible avant de compter sur cette option.

<a id="requirements"></a>
## Exigences

- La tâche doit traiter un ensemble SOLIDWORKS.
- L'assemblage doit avoir un dessin SOLIDWORKS associé en PDM.
- Le dessin doit contenir au moins un BOM dérivé (nommé) enregistré.
- Les lignes BOM doivent identifier les références et les configurations que PDM peut résoudre.
- Un BOM [Template] (template.md) calculé doit rester configuré pour le traitement de retour.

<a id="calculated-bom-fallback"></a>
## Défaut de la BOM calculé

Si PDMPublisher ne trouve pas le dessin, le dessin n'a pas de BOM utilisable, le BOM ne peut pas être chargé, ou le BOM ne contient aucune ligne utilisable, il revient à la BOM calculée configurée.

> [!IMPORTANT]
> Ne laissez pas **Template** vide. La tâche nécessite toujours un modèle BOM calculé valide lorsque le traitement BOM dérivé du dessin n'est pas disponible.

La [Méthode de calculation](calculation-method.md) sélectionnée s'applique lorsque ce retour BOM calculé est utilisé.

<a id="logs"></a>
## Registres

Les journaux de tâches préfixent ces messages avec `Drawing-derived BOM:`. Le journal enregistre :

- Comment le dessin a été localisé
- Des BOM ont été trouvés
- Lequel BOM a été sélectionné
- Combien de lignes ont été chargées
- Pourquoi a-t-on utilisé le retour BOM calculé, au besoin

Examinez ces entrées lorsque la liste de référence ou les quantités exportées ne correspondent pas au dessin prévu BOM.
