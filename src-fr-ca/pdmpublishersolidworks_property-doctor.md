---
title: "Property Doctor.PDMPublisher pour SOLIDWORKS"
description: "Examiner, modifier, valider, importer, exporter et automatiser les propriétés personnalisées SOLIDWORKS sur un document et ses références."
ms.date: 09/15/2026
ms.topic: how-to
---

# Property Doctor

Property Doctor présente le document actif, les configurations, les listes de découpe, les dessins et les références dans une grille de propriétés modifiables.

![Property Doctor montrant les propriétés du document à travers un assemblage et ses références](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/PropertyDoctor/PropertyDoctor_Main_window_Default_Light_100.png)
Ouvrez **PDMPublisher > Settings > Property Doctor** pour configurer les colonnes par défaut, le chargement des vignettes et les profils d'action réutilisables.

![Paramètres Property Doctor et commandes de profil](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Property_Doctor_Default_Light_100.png)
<a id="edit-properties"></a>
## Modifier les propriétés

1. Ouvrez une pièce, un assemblage ou un dessin sauvegardé.
2. Sélectionnez **PDMPublisher > Property Doctor**.
3. Ajouter ou afficher les colonnes de propriété dont vous avez besoin.
4. Modifier les valeurs directement, utiliser un menu de valeurs ou ouvrir une formule avancée.
5. Examiner les indicateurs **Added**, **Changed** et **Removed**.
6. Sélectionnez **Apply changes** pour écrire les modifications en attente, ou **Discard changes** pour restaurer les valeurs originales.

Les cellules grises sont des propriétés manquantes. **Clear** conserve le nom de propriété et écrit une valeur vide; **Delete Property** supprime la propriété. Les cellules de formule et de valeur liée sont évaluées pour la ligne de document où elles sont appliquées.

<a id="find-filter-and-fill"></a>
## Trouver, filtrer et remplir

- Rechercher les noms de documents, les configurations, les noms de propriétés et les valeurs.
- Ouvrir la recherche et le remplacement pour les remplacements en texte clair, sensible à la casse ou à l'expression régulière.
- Pièces filtrantes, assemblages, dessins, propriétés personnalisées, propriétés de configuration, listes de découpes et valeurs vides.
- Faites glisser la poignée de cellule verte verticalement pour remplir les lignes ou horizontalement pour copier dans des colonnes visibles.
- Utilisez **Columns** pour afficher, masquer, ajouter et organiser les colonnes de propriété.
- Importer un Property Doctor CSV exporté, examiner les valeurs en attente, puis les appliquer.

<a id="document-commands"></a>
## Documenter les commandes

Le menu document peut charger un document dans SOLIDWORKS, rouvrir les références pour l'édition, résoudre les références légères, vérifier les fichiers entrants ou sortants, obtenir les derniers, sélectionner l'élément, zoomer vers lui, ou l'isoler. La disponibilité dépend de l'état du document et de l'accès PDM.

<a id="profiles-and-column-templates"></a>
## Profils et modèles de colonnes

Un profil Property Doctor est un ensemble ordonné d'actions de propriété. Une action peut définir une valeur, supprimer des propriétés ou réinitialiser des valeurs de propriété pour des champs et conditions sélectionnés. Prévisualiser un profil pour inspecter ses changements dans la grille avant de sélectionner **Apply**.

Les modèles de colonnes contrôlent quelles propriétés apparaissent. Dans **Settings > Property Doctor**, choisissez le modèle par défaut, modifiez ses colonnes, gérez les profils ou masquez les vignettes pour un chargement plus rapide.

Les actions vont de haut en bas. Les actions de jumelage ultérieures peuvent remplacer les valeurs produites par des actions antérieures. Enregistrer un profil stocke l'automatisation; il ne change aucun document avant que le profil soit prévisualisé et appliqué.

<a id="shared-resources"></a>
## Ressources partagées

Property Doctor peut utiliser des sources externes nommées [Formules avancées](pdmpublishersolidworks_settings.md#settings-pages), SQL Server et dessiner des dossiers de recherche configurés sous **Shared Resources** dans Paramètres. Le transfert complet de paramètres inclut ces définitions, mais n'inclut jamais les identifiants SQL.
