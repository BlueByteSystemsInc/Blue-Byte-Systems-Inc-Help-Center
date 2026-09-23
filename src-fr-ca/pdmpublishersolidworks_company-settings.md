---
title: Paramètres d’entreprise | PDMPublisher pour SOLIDWORKS
description: Utilisez les paramètres PDMPublisher de l’entreprise ou publiez certains paramètres comme administrateur.
ms.date: 10/03/2026
ms.topic: how-to
---

# Paramètres d’entreprise

Les paramètres d’entreprise permettent à un administrateur de publier certains paramètres de PDMPublisher pour SOLIDWORKS une seule fois et de les offrir à tous les utilisateurs titulaires d’une licence activée portant le même nom d’entreprise. Les utilisateurs n’ont pas besoin d’un compte Web ni du mot de passe administrateur pour les télécharger.

Ouvrez **PDMPublisher > Settings > Company Settings**.

![Page Company Settings avec les commandes de téléchargement, d’utilisation et d’administration](/images/pdmpublisher/solidworks/company-settings-20261003.png)

Une licence activée qui contient le nom de votre entreprise est requise.

## Utiliser les paramètres d’entreprise

- Sélectionnez **Download company settings** pour obtenir les derniers paramètres publiés par votre administrateur. Enregistrez d’abord votre travail.
- Avec **Let users choose**, cochez **Use company settings** pour appliquer les valeurs gérées; décochez-la pour revenir aux valeurs locales enregistrées.
- Avec **Required**, la case est verrouillée et les pages gérées sont en lecture seule.

## Publier comme administrateur

Sélectionnez **Company administrator**, entrez votre mot de passe administrateur, puis sélectionnez **Unlock**.

![Boîte de dialogue du mot de passe de l’administrateur d’entreprise](/images/pdmpublisher/solidworks/company-settings-admin-unlock-20261003.png)

Après la vérification :

1. Choisissez **Off**, **Let users choose** ou **Required**.
2. Sélectionnez les groupes à publier : **Advanced Formulas**, **BOM Manager**, **Clone Tree**, **ERP Sync**, **Languages**, **PDM**, **Property Doctor**, **Publish** et **Save As New**.
3. Enregistrez les modifications dans la boîte de dialogue Settings normale.
4. Revenez à Company Settings et sélectionnez **Publish company settings**.

![Page administrateur déverrouillée avec le mode et les groupes de paramètres](/images/pdmpublisher/solidworks/company-settings-admin-publish-20261003.png)

Seuls les groupes cochés sont partagés. Les groupes non cochés continuent d’utiliser les paramètres locaux de chaque utilisateur.

## Modifier et republier

Déverrouillez les paramètres avec **Company administrator**. Modifiez et enregistrez vos paramètres, revenez à Company Settings, puis sélectionnez **Publish company settings**. Si vous terminez sans publier, les modifications demeurent seulement sur votre ordinateur.

## Conflits de révision

Si PDMPublisher indique que de nouveaux paramètres d’entreprise sont disponibles, téléchargez-les avant de publier de nouveau.

Utilisez **Overwrite newer company settings** seulement si vous voulez intentionnellement remplacer les paramètres plus récents. Lisez attentivement la confirmation avant de continuer.
