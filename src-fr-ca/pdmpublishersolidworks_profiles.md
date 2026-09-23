---
title: "Publier les profils de PDMPublisher pour SOLIDWORKS"
description: "Créer, sélectionner, renommer, exporter, importer, partager et supprimer des profils réutilisables Publier dans PDMPublisher pour SOLIDWORKS."
ms.date: 09/16/2026
ms.topic: how-to
bbsNom du produit: PDMPublisher pour SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Publier des profils

Un profil Publish est une combinaison réutilisable de paramètres Publish, Annotations et Conditions. Utilisez des profils pour passer entre les flux de travail d'exportation sans reconstruire ces sections à chaque fois.

Cette famille de profils appartient à **PDMPublisher for SOLIDWORKS**. La tâche PDM stocke ses paramètres dans une définition de tâche et n'utilise pas de profils supplémentaires. Save As New, Property Doctor et Clone Tree ont des familles de profils distinctes documentées avec ces commandes.

![Sélectionneur de profils et commandes de profils](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
Un profil est une configuration de publication nommée contenant Options, Annotations et Conditions. Sélectionnez un profil avant de publier.

<a id="select-a-profile"></a>
## Sélectionner un profil

Utilisez la liste de profils dans la page Paramètres Publier ou la flèche à côté de **Publish** dans le CommandManager. Le profil stocke Publier les paramètres, les annotations et les conditions.

![Nommé Publier les profils dans le menu CommandManager](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)
Le menu CommandManager liste chaque profil enregistré comme **Profile: _name_**. La sélection d'une entrée démarre le workflow Publier avec ce profil. Si **Show dialog before processing** est activé, examinez les options de sortie et de traitement résolues avant de confirmer l'emploi.

Donnez les noms de profils qui décrivent leur sortie, comme `Released PDF`, `Laser DXF` ou `PDF And Step`.

<a id="create-a-blank-profile"></a>
## Créer un profil vierge

Sélectionnez **New > New...** pour créer un profil que vous pouvez configurer dès le début. Définir son emplacement d'exportation, nom de fichier, formats de fichier, comportement de référence, annotations et conditions avant la publication.

Pour commencer par une configuration fournie au lieu d'un profil vide, consultez [Profils de publication intégrés](pdmpublishersolidworks_presets.md).

<a id="rename-a-profile"></a>
## Renommer un profil

1. Ouvrez **PDMPublisher > Settings > Publish** et sélectionnez le profil.
2. Sélectionnez **Edit**.
3. Changer le nom dans le champ de profil.
4. Sélectionnez **Save**.

Utilisez les boutons de page et de crayon à côté du sélecteur de profil pour créer ou renommer un profil, puis sélectionnez **OK** pour enregistrer les modifications.

Pendant que le nom du profil est en cours d'édition, d'autres commandes de profil ne sont pas disponibles jusqu'à ce que le nom soit enregistré.

<a id="move-profiles-between-computers"></a>
## Déplacer les profils entre les ordinateurs

Utilisez le transfert de fichier lorsque vous avez besoin d'une sauvegarde permanente ou souhaitez déplacer le profil complet sans utiliser un NIP.

<a id="export-a-profile-to-a-file"></a>
### Exporter un profil vers un fichier

1. Sélectionnez le profil.
2. Ouvrez **Export**, puis sélectionnez **Export to File...**.
3. Choisissez où enregistrer le fichier `.pdmpublisherprofile`.

Le fichier exporté conserve le profil complet, y compris ses options, annotations et conditions. Conservez une copie exportée avant de changer d'ordinateur ou d'apporter des modifications majeures à une configuration d'édition établie.

<a id="load-a-profile-from-a-file"></a>
### Charger un profil à partir d'un fichier

1. Ouvrez **Load From...**, puis sélectionnez **Load from File...**.
2. Sélectionnez un fichier `.pdmpublisherprofile`.
3. Confirmez le nom du profil si PDMPublisher trouve un profil local avec le même nom.

Le profil chargé est enregistré localement, appliqué immédiatement et devient le profil actif. Lorsque le nom existe déjà, vous pouvez remplacer le profil local, importer le profil sous un autre nom, ou annuler.

> [!NOTE]
> Un fichier de profil est une configuration enregistrée. Son chargement ne modifie pas le profil intégré utilisé comme point de départ.

<a id="share-profiles-using-a-pin"></a>
## Partager des profils utilisant un NIP

Partagez les options, annotations et conditions sélectionnées en utilisant un NIP à six chiffres qui reste disponible pendant 30 jours. Voir [Profils de partage utilisant un NIP](pdmpublishersolidworks_profile_sharing.md) pour le flux de travail de partage et de chargement, la sélection des sections, le comportement de conflit de noms et les conseils de sécurité.

<a id="delete-a-profile"></a>
## Supprimer un profil

Sélectionnez le profil et choisissez **Delete**. Supprimer un profil supprime la configuration enregistrée; il ne supprime pas les documents exportés.

> [!IMPORTANT]
> Confirmer qu'une autre copie n'est pas nécessaire avant de supprimer un profil. Exporter le profil d'abord quand il peut être nécessaire plus tard.

Pour déplacer chaque famille de profils PDMPublisher et chaque ressource partagée, utilisez [Transferer tous les paramètres] (pdmpublishersolidworks_settings.md#transfer-all-settings).
