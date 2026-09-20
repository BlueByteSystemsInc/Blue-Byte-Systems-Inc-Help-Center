---
title: "Partager les profils en utilisant un PIN-PDMPublisher pour SOLIDWORKS"
description: "Partager la sélection de PDMPublisher pour les paramètres de profil SOLIDWORKS avec un autre utilisateur en utilisant un NIP à six chiffres expirant."
ms.date: 08/23/2026
ms.topic: how-to
bbsNom du produit: PDMPublisher pour SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Partager des profils utilisant un NIP

PDMPublisher pour SOLIDWORKS peut partager un profil en utilisant un NIP à six chiffres. Un autre utilisateur PDMPublisher pour SOLIDWORKS peut saisir ce code PIN pour télécharger, enregistrer et appliquer les paramètres partagés.

Cette fonctionnalité appartient à **PDMPublisher for SOLIDWORKS**. La tâche PDM Professional stocke les paramètres dans sa définition de tâche et n'utilise pas les NIP de profil.

> [!IMPORTANT]
> Les deux utilisateurs ont besoin d'une connexion Internet. Un NIP reste disponible pendant 30 jours.

<a id="what-a-shared-profile-can-include"></a>
## Ce qu'un profil partagé peut inclure

Avant de télécharger ou d'appliquer un profil, PDMPublisher vous permet de sélectionner ces sections :

- **Options**
- **Annotations**
- **Conditions**

Toutes les sections disponibles sont sélectionnées par défaut. Sélectionnez au moins une section pour continuer.

Le bénéficiaire ne peut appliquer que les sections incluses dont il a besoin. Les paramètres des sections qui ne sont pas sélectionnées restent inchangés dans le profil actuel du destinataire.

<a id="share-a-profile"></a>
## Partager un profil

1. Sélectionnez le profil que vous souhaitez partager.
2. Ouvrez **Export**, puis sélectionnez **Share using PIN...**.

![Profile Boîte de dialogue partagée avec un NIP à six chiffres expirant](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/profile-shared-pin.png)
3. Sélectionnez les sections Options, Annotations et Conditions à inclure.
4. Sélectionnez **Share** et attendez que le téléchargement soit terminé.
5. Dans la boîte de dialogue **Profile Shared**, sélectionnez **Copy PIN** et envoyez le code PIN au destinataire.

La boîte de dialogue affiche l'expiration du NIP à l'heure locale de l'expéditeur.

<a id="load-a-shared-profile"></a>
## Charger un profil partagé

1. Ouvrez **Load From...**, puis sélectionnez **Load using PIN...**.

![Load Profile en utilisant la boîte de dialogue PIN](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/profile-load-pin.png)
2. Entrez le NIP à six chiffres fourni par l'expéditeur.

3. Sélectionnez **Load Profile**.
4. Sélectionnez les sections disponibles à appliquer, puis sélectionnez **Load Selected**.

PDMPublisher télécharge le profil, l'enregistre localement, applique les sections sélectionnées et en fait le profil actif. Les autres sections actuelles demeurent inchangées.

Si un profil local a déjà le nom du profil partagé, PDMPublisher demande s'il faut le remplacer, l'importer sous un autre nom ou annuler l'importation.

<a id="security-and-expiration"></a>
## Sécurité et expiration

> [!WARNING]
> Quiconque a un NIP actif peut télécharger le profil partagé. Utilisez le partage PIN pour un échange de configuration pratique et de courte durée, et non pour des informations confidentielles.

Examiner les sections sélectionnées avant de les partager. Les profils peuvent contenir des chemins d'exportation, des noms de fichiers, des annotations, des conditions, des noms de propriétés PDM et des paramètres d'annotation SQL. Ne partagez pas de mots de passe, de chaînes de connexion privées ou d'autres secrets.

Un NIP expiré ou invalide ne peut pas être chargé. Demandez à l'expéditeur de partager à nouveau le profil pour recevoir un nouveau NIP.

Pour le transfert de fichiers au lieu du partage de NIP, voir [Déplacer les profils entre ordinateurs] (pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
