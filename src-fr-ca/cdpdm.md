---
title: "PDMDeploy-PDMPublisher-XQZZX-SOLIDWORKS PDM"
description: "Comment utiliser PDMDeploy pour installer PDMPublisher, PDM2Excel et d'autres plugins Blue Byte Systems SOLIDWORKS PDM."
ms.date: 07/04/2026
ms.topic: conceptual
---

> [!IMPORTANT]
> CDPPM est maintenant PDMDeploy. En commençant par PDMDeploy V31, le complément dispose d'une interface sombre repensée et de codes d'activation. Des captures d'écran plus anciennes et des tutoriels vidéo faisant référence au CDPPM montrent l'interface précédente.

# Livraison continue

<video src="https://bluebyte.biz/wp-content/docsvideos/cdpdm.mp4" autoplay muted controls style="width: 100%; border-radius: 12px;"></video>

> [!NOTE]
> Cette vidéo a été enregistrée avec une ancienne version de PDMDeploy (CDPDM) et montre l'interface précédente. Le flux de travail est le même. Consultez les captures d'écran ci-dessous pour l'interface actuelle (V31 et suivantes).

PDMDeploy est un complément PDM de Blue Byte Systems Inc. qui facilite le déploiement de PDM et de la tâche add-ins développée pour vous.

L'complément communique avec nos serveurs et permet l'installation de toutes les versions de votre PDM add-ins.

<a id="advantages"></a>
## Avantages

Les avantages de l'utilisation de PDMDeploy sont nombreux:

- Pas besoin de demander ou de télécharger des fichiers CEX.
- Possibilité de basculer entre les versions.
- Le processus conventionnel d'installation et de mise à jour de add-ins est très fastidieux et prend beaucoup de temps.

<a id="where-to-find-pdmdeploy"></a>
## Où trouver PDMDeploy

<a id="public-download-blue-byte-systems-products"></a>
### Téléchargement public (produits Blue Byte Systems)

PDMDeploy est accessible au public:

<div class="bbs-highlight-panel">

<a id="download-pdmdeploy"></a>
### Télécharger PDMDeploy

<a class="bbs-download-button" href="/pdmdeploy/PDMDeploy.cex">Télécharger PDMDeploy</a>

<a id="public-activation-code"></a>
### Code d'activation publique

<code class="bbs-activation-code">E2A50448-9F15-42D9-B2F3-290409E81F94</code>

</div>

Ce code d'activation donne accès uniquement aux produits Blue Byte Systems (PDM2Excel, PDMPublisher, PDMShell, tâche add-ins, etc.). Nos produits nécessitent une licence valide pour fonctionner. L'installation d'un complément ne l'active pas.

<a id="if-we-have-developed-a-custom-solution-for-you"></a>
### Si nous avons développé une solution personnalisée pour vous:

- Utilisez le code d'activation privé de votre email de bienvenue au lieu du code public. Il donne accès à votre add-ins personnalisé et à nos produits standard si vous en possédez.
- Vous pouvez aussi avoir reçu un fichier de configuration client (`.cdg`). Ça marche de la même façon.

> [!NOTE]
> Si vous avez acheté un de nos produits PDM et que nous avons développé une solution personnalisée pour vous, veuillez nous contacter afin que nous puissions générer un code d'activation qui vous permet d'accéder à tous vos actifs avec un seul code.

<a id="how-to-install"></a>
## Comment installer

- Localisez `PDMDeploy.cex`.
- Dans Windows 11, 10 et 7, les téléchargements d'Internet sont bloqués. Faites un clic droit sur le fichier CEX, allez dans Propriétés, cochez Débloquer, puis cliquez sur Appliquer et OK.
- Ouvrez l'outil Administration.
- Connectez-vous au coffre. Veuillez vous assurer d'utiliser un utilisateur PDM avec la permission d'Edit Add-Ins.
- Dans l'outil Administration, cliquez sur Fichier > Ouvrir et naviguer dans le fichier `PDMDeploy.cex`.
- Faites glisser et déposez le complément depuis la fenêtre CEX sur le nœud Add-ins et attendez quelques instants pour que PDMDeploy soit installé.

