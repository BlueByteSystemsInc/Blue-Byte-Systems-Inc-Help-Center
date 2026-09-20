---
title: Feuille de route du produit PDMPublisher | Orientation actuelle et fonctionnalités planifiées
description: Consultez l'état actuel de PDMPublisher, les jalons déjà livrés et les travaux planifiés pour la tâche PDM et le complément SOLIDWORKS.
ms.date: 09/19/2026
ms.topic: conceptual
---

# Feuille de route du produit PDMPublisher

PDMPublisher est offert sous forme de deux produits avec des versions indépendantes : **PDMPublisher for SOLIDWORKS**, le complément interactif de SOLIDWORKS, et **PDMPublisher PDM Task**, la tâche d'automatisation configurée dans SOLIDWORKS PDM Professional.

Cette page distingue les fonctionnalités disponibles maintenant des travaux encore planifiés. Les dates et les priorités peuvent changer selon le développement, les essais, les commentaires des clients et les exigences de compatibilité de SOLIDWORKS.

> [!NOTE]
> Une fonctionnalité planifiée n'est pas garantie avant sa publication. Le [journal des modifications de PDMPublisher](changeslog.md) constitue la référence officielle pour les versions et les changements livrés.

## État actuel du produit

### PDMPublisher for SOLIDWORKS

Le complément actuel utilise l'onglet **PDMPublisher** du CommandManager et le menu **Tools > PDMPublisher**. Son volet des tâches SOLIDWORKS affiche maintenant la documentation et n'héberge plus les commandes de publication.

Les flux de travail disponibles comprennent :

- [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md) et [Clone Tree](pdmpublishersolidworks_smart-pack.md).
- [BOM Manager](pdmpublishersolidworks_bom-manager.md) pour les colonnes, la structure, le regroupement et l'exclusion de composants de la nomenclature.
- [Publish](pdmpublishersolidworks-publish.md) avec les annotations, les conditions, les feuilles de mise en plan, le traitement des configurations et les journaux.
- Des profils propres à chaque commande ainsi que le transfert complet des paramètres par fichier ou par NIP à six chiffres.
- Des ressources partagées pour PDM, les langues, la recherche de mises en plan, les sources SQL externes et les formules avancées.
- Une boîte de dialogue unifiée et consultable pour les [paramètres](pdmpublishersolidworks_settings.md), ainsi qu'un [volet d'aide](pdmpublishersolidworks_help-pane.md) intégré.

Consultez [PDMPublisher for SOLIDWORKS](pdmpublishersolidworks.md) pour connaître l'ensemble des fonctionnalités actuelles.

### PDMPublisher PDM Task

La tâche PDM actuelle prend en charge :

- La publication automatisée par les actions de tâche de SOLIDWORKS PDM Professional et les exécutions planifiées.
- La sélection interactive des fichiers au lancement et les [éléments planifiés](scheduleditems.md) configurés.
- Les sorties multiformats, les annotations, les conditions, le filtrage des configurations, la sélection des feuilles, la fusion de PDF et les sorties de fabrication.
- Le traitement d'une nomenclature dérivée d'une mise en plan, avec repli vers la nomenclature calculée configurée.
- La publication de la dernière révision PDM enregistrée et de ses références sauvegardées.
- Des paramètres explicites d'exportation eDrawings pour la mesure et les propriétés des documents ou des composants.
- Les journaux d'activité, les détails de tâche, le mappage des variables PDM, les références de sortie et la gestion des doublons.

Consultez [PDMPublisher pour PDM Professional](pdmpublisher.md) pour connaître l'ensemble des fonctionnalités actuelles.

## Jalons de la feuille de route déjà livrés

Les éléments suivants étaient auparavant planifiés et sont maintenant disponibles. Ils sont conservés ici comme historique, et non comme engagements futurs.

### 2026 T2

- `2026.06.21` - [Sélection des fichiers au lancement](scheduleditems.md) pour la tâche PDM.
- `2026.06.20` - [Page Éléments planifiés](scheduleditems.md) pour la tâche PDM.
- `2026.06.20` - Exportation binaire Parasolid (`x_b`) pour la tâche PDM et le complément SOLIDWORKS.
- `2026.05.30` - [Détails de tâche et journal des sorties](pdmpublisher_task_details.md) pour la tâche PDM.
- `2026.05.30` - Traitement des pièces multicorps pour la tâche PDM et le complément SOLIDWORKS.

### 2026 T3

- `2026.09.08` - [Utiliser uniquement la dernière révision](pdmpublisher-options/get-latest-revision-only.md) pour la tâche PDM.
- `2026.08.10` - [Partage de profils par NIP](pdmpublishersolidworks_profile_sharing.md) pour le complément SOLIDWORKS.
- `2026.08.09` - [Nomenclature dérivée d'une mise en plan](pdmpublisher-options/use-drawing-derived-bom.md) pour la tâche PDM.
- `2026.08.08` - [Profils Publish réutilisables](pdmpublishersolidworks_profiles.md) et [préréglages](pdmpublishersolidworks_presets.md) pour le complément SOLIDWORKS.

## Travaux planifiés

### 2026 T4 : sources supplémentaires pour les tâches planifiées

**S'applique à : Tâche PDM**

Sources planifiées :

- Un répertoire sélectionné.
- Une recherche favorite enregistrée.

### 2027 T1 : Drawing Creator

**S'applique à : Complément SOLIDWORKS**

Drawing Creator vise à automatiser la création répétitive de mises en plan à partir de pièces et d'assemblages SOLIDWORKS. La cible actuelle est la fin du premier trimestre de 2027.

Axes de travail planifiés :

- Créer des mises en plan à partir de modèles sélectionnés.
- Appliquer des modèles de mise en plan prédéfinis.
- Insérer des vues de modèle standard.
- Définir l'échelle et les marges de la feuille.
- Ajouter ou mettre à jour les notes d'une table d'annotations.
- Appliquer des règles réutilisables de mise en forme et de positionnement des notes.
- Préparer les mises en plan générées pour les flux de travail PDMPublisher en aval.

## Fonctionnalités planifiées sans échéancier engagé

Le complément SOLIDWORKS actuel réserve des emplacements d'interface aux fonctionnalités suivantes. Leurs commandes ou pages de paramètres sont des espaces réservés et ne sont pas disponibles pour les flux de production.

- [Translate](pdmpublishersolidworks_translate.md) vise à traduire les propriétés, les noms de fonctions et d'autres textes des documents SOLIDWORKS.
- [ERP Sync](pdmpublishersolidworks_erp-sync.md) vise à synchroniser certaines données SOLIDWORKS et PDM avec les systèmes ERP.
- [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) vise à planifier les tâches de publication PDMPublisher. Cette fonctionnalité est distincte de l'exécution d'une macro offerte dans Save As New.
