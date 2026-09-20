---
title: "Feuille de route des produits PDMPublisher"
description: "Consultez la feuille de route des produits PDMPublisher avec les caractéristiques prévues, les améliorations à venir et les priorités de développement futures par trimestre."
ms.date: 08/23/2026
ms.topic: conceptual
---

# Carte routière des produits PDMPublisher

Cette page présente les fonctionnalités et améliorations prévues pour PDMPublisher, le complément de tâches SOLIDWORKS PDM Professional et PDMPublisher pour SOLIDWORKS, le complément de tâches SOLIDWORKS.

La feuille de route est organisée par trimestre et offre une visibilité sur les éléments actuellement prévus pour les futures versions. Les délais sont des estimations et peuvent changer en fonction des priorités de développement, des commentaires des clients, des résultats des tests et des exigences de compatibilité PDM SOLIDWORKS ou SOLIDWORKS.

> [!NOTE]
> La présente feuille de route vise à communiquer l'orientation du produit. Les fonctionnalités énumérées ici sont planifiées mais ne sont pas garanties tant qu'elles ne sont pas officiellement publiées et incluses dans le journal des modifications PDMPublisher.

> [!TIP]
> Pour voir la liste des modifications mises en œuvre, cliquez sur [ici](/src/changeslog.html).

<a id="2026"></a>
## 2026 
---
<a id="2026-q2"></a>
### 2026 Q2
<a id="task-launch-file-selection-dialog"></a>
#### Boîte de dialogue de sélection des fichiers de lancement des tâches
Mise en œuvre

**Applies to: Tâche PDM**

- Ajout d'un dialogue de lancement interactif pour les tâches qui demandent aux utilisateurs de spécifier des fichiers à l'exécution.
- Ajout de l'importation de CSV, calcul automatique de référence, affichage des lignes de dessin, sélection du format de fichier spécifique au lancement et visibilité de l'emplacement d'exportation.

<a id="scheduled-items-task-page"></a>
#### Page de tâche des éléments prévus
Mise en œuvre

**Applies to: Tâche PDM**

- Ajout d'une page de configuration des éléments programmés pour les tâches programmées qui doivent traiter les fichiers configurés quand aucun fichier n'est passé par le déclencheur des tâches PDM. Voir détails [ici](/src/scheduleditems.html).

<a id="parasolid-binary-export"></a>
#### Exportation binaire Parasolid
Mise en œuvre

**Applies to: SOLIDWORKS add-in / Tâche PDM**

- Ajout de la prise en charge pour exporter des fichiers binaires Parasolid avec l'extension `x_b`.

<a id="details-page"></a>
#### Détails Page
Mise en œuvre

**Applies to: Tâche PDM**

- Ajout d'un onglet à la page des détails de la tâche décrivant les fichiers réussis. Voir détails [ici](/src/pdmpublisher_task_details.html).

<a id="multi-body-support"></a>
#### Soutien multi-corps
Mise en œuvre

**Applies to: SOLIDWORKS add-in / Tâche PDM**

- Soutien prévu pour l'exportation et la transformation de pièces multicorps, à l'exclusion des profilés plats en tôle.

Objectif : Fin du deuxième trimestre 2026
---
<a id="2026-q3"></a>
### 2026 Q3
---
<a id="presets-profiles"></a>
#### Préréglages / Profils
Mise en œuvre en 2026.08.08

**Applies to: SOLIDWORKS add-in**

Ajout de profils réutilisables et de préréglages de démarrage intégrés à PDMPublisher pour SOLIDWORKS.

Profils enregistrer les options, annotations et conditions pour un workflow de publication. Les utilisateurs peuvent créer, renommer, enregistrer, exporter, charger et supprimer des profils, ou créer un profil à partir d'un préréglage intégré.

La fonctionnalité publiée comprend:

- Enregistrer les paramètres d'exportation comme profils réutilisables
- Profils d'exportation et de chargement pour les flux communs d'exportation
- Création de profils pour différents départements, clients, projets ou packages de sortie
- Création de profils à partir des préréglages `DXF`, `PDF And Step` et `STEP` intégrés
- Réutiliser des paramètres de publication cohérents entre les utilisateurs et les postes de travail

Voir [Profiles](/src/pdmpublishersolidworks_profiles.html) et [Presets](/src/pdmpublishersolidworks_presets.html) pour les instructions de configuration.
---
<a id="profile-sharing-by-pin-code"></a>
#### Partage de profils par code PIN
Mise en œuvre en 2026.08.10

**Applies to: SOLIDWORKS add-in**

Ajout du partage de profil à courte durée par un NIP à six chiffres.

La fonctionnalité publiée comprend:

- Partage des sections Options, Annotations et Conditions sélectionnées
- Générer un NIP à six chiffres qui reste disponible pendant 30 jours
- Chargement d'un profil partagé par PIN et sélection des sections à appliquer
- Enregistrement local du profil téléchargé et traitement des noms de profils dupliqués

Voir [Share Profiles Using a PIN](/src/pdmpublishersolidworks_profile_sharing.html) pour les instructions et les conseils de sécurité.
---
<a id="2026-q4"></a>
### 2026 Q4
**Applies to: Tâche PDM**
- Ajout d'un support pour la planification du processus :
  - Répertoire sélectionné
  - Recherche préférée
---
<a id="2027"></a>
## 2027
---
<a id="2027-q1"></a>
### 2027 Q1
---
<a id="drawing-creator"></a>
#### Dessinateur
**Applies to: SOLIDWORKS Add-in**

Soutien prévu pour un dessin Créateur.

Cette fonctionnalité est destinée à aider à automatiser les flux de travail de création de dessin à partir des modèles SOLIDWORKS, réduisant ainsi le travail manuel répétitif lors de la production de dessins pour des pièces ou des assemblages.

Les domaines d'intervention prévus sont les suivants :

- Création de dessins à partir de modèles sélectionnés
- Application de modèles de dessin prédéfinis
- Insérer des vues standard du modèle
- Fixation du barème des feuilles de dessin
- Fixation des marges des feuilles de dessin
- Ajouter des notes au tableau d'annotation
- Mise à jour des notes de tableau d'annotation existantes
- Application des règles de formatage et de placement des notes standard
- Prise en charge des règles de configuration du dessin réutilisable
- Préparation de dessins pour l'exportation en aval par PDMPublisher

Objectif : Fin du premier trimestre 2027
