---
title: "Tâche PDM vs Complément SOLIDWORKS"
description: "Comparez PDMPublisher pour SOLIDWORKS PDM Professional avec PDMPublisher pour SOLIDWORKS et choisissez la documentation correcte."
ms.date: 09/16/2026
ms.topic: overview
---

# Tâche PDM vs Complément SOLIDWORKS

PDMPublisher est disponible en deux workflows. Ils partagent le même moteur d'édition et de nombreux paramètres d'exportation, mais ils commencent des travaux et obtiennent des informations de fichiers différemment.

![Commandes de PDMPublisher pour SOLIDWORKS dans le CommandManager SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-publisher-macros-20260930.png)
| | PDMPublisher pour PDM Professional | PDMPublisher pour SOLIDWORKS |
| --- | --- | --- |
| Exécute depuis | Une tâche configurée dans l'outil d'administration PDM SOLIDWORKS | L'onglet PDMPublisher CommandManager et le menu Outils dans SOLIDWORKS |
| Commence par | Fichiers voûtés sélectionnés, une action de workflow ou un calendrier PDM | Le document s'ouvre actuellement dans SOLIDWORKS |
| Enregistrer les paramètres comme | Définition des tâches PDM | Profils réutilisables |
| Version SOLIDWORKS | Sélectionné dans les paramètres des tâches | La version actuellement en cours d'exécution SOLIDWORKS |
| Informations sur le fichier | Variables PDM, cartes, modèles BOM et propriétés SOLIDWORKS | Propriétés personnalisées de SOLIDWORKS et références de documents ou d'assemblages actifs |
| Interaction des utilisateurs | Peut afficher le fichier de lancement des tâches et les instructions de configuration | Utilise directement le document actif et le profil sélectionné |
| Registres | Registres optionnels des tâches de le coffre-fort et du serveur | Un onglet dédié **Logs** pour chaque travail de publication |

<a id="shared-documentation"></a>
## Documentation partagée

Les deux produits utilisent les mêmes pages de documentation pour les paramètres dont le comportement est partagé:

- Exporter l'emplacement, le nom de fichier et les formats de fichier
- Exportation de référence de montage et filtrage des conditions
- Configurations multiples et filtres de configuration
- Sélection des feuilles de dessin et modèles de noms de feuilles
- PDF fusion, table des matières, colonnes de table et signets
- Sortie à profil plat DXF et à corps partagé
- Formatage et placement de l'annotation
- Groupes de condition, champs, comparaisons et règles d'évaluation
- Référence des espaces réservés

Chaque page partagée identifie toute différence entre la tâche PDM et le complément SOLIDWORKS.

<a id="pdm-task-only"></a>
## Tâche PDM seulement

Utilisez la [documentation des tâches PDM](pdmpublisher.md) pour les éléments programmés, les instructions de lancement des tâches, les modèles BOM, les BOMs dérivés du dessin, les méthodes de calcul, la sélection d'une version de l'hôte des tâches SOLIDWORKS, la recherche PDM, les journaux d'activité du coffre-fort, la cartographie variable, les références PDM et la visibilité des tâches de File Explorer.

<a id="solidworks-add-in-only"></a>
## Additif SOLIDWORKS seulement

Utilisez la documentation complémentaire [SOLIDWORKS](pdmpublishersolidworks.md) pour Publier des profils, [paramètres complets](pdmpublishersolidworks_settings.md), [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md), [Clone Tree](pdmpublishersolidworks_smart-pack.md), publication interactive, journaux, mises à jour et licence.

> [!TIP]
> Si vous configurez une tâche dans l'outil Administration PDM, suivez la section **PDM Professional** du TOC. Si vous utilisez les commandes PDMPublisher CommandManager dans SOLIDWORKS, suivez la section **SOLIDWORKS add-in**.
