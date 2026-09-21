---
title: "Commandes PDMPublisher pour SOLIDWORKS"
description: "Trouvez chaque commande PDMPublisher dans la SOLIDWORKS CommandManager et comprenez quels types de documents la supportent."
ms.date: 09/28/2026
ms.topic: overview
---

# Commandes PDMPublisher

Les commandes PDMPublisher sont disponibles depuis l'onglet **PDMPublisher** dans le SOLIDWORKS CommandManager et dans le menu **Tools > PDMPublisher**. Le volet des tâches est maintenant un navigateur de documentation; les commandes de publication et d'utilité ne s'exécutent plus à l'intérieur du volet.

![PDMPublisher CommandManager et le volet d'aide dans SOLIDWORKS 2026](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
La capture d'écran montre le CommandManager et le volet d'aide introduits dans la version 2026.09.08. Les tableaux ci-dessous décrivent la version actuelle, y compris ERP Sync et BOM Manager. Les commandes s'exécutent sur le document SOLIDWORKS actif. Le volet d'aide de droite fournit des liens vers la documentation et n'exécute pas les commandes.

| Groupe | Commande | Objet |
| --- | --- | --- |
| Services publics | [Save As New](pdmpublishersolidworks_save-as-new.md) | Enregistrer le document actif comme un fichier natif séparé SOLIDWORKS en utilisant un profil de nommage et de destination réutilisable. |
| Services publics | [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Examiner et modifier les propriétés personnalisées, spécifiques à la configuration et les propriétés de la liste de découpe sur un document et ses références. |
| Services publics | [Traduit par le journal] | Réservé pour un futur workflow de traduction. Il n'est pas encore disponible. |
| Services publics | [Clone Tree](pdmpublishersolidworks_smart-pack.md) | Copier un ensemble de documents avec des noms et des destinations par fichier, des fichiers complémentaires optionnels, la gestion de la révision PDM et la sortie ZIP. |
| Intégration | [ERP Sync](pdmpublishersolidworks_erp-sync.md) | Examiner et envoyer les données sélectionnées d'une pièce, d'un assemblage, d'un dessin, d'une table de nomenclature SOLIDWORKS ou d'un fichier CSV au moyen du connecteur ERP actif. |
| Intégration | Publisher Macros | Réservé pour un futur flux d'intégration. Il n'est pas encore disponible. |
| Nomenclature | [BOM Manager](pdmpublishersolidworks_bom-manager.md) | Examiner, regrouper, modifier et exporter les lignes d'une nomenclature d'assemblage au moyen de modèles de colonnes réutilisables. |
| Édition | [Publier](pdmpublishersolidworks-publish.md) | Configurer et exécuter un travail de publication pour le document actif. |
| Édition | [Annotations](pdmpublishersolidworks_annotations.md) | Modifier les annotations stockées dans un profil Publier. |
| Édition | [Conditions](conditions_solidworks.md) | Modifier les conditions stockées dans un profil Publier. |
| Édition | [Logs](pdmpublishersolidworks_logs.md) | Examiner les messages de publication et les erreurs. |
| Paramètres | [Paramètres](pdmpublishersolidworks_settings.md) | Configurer chaque utilitaire, publication et partage des ressources à partir d'une boîte de dialogue consultable. |
| Paramètres | [Clause de licence](pdmpublishersolidworks_license.md) | Ouvrez l'activation et la désactivation des licences supplémentaires SOLIDWORKS. |
| Mises à jour | Vérifier les mises à jour | Vérifiez si une nouvelle construction PDMPublisher est disponible. |
| Mises à jour | Informations sur la version | Ouvrez les informations sur le produit, le support, le droit et la version. |

<a id="commandmanager-controls"></a>
## Contrôles CommandManager

| Contrôle | Ce qui se passe lorsque sélectionné | Menu flèche |
| --- | --- | --- |
| **Save As New** | Ouvre le workflow Save As New pour la partie active, l'assemblage ou le dessin. | Sélectionne un profil Save As New enregistré avant d'ouvrir le workflow. |
| **Property Doctor** | Ouvre une grille de propriétés pour le document actif et les références supportées. | Sélectionne un profil Property Doctor enregistré. |
| **Translate** | Actuellement désactivé parce que le workflow de traduction n'est pas encore disponible. | Aucune. |
| **Clone Tree** | Ouvre le workflow copie/paquetage pour le jeu de documents actif. | Sélectionne un profil Clone Tree enregistré. |
| **ERP Sync** | Ouvre la fenêtre d'examen ERP Sync pour la pièce, l'assemblage ou le dessin actif enregistré. | Aucun. Sélectionnez l'arborescence des fonctions, une table de nomenclature SOLIDWORKS ou un fichier CSV dans la fenêtre ERP Sync. |
| **Publisher Macros** | Actuellement désactivé parce que le flux n'est pas encore disponible. | Aucun. |
| **BOM Manager** | Ouvre le flux d'examen et de modification de nomenclature pour l'assemblage actif. | Aucun. |
| **Publish** | Ouvre ou exécute le workflow de publication avec le profil Publier actif. | Sélectionne un profil de Publier enregistré. |
| **Annotations** | Edit les annotations dans le profil actif Publier. | Aucune. |
| **Conditions** | Modifie les conditions dans le profil Publier actif. | Aucune. |
| **Logs** | Ouvre le visionneur de journaux PDMPublisher. | Aucune. |
| **Settings** | Ouvre la boîte de dialogue des paramètres consultables. | Aucune. |
| **License Key** | Ouvre l'activation et la désactivation de la licence. | Aucune. |

La zone de mise à jour à droite indique si la construction installée est à jour. Lorsqu'une mise à jour est disponible, utilisez la commande de mise à jour affichée et fermez SOLIDWORKS avant d'installer le MSI.

<a id="profile-drop-downs"></a>
## Profil Drop-Downs

La flèche à côté de **Save As New**, **Property Doctor**, **Clone Tree** et **Publish** énumère les profils enregistrés pour cette commande. Sélectionnez **Profile: Default** pour utiliser les paramètres par défaut actuels, ou sélectionnez un profil nommé pour commencer par cette configuration.

Pour un composant sélectionné dans un ensemble, le menu clic droit expose également **Property Doctor** et les profils **Save As New** disponibles.

<a id="when-a-command-is-available"></a>
## Quand une commande est disponible

Les commandes de document nécessitent une pièce, un assemblage ou un dessin actif. Enregistrez le document actif avant d'utiliser les flux qui doivent résoudre des chemins ou des références. ERP Sync exige un document enregistré et un connecteur actif; BOM Manager exige un assemblage actif. Property Doctor et Clone Tree peuvent attendre pendant que SOLIDWORKS termine le chargement des références; modifier le document actif pendant cette préparation annule l'opération.

> [!NOTE]
> L'onglet **PDMPublisher** CommandManager est recréé pour les pièces, les assemblages et les dessins. Si l'onglet est caché, activez le complément et faites un clic droit sur la zone de l'onglet CommandManager pour afficher **PDMPublisher**.
