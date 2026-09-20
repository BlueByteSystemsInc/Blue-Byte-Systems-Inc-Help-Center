---
title: "Formats de fichiers Options PDMPublisher"
description: "Sélectionnez les formats de fichiers exportés par la tâche PDM PDMPublisher ou le complément SOLIDWORKS."
ms.date: 08/31/2026
ms.topic: reference
---

# Formats de fichiers

![Définition des formats de fichiers dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Sélectionne les formats de sortie créés lors de la publication. Les deux produits peuvent générer plusieurs formats en un seul travail.

> [!NOTE]
> Ce réglage est partagé par les **tâche PDM** et **SOLIDWORKS add-in**. La tâche peut traiter les fichiers PDM sélectionnés, y compris les documents Office pris en charge. L'ajout exporte le document SOLIDWORKS actuellement ouvert et ses références résolues.

![Formulaires de fichiers déroulants dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Dropdown13_Light_100.png)
<a id="format-names-and-icons"></a>
## Noms et icônes du format

Le sélecteur affiche un nom de format descriptif, son extension de sortie et une icône de type fichier. L'icône est fournie par Windows et peut varier avec les applications et les associations de fichiers installées sur l'ordinateur. Il ne s'agit que d'un identifiant visuel et ne modifie pas l'exportation.

<a id="supported-outputs"></a>
## Produits soutenus

PDMPublisher peut exporter des fichiers SOLIDWORKS vers les formats indiqués dans la liste **File Formats**. La tâche PDM prend également en charge l'exportation de documents Microsoft Word et Excel vers PDF lorsque ces documents Office sont traités par la tâche.

Le sélecteur complet est organisé comme suit:

| Groupe | Formats |
| --- | --- |
| PDF et MBD | Adobe PDF (`pdf`), 3D PDF - MBD (`_3dpdf`) |
| Dessins | DWG (`dwg`), DXF (`dxf`) |
| [eDrawings](edrawings-export-settings.md) | eDrawings Part (`eprt`), eDrawings Assemblage (`easm`), eDrawings Dessin (`edrw`) |
| CAO et échange | STEP (`step`), IGES (`igs`), STL (`stl`), Parasolid Texte (`x_t`), Parasolid Binary (`x_b`), ACIS (`sat`), 3D XML (`3dxml`), 3MF (`3mf`), IFC (`ifc`), Universal 3D (`u3d`), VRML (`wrl`), VDAFS (`vda`), CATIA Graphics (`cgr`), HCG (`hcg`), HOOPS HSF (`hsf`) |
| Web et images | HTML (`html`), Microsoft XAML (`xaml`), JPEG (`jpg`), TIF (`tif`), Bitmap (`bmp`), Adobe Illustrator (`ai`), Adobe Photoshop (`psd`) |

<a id="added-in-version-20260805"></a>
## Ajouté dans la version 2026.08.05

La version `2026.08.05` ajoute ces choix de sortie:

- ACIS (`sat`)
- 3D XML (`3dxml`)
- VRML (`wrl`)
- VDAFS (`vda`)
- Graphiques CATIA (`cgr`)
- HCG (`hcg`)
- HOOPS HSF (`hsf`)
- Microsoft XAML (`xaml`)
- JPEG (`jpg`)
- TIF (`tif`)
- Adobe Illustrator (`ai`)
- Adobe Photoshop (`psd`)

> [!NOTE]
> PDMPublisher supprime les formats qui ne sont pas valides pour le type de document source. Certains formats dépendent également de la version SOLIDWORKS et des capacités d'exportation installées sur l'ordinateur. La tâche utilise sa version SOLIDWORKS configurée; le complément utilise la version en cours d'exécution.

<a id="edrawings-output"></a>
## Sortie eDrawings

PDMPublisher PDM Tâche `2026.08.12` corrige les préférences SOLIDWORKS appliquées lors de la création de fichiers `.eprt`, `.easm` et `.edrw`. Voir [eDrawings Export Settings](edrawings-export-settings.md) pour connaître les préférences et les exigences de l'hôte de tâches concernées.

Cette correction s'applique uniquement à la tâche PDM. Il ne change pas PDMPublisher pour SOLIDWORKS.

Si SOLIDWORKS prend en charge un format d'exportation qui n'est pas actuellement listé ici, contactez Blue Byte Systems et demandez le support pour ce format :

- [Contactez Blue Byte Systems](https://bluebyte.biz/contact/)
- [Aide courriel](mailto:support@bluebytesystemsinc.zohodesk.com)

<a id="pdf-output"></a>
## Sortie PDF

Lorsque `PDF` est sélectionné pour une pièce ou un ensemble SOLIDWORKS, PDMPublisher recherche un dessin portant le même nom dans le même dossier.

Par exemple, si la tâche s'exécute :

`C:\PDMVault\Projects\1001\Bracket.SLDPRT`

PDMPublisher vérifie :

`C:\PDMVault\Projects\1001\Bracket.SLDDRW`

Si le dessin correspondant est trouvé, PDMPublisher ouvre le dessin et imprime/exporte le dessin vers PDF. Cela permet d'exécuter une tâche à partir d'un modèle tout en produisant le dessin que les utilisateurs PDF attendent.

> [!NOTE]
> Dans la tâche PDM, [Utilisez la recherche PDM pour localiser les dessins](use-pdm-search-to-locate-drawings.md) peut localiser un dessin qui n'est pas dans le même dossier. Cette option de recherche n'est pas disponible dans le complément SOLIDWORKS.

<a id="dxf-output"></a>
## Sortie DXF

Lorsque `DXF` est sélectionné pour un dessin, PDMPublisher exporte le dessin sous la forme de DXF.

> [!WARNING]
> Dessin La sortie DXF n'est pas la même qu'un motif plat en tôle DXF. Si vous voulez un motif plat 1:1 DXF à partir de pièces en tôle, activez [Exporter des pièces en tôle à 1:1 Profil plat DXF](export-sheet-metal-flat-pattern-dxf.md) à la place dans la section Exportation.

<a id="flat-pattern-dxf"></a>
## Modèle plat DXF

L'exportation à motif plat DXF est contrôlée par sa propre option au bas de la section Exportation : [Exporter les pièces en tôle à 1:1 à motif plat DXF](export-sheet-metal-flat-pattern-dxf.md).

Vous n'avez pas besoin de sélectionner `DXF` dans **File Formats** pour cette fonction de motif plat à exécuter.
