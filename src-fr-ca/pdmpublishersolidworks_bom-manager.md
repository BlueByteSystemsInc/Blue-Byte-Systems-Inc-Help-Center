---
title: "BOM Manager-PDMPublisher pour SOLIDWORKS"
description: "Configurez les colonnes BOM, le type d'affichage, le regroupement, les exclusions de composants et l'exportation Excel dans PDMPublisher pour SOLIDWORKS."
ms.date: 10/04/2026
ms.topic: how-to
---

# BOM Manager

Ouvrez **PDMPublisher > BOM Manager** pour examiner et travailler avec la facture des matériaux pour l'assemblage actif.

![Fenêtre principale BOM Manager montrant un ensemble dentelé BOM](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Main_window_Default_Light_100.png)
La fenêtre principale fournit les sélecteurs de type BOM et de template de colonnes, les colonnes de propriété, les contrôles de recherche et de filtrage, le regroupement, les exclusions de composants, l'importation et l'exportation Excel et **Apply**. Sélectionnez le bouton de vitesse pour ouvrir les paramètres BOM Manager persistants décrits ci-dessous.

Ouvrir **PDMPublisher > Settings > BOM Manager** sous **Bill Of Materials**.

![Paramètres BOM Manager avec le modèle de classeur Excel et l'option de vignette](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/bom-manager-settings-20261004.png)
BOM Manager définit la structure par défaut utilisée lorsque PDMPublisher produit ou affiche des informations sur la facture de matériel.

| Réglage | Ce qu'il contrôle |
| --- | --- |
| **Default column template** | Sélectionne l'ensemble et l'ordre enregistrés des colonnes BOM. |
| **Default BOM display type** | Sélectionne la structure de SOLIDWORKS BOM, telle qu'une hiérarchie dentelée. |
| **Group by** | Groupe les lignes par texte, propriétés ou supports. Laisser vide pour un résultat plat non groupé. |
| **Ignore Components** | Ouvre l'éditeur d'état utilisé pour omettre les composants correspondants du BOM. |
| **Workbook template** | Sélectionne un modèle `.xlsx` ou `.xltx` facultatif pour les exportations Excel. Entrez le chemin ou sélectionnez **Browse...** à côté du champ. |
| **Include thumbnail** | Inclut la vignette disponible du modèle dans le classeur exporté. |

<a id="configure-the-defaults"></a>
## Configurer les valeurs par défaut

1. Sélectionnez un **Default column template**.
2. Sélectionnez le **Default BOM display type** approprié à la structure d'assemblage.
3. Si les lignes doivent être groupées, entrez une expression **Group by** et utilisez son menu placeholder pour insérer des valeurs de document.
4. Sélectionnez **Ignore Components** pour définir les exclusions. Choisissez si une condition ou toutes les conditions doivent correspondre, puis ajoutez les règles de propriété requises.
5. Pour les exportations Excel, entrez un **Workbook template** facultatif ou sélectionnez **Browse...** pour en choisir un.
6. Activez **Include thumbnail** lorsque les lignes BOM exportées doivent inclure les aperçus des modèles.
7. Sélectionnez **OK** pour enregistrer les paramètres.

![Ignorer l'éditeur d'état des composants pour BOM Manager](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Ignore_components_Default_Light_100.png)
Les conditions d'exclusion affectent l'adhésion au BOM; elles ne suppriment ni ne suppriment les composants de l'ensemble SOLIDWORKS.
