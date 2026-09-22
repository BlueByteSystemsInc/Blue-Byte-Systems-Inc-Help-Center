---
title: "Installer PDMPublisher pour SOLIDWORKS"
description: "Téléchargez, débloquez, installez et activez l'extension PDMPublisher pour SOLIDWORKS."
ms.date: 09/22/2026
ms.topic: how-to
---

# Installer PDMPublisher pour SOLIDWORKS

Utilisez l'installateur PDMPublisher MSI pour installer le complément de bureau SOLIDWORKS. SOLIDWORKS doit être fermé pendant que vous installez ou mettez à jour le complément.

<p align="center">
<a class="bbs-download-button" href="https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher">Télécharger PDMPublisher pour SOLIDWORKS</a>
</p>

<a id="before-you-begin"></a>
## Avant de commencer

- Sauvegardez votre travail et fermez chaque fenêtre SOLIDWORKS en cours d'exécution.
- Assurez-vous que votre compte Windows peut installer des applications. Votre organisation peut exiger l'approbation de l'administrateur.
- Téléchargez l'installateur PDMPublisher MSI sur l'ordinateur local. Ne l'exécutez pas directement à partir d'une pièce jointe, d'une archive ZIP ou d'un aperçu réseau.

> [!IMPORTANT]
> Gardez SOLIDWORKS fermé jusqu'à la fin de l'assistant d'installation. Un processus SOLIDWORKS ouvert peut empêcher l'installateur de remplacer ou d'enregistrer correctement les fichiers supplémentaires.

<a id="unblock-the-downloaded-msi"></a>
## Débloquer le MSI téléchargé

Windows peut bloquer les fichiers téléchargés depuis Internet. Débloquez le MSI avant de le lancer :

1. Ouvrez **File Explorer** et localisez le fichier `.msi` téléchargé.
2. Faites un clic droit sur le MSI et sélectionnez **Properties**.
3. Dans l'onglet **General**, sélectionnez **Unblock** sous **Security**.
4. Sélectionnez **Apply**, puis sélectionnez **OK**.

![Boîte de dialogue Propriétés de Windows montrant la case Unblock du MSI PDMPublisher téléchargé](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/installer-unblock-20260922.png)

> [!NOTE]
> Si l'option **Unblock** n'est pas affichée, Windows n'a pas marqué le fichier comme bloqué et vous pouvez continuer avec l'installation.

<a id="run-the-installation-wizard"></a>
## Lancez l'assistant d'installation

1. Confirmez que SOLIDWORKS est fermé.
2. Double-cliquez sur le fichier MSI débloqué.
3. Approuvez l'invite de sécurité ou d'administrateur de Windows si l'on apparaît.
4. Suivez l'assistant d'installation dans chaque page.
5. Sélectionnez **Install** lorsque demandé.
6. Attendez que l'installateur termine, puis sélectionnez **Finish**.

<a id="enable-pdmpublisher-in-solidworks"></a>
## Activer PDMPublisher dans SOLIDWORKS

1. Démarrez SOLIDWORKS.
2. Sélectionnez **Tools > Add-Ins**.
3. Expand **Partner Solution Add-Ins** si le groupe s'effondre.
4. Trouvez **PDMPublisher (SOLIDWORKS)**.
5. Sélectionnez la case à cocher dans **Active Add-ins** pour la charger dans la session SOLIDWORKS actuelle.
6. Sélectionnez la case à cocher dans **Start Up** pour charger PDMPublisher automatiquement chaque fois que SOLIDWORKS démarre.
7. Sélectionnez **OK**.

![PDMPublisher pour SOLIDWORKS activé sous Solution Partner Add-Ins](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)
Après les chargements supplémentaires, ouvrez l'onglet **PDMPublisher** CommandManager. Utilisez **Settings** pour configurer les profils et les ressources partagées; le volet des tâches affiche maintenant la documentation du produit.

<a id="update-pdmpublisher"></a>
## Mettre à jour PDMPublisher

Pour installer une version plus récente, fermez SOLIDWORKS, téléchargez le MSI actuel, débloquez-le et exécutez à nouveau l'assistant d'installation. Réouvrir SOLIDWORKS seulement après la fin de la mise à jour.

<a id="next-steps"></a>
## Suivant Step

- [Ouvrir le PDMPublisher pour un aperçu SOLIDWORKS](pdmpublishersolidworks.md).
- [Créer et gérer des profils](pdmpublishersolidworks_profiles.md).
- [Gérer votre licence] (licensespdmpublisher.md).
- [Visionnez les démos vidéo] (pdmpublisherdemo.md).

Si PDMPublisher n'apparaît pas dans **Tools > Add-Ins**, fermez SOLIDWORKS et lancez à nouveau l'installateur. Pour plus d'aide, contactez `support@bluebytesystemsinc.zohodesk.com` et incluez votre version SOLIDWORKS et une capture d'écran de la boîte de dialogue Add-Ins.
