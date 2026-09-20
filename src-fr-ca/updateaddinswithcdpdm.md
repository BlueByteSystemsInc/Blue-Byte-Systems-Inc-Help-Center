---
title: "Mise à jour des systèmes d'octets bleus PDM add-ins avec PDMDeploy"
description: "Cet article porte sur la mise à jour de tout complément SOLIDWORKS PDM que vous achetez chez Blue Byte Systems Inc en utilisant le complément PDMDeploy."
ms.date: 07/04/2026
ms.topic: conceptual
---

> [!IMPORTANT]
> CDPPM est maintenant PDMDeploy. En commençant par PDMDeploy V31, le complément dispose d'une interface sombre repensée et de codes d'activation. Des captures d'écran plus anciennes et des tutoriels vidéo faisant référence au CDPPM montrent l'interface précédente.

# Mise à jour des systèmes Blue Byte PDM add-ins avec PDMDeploy


<video src="https://bluebyte.biz/wp-content/docsvideos/cdpdm.mp4" autoplay muted controls style="width: 100%; border-radius: 12px;"></video>

> [!NOTE]
> Cette vidéo a été enregistrée avec une ancienne version de PDMDeploy (CDPDM) et montre l'interface précédente. Le flux de travail est le même. Consultez les captures d'écran ci-dessous pour l'interface actuelle (V31 et suivantes).


Cet article porte sur la mise à jour de tout complément SOLIDWORKS PDM que vous achetez chez Blue Byte Systems Inc en utilisant le complément PDMDeploy. Cet outil rationalise le processus de livraison de code pour les clients PDM SOLIDWORKS en utilisant la plateforme de livraison continue PDMDeploy. Il vous permet d'accéder et de mettre à jour efficacement votre add-ins acheté et toutes leurs versions.

<a id="installation-steps"></a>
### Installation Step :

<div class="bbs-highlight-panel">

<a id="download-pdmdeploy"></a>
### Télécharger PDMDeploy

<a class="bbs-download-button" href="/pdmdeploy/PDMDeploy.cex">Télécharger PDMDeploy</a>

<a id="public-activation-code"></a>
### Code d'activation publique

<code class="bbs-activation-code">E2A50448-9F15-42D9-B2F3-290409E81F94</code>

</div>

1. Pour nos produits standard, utilisez le code d'activation public ci-dessus. Si nous avons développé une solution personnalisée pour vous, utilisez plutôt le code d'activation privé de votre email de bienvenue. Pour installer PDMDeploy après le téléchargement, veuillez suivre les instructions de [ceci](/src/cdpdm.html).

2. Débloquer le fichier téléchargé : Faites un clic droit sur `PDMDeploy.cex` et sélectionnez Propriétés. Dans la boîte de dialogue Propriétés, cochez l'option Débloquer et cliquez sur OK.

3. Ouvrez l'outil d'administration : Connectez-vous dans votre coffre-fort avec un utilisateur PDM qui a la permission d'éditer Add-Ins.

4. Importer le complément :
    
    - Allez dans Fichier > Ouvrez et naviguez vers `PDMDeploy.cex`.
    
    - Cliquez sur OK pour ouvrir le fichier CEX.
    
    - Faites glisser et déposez l'icône du complément PDMDeploy sur le nœud add-ins dans l'outil d'administration. Cela ajoutera le complément dans le nœud add-ins.

5. Chargez votre configuration & #160;:
    
    - Faites un clic droit sur le complément PDMDeploy et cliquez sur *Load Customer Configuration (Code d'activation ou fichier)...*

![menu PDMDeploy](https://pdmpublisher.com/help/images/pdmdeploy31_menu.png)
    - Entrez le code d'activation de votre email de bienvenue et cliquez sur *Activer*.

![Configuration de charge PDMDeploy](https://pdmpublisher.com/help/images/pdmdeploy31_loadconfig.png)
    - Sinon, cliquez sur *Parcourir pour le fichier .cdg...* si vous avez reçu un fichier de configuration client à la place. Si le fichier a été téléchargé depuis Internet, débloquez-le d'abord (cliquez-droit sur le fichier, Propriétés, cochez Débloquer, OK).

    - Vous serez invité avec un message qui se lit "Configuration chargée avec succès!"

6. Faites un clic droit sur PDMDeploy dans le nœud add-ins et cliquez sur *Mettre à jour AddIns...*

7. Vérifiez le complément que vous voulez installer dans la liste, sélectionnez la version dont vous avez besoin dans le menu déroulant de la version du serveur (le plus récent est présélectionné), puis cliquez sur *Installer sélectionné*.

8. Confirmer les boîtes de dialogue suivantes pour redémarrer PDM et l'outil d'administration.


<a id="updating-an-add-in"></a>
### Mise à jour d'un complément:

1. Faites un clic droit sur le complément PDMDeploy (sous Add-ins dans l'outil Administration) et cliquez sur *Mettre à jour AddIns...*:

![menu PDMDeploy](https://pdmpublisher.com/help/images/pdmdeploy31_menu.png)
2. La fenêtre PDMDeploy s'ouvre immédiatement, sans dialogue d'attente. La barre d'état en bas lit d'abord votre add-ins installé depuis le coffre-fort, puis charge le add-ins disponible depuis le serveur :

![Gestionnaire complémentaire PDMDeploy](https://pdmpublisher.com/help/images/pdmdeploy31_manager.png)
3. La colonne État indique la position de chaque ajout : *Non installé*, *Mise à jour disponible* ou *Mise à jour*. La version déroulante du serveur présélectionne la version la plus récente. Choisissez un ancien seulement s'il est conseillé par le soutien.

4. Cochez le(s) complément(s) pour mettre à jour (la case en-tête sélectionne tout) et cliquez sur *Installer sélectionné*. La barre d'état indique quel complément est téléchargé et installé. Le processus pourrait prendre quelques instants.

5. Vous serez invité à la fin à redémarrer votre session PDM. Cela permet à votre client local d'obtenir la nouvelle version de le complément installé. *C'est facultatif* mais fortement recommandé pour les tâches qui sont déclenchées à partir de File Explorer.

> [!TIP]
> Si PDMDeploy n'a pas encore été configuré, la fenêtre affiche un panneau d'activation au lieu de la liste complément. Entrez votre code d'activation ou naviguez dans votre fichier `.cdg`.

<a id="warnings"></a>
### Avertissements

> [!WARNING]
> PDMDeploy n'autorise pas la nouvelle tâche add-ins dans la configuration *Task Host Configuration*. Vous devez le faire manuellement :
> ![Configuration de l’hôte de tâches](https://pdmpublisher.com/help/images/taskhostconfiguration.png)
> [!WARNING]
> Tous les ordinateurs clients utilisant les tâches de le complément doivent être redémarrés pour utiliser la nouvelle version.
