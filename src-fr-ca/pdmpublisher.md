---
title: "PDMPublisher.SOLIDWORKS PDM"
description: "Découvrez PDMPublisher pour SOLIDWORKS PDM Professional, y compris les formats d'exportation pris en charge, les fichiers d'entrée, les exigences, l'installation et la licence."
ms.date: 08/13/2026
ms.topic: overview
---

# PDMPublisher

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher_logo.png" width="200" height="200"/>

Merci de choisir [PDMPublisher](https://bluebyte.biz/product/pdmpublisher/)!

> [!NOTE]
> [Veuillez consulter la section FAQ pour obtenir des réponses aux questions les plus posées.] (pdmpublisherfaq.md)


PDMPublisher est un complément de tâches PDM SOLIDWORKS qui vous permet de sauvegarder vos fichiers SOLIDWORKS en utilisant des filtres avancés et fournit des capacités d'alimentation pour placer des propriétés/cartes de données personnalisées, des quantités BOM sur les PDF et les fusionner.

> [!IMPORTANT]
> Cette page décrit la tâche configurée dans l'outil SOLIDWORKS PDM Administration. Pour publier le document ouvert dans SOLIDWORKS en utilisant des profils réutilisables, voir [PDMPublisher pour SOLIDWORKS](pdmpublishersolidworks.md).

Voir [Tâche PDM vs Complément SOLIDWORKS](pdmpublisher-product-differences.md) pour une comparaison côte à côte. Les paramètres partagés utilisent les mêmes pages de référence dans les deux sections de documentation, avec des différences spécifiques à chaque page.

<a id="supported-extensions"></a>
## Extensions prises en charge
Avec la version des tâches PDM de PDMPublisher, vous pouvez exporter vers les formats suivants:

- PDF et MBD: `pdf`, `_3dpdf`
- Dessins: `dwg`, `dxf`
- eDrawings: `eprt`, `easm`, `edrw`
- CAO et échange : `step`, `igs`, `stl`, `x_t`, `x_b`, `sat`, `3dxml`, `3mf`, `ifc`, `u3d`, `wrl`, `vda`, `cgr`, `hcg`, `hsf`
- Web et images: `html`, `xaml`, `jpg`, `tif`, `bmp`, `ai`, `psd`

Le format `pdf` exporte des dessins SOLIDWORKS et convertit les documents Microsoft Word et Excel en PDF. La sélection `_3dpdf` exporte des pièces et des assemblages SOLIDWORKS en 3D PDF.

Les fichiers de dessin peuvent être exportés sous la forme de `dxf`. Pour créer des motifs plats prêts à la fabrication à partir de pièces en tôle, utilisez [pièces en tôle d'exportation à 1:1 motif plat DXF](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md).

Le format `html` nécessite eDrawings Professional. Voir [Formats de fichiers](pdmpublisher-options/file-formats.md) pour les noms de formats, le comportement du fichier source, les captures d'écran et les notes spécifiques à la version.

<a id="input-files"></a>
## Fichiers d'entrée
PDMPublisher peut traiter des fichiers de pièces individuels SOLIDWORKS (`.sldprt`), des fichiers de dessin (`.slddrw`) et des assemblages (`.sldasm`) avec toutes leurs références. Cela garantit que tous les composants nécessaires sont manipulés correctement pendant le traitement, que vous convertissiez un seul fichier ou une structure d'assemblage complète.

- Single Part (`.sldprt`): traite et convertit un fichier de partie aux extensions ci-dessus.
- Dessin unique (`.slddrw`): traite les dessins individuels.
- Assemblage avec Références (`.sldasm`): Comprend automatiquement toutes les parties et sous-ensembles référencés et leurs dessins.
- Microsoft Office Word et Excel: Documents de bureau vers PDF.


<a id="requirements"></a>
## Exigences

La version minimale prise en charge par PDMPublisher est SOLIDWORKS PDM Professional 2018 SP0.
> [!TIP]
> Nous vous recommandons vivement d'utiliser la dernière version de PDM Professional.


<a id="installation"></a>
## Installation

Pour installer le PDMPublisher, vous avez deux options :

1. [Utilisation de PDMDeploy](/src/updateaddinswithcdpdm.html):
Vous pouvez utiliser [PDMDeploy](/src/cdpdm.html) pour installer le complément directement depuis le cloud. C'est la méthode recommandée.

2. [Utilisation du fichier CEX](/src/installingpdmaddins.html):
Vous pouvez également télécharger le fichier `.cex` à partir de l'e-mail *order* que vous avez reçu après l'achat. Une fois téléchargé, importez le fichier `.cex` dans votre chambre forte via l'outil Administration pour terminer l'installation.
    > [!WARNING]
    > [Assurez-vous de débloquer le fichier téléchargé.](/src/pdmqa.html)

<a id="consuming-your-license-key"></a>
## Consommer votre clé de licence

- Le step exige que vous ayez PDMPublisher ajouté à votre coffre.
- Avant de pouvoir commencer à utiliser PDMPublisher, vous devez activer le produit en utilisant la clé de licence fournie dans l'e-mail *order*. Pour activer ou désactiver votre licence, veuillez suivre les instructions du [article](/src/licensespdmpublisher.html).

<a id="creating-your-first-task"></a>
## Création de votre première tâche
Veuillez suivre les instructions du [article](/src/propertiespagepdmpublisher.html).

<a id="theme-settings"></a>
## Paramètres du thème

PDMPublisher peut en option suivre le thème de l'application Windows light ou sombre. La synchronisation des thèmes est contrôlée à partir du menu complémentaire PDMPublisher dans l'outil d'administration PDM SOLIDWORKS. Voir [Paramètres thématiques](pdmpublisher-theme-settings.md).

<a id="support"></a>
## Appui
Pour plus d'assistance, veuillez nous contacter via la page [contact](https://bluebyte.biz/contact/) ou via notre support email support@bluebytesystemsinc.zohodesk.com.

> [!NOTE]
> Avant de parler, nous vous suggérons vivement de lire le contenu de cette page. Nous avons compilé ces sujets d'aide pour répondre aux questions fréquemment posées par nos clients.
