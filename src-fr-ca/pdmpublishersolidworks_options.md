---
title: "Publier les paramètres de PDMPublisher pour SOLIDWORKS"
description: "Trouvez la documentation ciblée pour chaque PDMPublisher pour la sortie et le traitement de SOLIDWORKS."
ms.date: 09/16/2026
ms.topic: how-to
---

# Publier les paramètres

Ouvrez **PDMPublisher > Settings > Publish** pour modifier les paramètres de sortie et de traitement stockés dans un [Profil de publication](pdmpublishersolidworks_profiles.md). Sélectionnez **PDMPublisher > Publish** pour configurer et exécuter le profil actif.

![Publicité actuelle des paramètres dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Faites défiler vers le bas pour configurer la fusion de PDF, les colonnes de table de contenu, les signets, les annotations, les conditions et les profils Publier.

![Pièce inférieure de la page de paramètres Publier](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
<a id="controls-on-the-publish-page"></a>
## Contrôles sur la page Publier

| Chapitre | Contrôle | Objet |
| --- | --- | --- |
| Produit | **Export location** | Construit le dossier de destination à partir du texte littéral et des détenteurs de place. **Browse** sélectionne un dossier. |
| Produit | **Locations by file format** | Dépasse la destination principale pour certains formats de sortie. |
| Produit | **Filename** | Constitue le nom du fichier de sortie. L'extension est fournie par le format sélectionné. |
| Produit | **File formats** | Sélectionne un ou plusieurs formats de sortie et expose les paramètres spécifiques au format lorsque supporté. |
| Produit | **Show dialog before processing** | Affiche la boîte de dialogue Publier afin que l'utilisateur puisse revoir le profil actif avant le début de la tâche. |
| Produit | **Open export location on completion** | Ouvre le dossier de destination après un travail réussi. |
| Feuilles de dessin | **Sheets to export** | Choisissez toutes les feuilles ou un autre mode de sélection de feuilles pris en charge. |
| Feuilles de dessin | **Sheet name** | Filtre les feuilles de dessin par un modèle de nom évalué. |
| Exportations | **Export references to file formats individually** | Publie les références d'assemblage supportées comme fichiers de sortie séparés. |
| Exportations | **Ignore sub-assembly children when condition checks fail** | S'arrête en dessous d'un sous-ensemble qui ne satisfait pas à ses conditions. |
| Exportations | **Convert multiple configurations** | Publie séparément les configurations sélectionnées. **Configuration filter** contrôle l'inclusion. |
| Exportations | **Archive all exported documents (.zip)** | Ajoute les fichiers produits à une archive ZIP. |
| Exportations | **Export sheet metal parts to 1:1 flat pattern DXF** | Produit des modèles plats prêts à la fabrication DXF. **Sheet metal settings** contrôle les couches et le comportement DXF. |
| Exportations | **Split bodies** | Les exportations supportaient séparément les corps solides. |
| PDF | **Merge exported PDFs into one master PDF** | Combine les PDF exportés en ordre de traitement. |
| PDF | **Add table of content to merged PDF** | Ajoute une page de contenu générée au PDF fusionné et permet ses contrôles connexes. |

Faites défiler le panneau droit pour atteindre les contrôles PDF restants, l'annotation, l'état et le profil. Les contrôles désactivés dépendent d'une autre option; par exemple, les paramètres de table de contenu restent indisponibles jusqu'à ce que la fusion de PDF et la génération de table de contenu soient activées.

Utilisez les pages ciblées sous **Publishing** dans le TOC:

| Catégorie | Pages |
| --- | --- |
| Profils | [Profils de publication](pdmpublishersolidworks_profiles.md), [Profils de publication intégrés](pdmpublishersolidworks_presets.md) et [Partager un profil de publication au moyen d'un NIP](pdmpublishersolidworks_profile_sharing.md) |
| Chemins et noms de sortie | [Endroit d'exportation](pdmpublisher-options/export-location.md), [Nom du fichier](pdmpublisher-options/filename.md), [Formats de fichiers](pdmpublisher-options/file-formats.md), [Endroit d'exportation ouvert](pdmpublishersolidworks-open-export-location.md) et [Archive Documents exportés](pdmpublisher-options/archive-all-exported-documents.md) |
| Assemblage et références | [Exporter les références individuellement](pdmpublisher-options/export-references-individually.md) et [Ignorer les enfants sous-assemblées](pdmpublisher-options/ignore-sub-assembly-children-when-condition-checks-fail.md) |
| Configurations | [Convertir plusieurs configurations](pdmpublisher-options/convert-multiple-configurations.md) |
| Feuilles de dessin et PDF | [Feuilles destinées à l'exportation](pdmpublisher-options/sheets-to-export.md), [Modèle du nom de la feuille](pdmpublisher-options/sheet-name-pattern.md), [Merge Exported PDF](pdmpublisher-options/merge-exported-pdfs.md), [Table des matières](pdmpublisher-options/add-table-of-content-to-merged-pdf.md), [Table des colonnes](pdmpublisher-options/table-columns.md) et [PDF Signets](pdmpublisher-options/pdf-bookmarks.md) |
| Produits manufacturés | [Sheet Metal Flat Pattern DXF](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md) et [Split Bodies](pdmpublisher-options/split-bodies.md) |
| Exécution | [Publier un travail](pdmpublishersolidworks-publish.md) et [Publier le flux de travail et les résultats](pdmpublishersolidworks_workflow.md) |

> [!NOTE]
> Les paramètres de la tâche seulement sont intentionnellement exclus de cette section complémentaire SOLIDWORKS. Voir [Tâche PDM vs Complément SOLIDWORKS](pdmpublisher-product-differences.md) lorsqu'un paramètre affiché dans l'outil d'administration PDM n'est pas présent ici.

Utilisez le [Placeholder Reference](pdmpublisherspecialvariable.md) lors de la construction de chemins de sortie, de noms de fichiers, de schémas de feuilles, d'annotations ou de conditions.
