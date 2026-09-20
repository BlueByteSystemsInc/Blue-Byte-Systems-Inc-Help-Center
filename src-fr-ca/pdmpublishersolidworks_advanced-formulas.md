---
title: "Formules avancées : PDMPublisher pour SOLIDWORKS"
description: "Créez des expressions nommées réutilisables pour les noms de fichiers, dossiers et propriétés PDMPublisher."
ms.date: 09/16/2026
ms.topic: how-to
---

# Formules avancées

Ouvrez **PDMPublisher > Settings > Advanced Formulas** pour maintenir les expressions nommées partagées par les menus de fichiers, dossiers et propriétés pris en charge.

![Paramètres avancés des formules](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)
Sélectionnez **Add** ou **Edit** pour ouvrir l'éditeur de formule et construire l'expression nommée.

![Éditeur de formule avancé](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Formulas/Formulas_Formula_editor_Default_Light_100.png)
| Commande | Comportement |
| --- | --- |
| **Add** | Crée une formule nommée. |
| **Edit** | Ouvre la formule sélectionnée pour les modifications. |
| **Delete** | Supprime la formule sélectionnée après confirmation. Les profils existants qui s'y réfèrent devraient être examinés. |

Donnez à chaque formule un nom qui décrit son résultat, comme `Released filename` ou `Customer output folder`. Construire et tester des formules avec des documents contenant des valeurs, des valeurs manquantes, des valeurs spécifiques à la configuration et des caractères qui sont invalides dans les noms de fichiers Windows.

Les formules sont des définitions et non des résultats copiés. PDMPublisher évalue une formule dans le contexte du document et de la configuration en cours de traitement. Si la formule utilise une propriété ou une source externe, confirmez que la ressource est disponible sur chaque ordinateur qui importe les paramètres.

Les valeurs par défaut, les sources externes et les formules sont enregistrées séparément des autres paramètres d'utilité.

> [!TIP]
> Exportez tous les paramètres avant de faire un changement de formule large. Une formule partagée peut affecter plusieurs profils et flux de travail utilitaires.
