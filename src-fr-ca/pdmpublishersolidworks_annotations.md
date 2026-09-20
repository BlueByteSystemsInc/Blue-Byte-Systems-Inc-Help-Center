---
title: "Annotations: PDMPublisher pour SOLIDWORKS"
description: "Trouvez la documentation ciblée pour le transfert de contenu d'annotation, d'apparence, de placement et de paramètres."
ms.date: 09/15/2026
ms.topic: how-to
---

# Annotations d'édition

Les annotations placent le texte, les valeurs de propriété SOLIDWORKS, les filigranes ou les codes QR sur les feuilles de dessin exportées et les PDF. Le [profil](pdmpublishersolidworks_profiles.md) sélectionné stocke la collection d'annotation.

Sélectionnez **PDMPublisher > Annotations** pour modifier le profil actif Publier, ou utilisez la flèche de commande pour ouvrir un profil nommé. Utilisez les pages ciblées sous **Publishing Annotations** dans le TOC :

![Choisissez le profil Publier dont vous souhaitez modifier les annotations](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/annotations-profile-menu-20260908.png)
![Éditeur d'annotation et ses commandes](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/annotations-editor-controls-20260908.png)
<a id="annotation-editor-controls"></a>
## Contrôles de l'éditeur d'annotation

| Contrôle | Ce qu'il fait |
| --- | --- |
| **Add annotation** | Ajoute une nouvelle ligne d'annotation au profil sélectionné. |
| Texte de l'annotation | Définit le texte littéral et les placeholders évalués lors de la publication. |
| Police et taille | Sélectionne la taille du type et du point. |
| **Bold** / **Italic** | S'applique à l'accent mis sur le texte de l'annotation. |
| **Watermark** | Renforce l'annotation comme filigrane. |
| **Show annotation** | Comprend l'annotation pendant l'exportation. Effacer pour conserver la définition sans la publier. |
| **QR code** | Renforce la valeur d'annotation évaluée en tant que code QR. |
| **Width (mm)** | Définit le code QR ou la largeur de l'annotation en millimètres. |
| **Drawing background** | Contrôle l'arrière-plan du dessin utilisé par l'aperçu de positionnement. |
| **Show placeholders** | Affiche les noms de lieux dans l'aperçu au lieu des valeurs évaluées. |
| **Copy X,Y** | Copie la position de la note de dessin SOLIDWORKS sélectionnée dans les champs X et Y de l'annotation. |
| **Position X / Y (%)** | Positionne l'annotation en pourcentage de la largeur et de la hauteur de la feuille. |
| **Sheets** | Choisissez les feuilles de dessin qui reçoivent l'annotation. |
| Noms séparés par des virgules | Limite une sélection de feuilles nommées aux noms de feuilles séparées par des virgules. |
| **OK** / **Cancel** | Enregistre le profil change ou ferme l'éditeur sans les enregistrer. |

La zone de dessin est un aperçu de positionnement. L'ajout ou le déplacement d'un élément n'ajoute pas de note SOLIDWORKS au dessin source.

| Catégorie | Pages |
| --- | --- |
| Contenu | [Ajouter l'annotation](pdmpublisher-annotations/add-annotation.md), [Texte de l'annotation](pdmpublisher-annotations/annotation-text.md) et [titulaires de la requête SQL](pdmpublisher-annotations/sql-query-placeholders.md) |
| Apparence | [Formulation du texte](pdmpublisher-annotations/text-formatting.md), [Watermark](pdmpublisher-annotations/watermark.md) et [Active](pdmpublisher-annotations/active.md) |
| Placement | [Position](pdmpublisher-annotations/position.md) et [feuilles](pdmpublisher-annotations/sheets.md) |
| Transfert de paramètres | [Annotations d'importation et d'exportation](pdmpublishersolidworks-annotation-files.md) |

> [!NOTE]
> Les contrôles d'annotation sont partagés avec la tâche PDM, mais le complément SOLIDWORKS obtient des propriétés du document actif et enregistre des annotations dans le profil Publier sélectionné.
