---
title: "Exporter des pièces métalliques en tôle vers les options DXF=1"
description: "Exporter les motifs plats en tôle en fichiers 1:1 DXF."
ms.date: 08/13/2026
ms.topic: reference
---

# Exporter des pièces en tôle à 1:1 motif plat DXF

![Exporter la tôle à plat en PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox7_Export_sheet_metal_parts_to_1_1_flat_pattern_DXF_Light_100.png)
Exporte des pièces en tôle sous forme de fichiers DXF à motif plat 1:1.

> [!NOTE]
> Ce paramètre et sa boîte de dialogue de paramètres de patron plat sont partagés par les **tâche PDM** et **SOLIDWORKS add-in**.

![Dialogue actuel de configuration des motifs plats en tôle](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Sheet_metal_Default_Light_100.png)
<a id="sheet-metal-flat-pattern-settings"></a>
## Réglages plats en tôle métallique

Sélectionnez **Flat Pattern Settings** à côté de l'option principale pour contrôler quelles entités PDMPublisher écrit sur le DXF.

| Option | Ce qu'il fait |
| --- | --- |
| **Export flat-pattern geometry** | Exporte le profilé extérieur aplati, les découpes internes et d'autres bords plats visibles. C'est le point de départ normal pour une DXF de fabrication et est sélectionné par défaut. |
| **Include hidden edges** | Ajoute des bords qui sont cachés dans le motif plat. Laissez cela effacé pour la plupart des flux de travail laser, plasma ou jet d'eau à moins que le processus en aval ait besoin spécifiquement de géométrie cachée. |
| **Export bend lines** | Ajoute les lignes de courbure du motif plat SOLIDWORKS afin que la fabrication puisse identifier où se produisent les courbures. |
| **Include sketches** | Comprend les entités de croquis visibles de la pièce en tôle du DXF exporté. Utilisez ceci pour fabriquer des marques ou d'autres géométries de croquis qui doivent accompagner le profil. |
| **Merge coplanar faces** | Merges faces adjacentes qui se trouvent sur le même plan, en supprimant les lignes inutiles entre ces régions coplanaires. |
| **Export library features** | Comprend la géométrie créée par les fonctionnalités de la bibliothèque SOLIDWORKS. |
| **Export forming tools** | Comprend la géométrie représentant les caractéristiques de l'outil de formage telles que les louvers, les lances, les embosses ou des caractéristiques similaires formées. Le résultat exact dépend également des paramètres du document en feuilles SOLIDWORKS de la pièce. |
| **Export bounding box** | Ajoute la boîte rectangulaire autour du motif plat. Cela peut être utile pour estimer la taille du stock ou la nidification. |
| **Only export the inner diameter of countersink holes (Hole feature)** | Pour les contre-puces créées avec l'assistant SOLIDWORKS Hole, exporte le diamètre du trou intérieur et omet le contour plus grand du contre-puce. Cela peut fournir une géométrie de coupe plus propre lorsque le contre-puce est créé dans une opération ultérieure. |
| **Export flat pattern bodies separately (Multi-body sheet metal parts)** | Réservé pour l'exportation de chaque corps en tôle dans un fichier séparé. Cette fonctionnalité est marquée **not implemented yet** dans la boîte de dialogue actuelle et ne doit pas être utilisée. |
| **Append `-FlatPattern` to the flat pattern DXF file name** | Ajoute `-FlatPattern` avant `.dxf`. Activez-le lorsqu'un dessin et sa pièce en tôle associée peuvent exporter vers DXF, empêchant ainsi une sortie d'écraser l'autre. |

> [!TIP]
> Pour une fabrication typique DXF, commencez par **Export flat-pattern geometry** et **Export bend lines**. Ajoutez des croquis, des outils de formation ou la boîte de délimitation seulement lorsque votre processus de fabrication consomme ces entités.

<a id="model-views-to-export"></a>
## Vues du modèle à exporter

La section inférieure de la boîte de dialogue vous permet d'exporter les vues du modèle SOLIDWORKS vers DXF. Les choix prédéfinis sont les suivants:

| Affichage | Direction représentée |
| --- | --- |
| `*Front` | Vue avant |
| `*Back` | Vue arrière |
| `*Top` | Vue en haut |
| `*Bottom` | Vue de fond |
| `*Left` | Vue à gauche |
| `*Right` | Vue droite |
| `*Isometric` | Vue isométrique |

Sélectionnez la case à cocher à côté de chaque vue que vous voulez exporter.

> [!IMPORTANT]
> La sélection d'une ou plusieurs vues de modèle change l'exportation d'une exportation à profil plat de tôle à une exportation à annotation SOLIDWORKS. Si votre objectif est un profil déployé prêt à la fabrication, laissez toutes les vues du modèle effacées et utilisez les paramètres à profil plat ci-dessus.

<a id="add-a-custom-view"></a>
### Ajouter une vue personnalisée

Vous pouvez également exporter une vue nommée enregistrée dans la partie SOLIDWORKS :

1. Saisissez le nom exact de la vue SOLIDWORKS dans la zone de texte.
2. Sélectionnez la case à cocher à côté de la zone de texte si la nouvelle vue doit être activée immédiatement.
3. Sélectionnez **+** pour ajouter la vue à la liste.
4. Pour supprimer une vue personnalisée, saisissez son nom et sélectionnez **-**.

Les noms d'affichage personnalisés doivent correspondre aux noms stockés dans le modèle SOLIDWORKS. Les vues standard utilisent leurs noms d'API SOLIDWORKS, y compris le `*` leader.

<a id="recommended-configurations"></a>
## Configurations recommandées

| Objectif | Sélection recommandée |
| --- | --- |
| Profil de coupe basique | **Export flat-pattern geometry** |
| Découpe et flexion | **Export flat-pattern geometry** et **Export bend lines** |
| Inclure les marques de fabrication | Ajouter **Include sketches** |
| Afficher les fonctionnalités formées | Ajouter **Export forming tools** |
| Indiquer la taille du stock requise | Ajouter **Export bounding box** |
| Évitez une collision de nom de fichier DXF | Activer **Append `-FlatPattern` to the flat pattern DXF file name** |
| Exporter une vue de modèle projetée au lieu du modèle déplié | Sélectionnez l'entrée requise sous **Model views to export** |

> [!NOTE]
> Le format de fichier DXF n'a pas besoin d'être sélectionné séparément pour cette fonction plane.

Les huit premières commandes géométriques et la commande de la boîte de délimitation correspondent aux options d'exportation SOLIDWORKS en tôle DXF. Pour plus de renseignements techniques, voir la [documentation de l'API SOLIDWORKS `IExportToDWG2`] (https://help.solidworks.com/2026/English/api/sldworksapi/SolidWorks.Interop.sldworks~SolidWorks.Interop.sldworks.IPartDoc~IExportToDWG2.html).