![Installation PDMDeploy](https://pdmpublisher.com/help/images/cdpdm.png)
<a id="configuration"></a>
## Configuration

PDMDeploy doit connaître les actifs de l'entreprise auxquels vous avez accès. Il y a deux façons de le configurer. Le code d'activation est le code recommandé.

- Faites un clic droit sur le complément PDMDeploy et cliquez sur *Load Customer Configuration (Code d'activation ou fichier)...*

![menu PDMDeploy](https://pdmpublisher.com/help/images/pdmdeploy31_menu.png)
- La boîte de dialogue de configuration s'ouvre :

![ Configuration de chargement PDMDeploy](https://pdmpublisher.com/help/images/pdmdeploy31_loadconfig.png)
<a id="option-1-activation-code-recommended"></a>
### Option 1: Code d'activation (recommandé)

- Tapez le code d'activation de votre email de bienvenue dans la boîte de texte et cliquez sur *Activer*. PDMDeploy récupère votre configuration en toute sécurité depuis nos serveurs. Pas de traitement de fichiers, pas de déblocage.

<a id="option-2-customer-configuration-file"></a>
### Option 2: Fichier de configuration du client

- Cliquez sur *Parcourir pour le fichier .cdg...* et sélectionnez votre fichier de configuration client.
- Si le fichier a été téléchargé depuis Internet, débloquez-le d'abord : faites un clic droit sur le fichier, sélectionnez Propriétés, cochez Débloquer et cliquez sur OK.

Dans les deux cas, vous verrez un message de confirmation une fois la configuration chargée.

> [!NOTE]
> Vous pouvez également configurer manuellement PDMDeploy via la boîte de dialogue *Paramètres...* en entrant les identifiants vous-même. Contactez le support pour obtenir de l'aide avec cette option.

> [!TIP]
> Si vous ouvrez *Update AddIns...* avant de configurer PDMDeploy, le gestionnaire complément affiche directement le panneau d'activation. Vous pouvez entrer le code d'activation ou naviguer dans le fichier `.cdg`.

<a id="installingupdating-add-ins"></a>
## Installation/mise à jour de Add-ins

- Faites un clic droit sur PDMDeploy sous Add-ins dans l'outil Administration et cliquez sur *Mettre à jour AddIns...*
- La fenêtre PDMDeploy s'ouvre immédiatement et charge votre add-ins en arrière-plan. La barre d'état en bas montre la progression : d'abord votre add-ins installé localement est lu depuis le coffre-fort, puis le add-ins disponible est récupéré du serveur.

![PDMDeploy complément Manager](https://pdmpublisher.com/help/images/pdmdeploy31_manager.png)
La fenêtre affiche une ligne par complément :

- Statut : *Non installé*, *Mise à jour disponible* ou *Mise à jour* en un coup d'oeil.
- Version locale : la version actuellement installée dans votre chambre forte.
- Version serveur : une liste déroulante avec chaque version disponible sur le serveur. La nouvelle version est présélectionnée.

Pour installer ou mettre à jour :

1. Vérifiez le(s) complément(s) que vous souhaitez installer. La case à cocher dans la ligne d'en-tête sélectionne tout add-ins en même temps.
2. Choisissez la ou les versions dans la colonne de version du serveur si vous avez besoin d'autre chose que la dernière.
3. Cliquez sur *Installer sélectionné*.

PDMDeploy vous demandera si vous voulez redémarrer PDM. Cela peut être nécessaire après chaque mise à jour.

> [!NOTE]
> Veuillez laisser quelques instants après avoir cliqué sur *Installer sélectionné*. Chaque complément est téléchargé, débloqué et ajouté au coffre. Cette opération inclut la suppression de certaines boîtes de dialogue PDM. La barre d'état indique le complément en cours d'installation.
