---
title: Paramètres d’entreprise | PDMPublisher pour SOLIDWORKS
description: Publiez certains paramètres PDMPublisher pour une entreprise, contrôlez leur application et gérez les révisions de configuration en toute sécurité.
ms.date: 10/03/2026
ms.topic: how-to
---

# Paramètres d’entreprise

Les paramètres d’entreprise permettent à un administrateur de publier certains paramètres de PDMPublisher pour SOLIDWORKS une seule fois et de les offrir à tous les utilisateurs titulaires d’une licence activée portant le même nom d’entreprise. Les utilisateurs n’ont pas besoin d’un compte Web ni du mot de passe administrateur pour les télécharger.

Ouvrez **PDMPublisher > Settings > Company Settings**.

![Page Company Settings avec les commandes de téléchargement, d’utilisation et d’administration](/images/pdmpublisher/solidworks/company-settings-20261003.png)

> [!IMPORTANT]
> Une licence activée et non expirée qui contient un nom d’entreprise est requise. L’association est faite selon ce nom. Les identifiants des connecteurs, les clés de licence, les identifiants SQL, la configuration du coffre-fort et les autres secrets propres à l’ordinateur ne sont pas partagés.

## Utiliser les paramètres d’entreprise

- Sélectionnez **Download company settings** pour récupérer immédiatement la dernière révision. Enregistrez votre travail et fermez les autres fenêtres PDMPublisher, car le téléchargement recharge la boîte de dialogue Settings et les commandes de publication.
- Avec **Let users choose**, cochez **Use company settings** pour appliquer les valeurs gérées; décochez-la pour revenir aux valeurs locales enregistrées.
- Avec **Required**, la case est verrouillée et les pages gérées sont en lecture seule.
- Si le service est indisponible, le cache local protégé demeure utilisable. PDMPublisher vérifie aussi une mise à jour une fois au démarrage; il n’effectue pas d’interrogation continue.

## Publier comme administrateur

Le mot de passe administrateur est créé séparément pour le nom exact de l’entreprise inscrit dans la licence. Sélectionnez **Company administrator**, entrez ce mot de passe, puis sélectionnez **Unlock**.

![Boîte de dialogue du mot de passe de l’administrateur d’entreprise](/images/pdmpublisher/solidworks/company-settings-admin-unlock-20261003.png)

Après la vérification :

1. Choisissez **Off**, **Let users choose** ou **Required**.
2. Sélectionnez les groupes à publier : **Advanced Formulas**, **BOM Manager**, **Clone Tree**, **ERP Sync**, **Languages**, **PDM**, **Property Doctor**, **Publish** et **Save As New**.
3. Enregistrez les modifications dans la boîte de dialogue Settings normale.
4. Revenez à Company Settings et sélectionnez **Publish company settings**.

![Page administrateur déverrouillée avec le mode et les groupes de paramètres](/images/pdmpublisher/solidworks/company-settings-admin-publish-20261003.png)

Seuls les groupes cochés sont gérés. Les macros, connecteurs ERP, bibliothèques de matériaux, sources SQL externes et autres ressources référencées doivent quand même être installés ou configurés sur chaque ordinateur.

## Modifier et republier

Le déverrouillage commence avec les valeurs locales existantes; il ne les remplace pas par les valeurs d’entreprise. Le mot de passe est gardé uniquement en mémoire pendant la session. Enregistrez les modifications normalement, puis publiez-les dans Company Settings.

La publication, le téléchargement, la fin de la session, un changement de licence ou d’entreprise, ou le redémarrage de SOLIDWORKS met fin à la session et oublie le mot de passe. Terminer sans publier conserve les modifications seulement sur cet ordinateur.

## Conflits de révision

Chaque publication utilise la dernière révision téléchargée. Si une révision plus récente existe déjà, PDMPublisher arrête l’envoi. Téléchargez-la, révisez-la et publiez de nouveau.

Utilisez **Overwrite newer company settings** seulement pour remplacer intentionnellement cette révision. Le mot de passe est vérifié et une confirmation est requise. Seule la vérification de révision périmée est contournée; la validation, la mise à jour atomique, l’historique et la conservation des paramètres de versions plus récentes demeurent actifs.

Les données sont transférées par HTTPS et le cache local est chiffré pour l’utilisateur Windows actuel.
