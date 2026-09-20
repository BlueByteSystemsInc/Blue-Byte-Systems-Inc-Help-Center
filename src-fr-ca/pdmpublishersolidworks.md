---
title: "PDMPublisher pour SOLIDWORKS"
description: "Utilisez PDMPublisher à l'intérieur de SOLIDWORKS pour publier, Save As New, Property Doctor, Clone Tree, des profils et des paramètres partagés."
ms.date: 09/19/2026
ms.topic: overview
---

# PDMPublisher pour SOLIDWORKS

PDMPublisher pour SOLIDWORKS est un complément interactif SOLIDWORKS pour la publication des produits livrables, la création de copies de documents contrôlées, les propriétés d'édition et l'emballage des ensembles de documents complets. Il fonctionne à l'intérieur de SOLIDWORKS et peut utiliser les informations SOLIDWORKS PDM Professional lorsqu'une vue locale du coffre-fort est disponible.

> [!IMPORTANT]
> Cette documentation décrit le complément SOLIDWORKS, et non la tâche PDMPublisher configurée dans l'outil d'administration PDM SOLIDWORKS.

Voir [Tâche PDM vs Complément SOLIDWORKS](pdmpublisher-product-differences.md) pour une comparaison côte à côte et des liens vers les paramètres partagés par les deux produits.

<a id="current-interface"></a>
## Interface actuelle

Les commandes PDMPublisher sont situées sur l'onglet **PDMPublisher** dans le SOLIDWORKS CommandManager et sous **Tools > PDMPublisher**. Le volet des tâches est maintenant un navigateur de documentation et ne contient plus les contrôles de publication.

![commandes PDMPublisher CommandManager et volet Aide intégré dans SOLIDWORKS 2026](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
Le CommandManager est organisé en trois groupes :

| Groupe | Commandes | Objet |
| --- | --- | --- |
| Outils documentaires | Save As New, Property Doctor, Traduction, Clone Tree | Créer des copies, gérer les propriétés et les ensembles de documents de paquets. Traduire est réservé pour une sortie future. |
| Nomenclature | BOM Manager | Configurer les colonnes, la structure, le regroupement et les exclusions de composants. |
| Intégrations prévues | ERP Sync, Publisher Macros | Afficher les emplacements prévus de ERP synchronisation et publication programmée. Ces intégrations ne sont pas encore disponibles. |
| Édition | Publier, annotations, conditions, journaux | Configurer et gérer les exportations, contrôler les annotations et les règles de traitement, et examiner les résultats. |
| Paramètres et mises à jour | Paramètres, Clé de licence, état de mise à jour, informations de version | Configurer le complément, transférer les paramètres, gérer les licences et vérifier la version installée. |

Voir [PDMPublisher Commands](pdmpublishersolidworks_commands.md) pour connaître la disponibilité des commandes, les menus déroulants du profil et les commandes contextuelles d'assemblage.

<a id="start-a-workflow"></a>
## Démarrer un flux de travail

1. Ouvrez ou activez une pièce, un assemblage ou un dessin enregistré dans SOLIDWORKS.
2. Ouvrez l'onglet **PDMPublisher** CommandManager.
3. Sélectionnez une commande pour utiliser ses paramètres par défaut, ou sélectionnez la flèche sous une commande prise en charge pour choisir un profil enregistré.
4. Consultez la fenêtre de commande ou prévisualiser avant d'écrire des fichiers ou des propriétés de document.
5. Terminer l'opération et examiner les avertissements ou les erreurs signalés.

**Save As New**, **Property Doctor**, **Clone Tree** et **Publish** prennent en charge les profils réutilisables. Un composant sélectionné dans un ensemble possède également des commandes PDMPublisher dans son menu à clic droit.

<a id="save-as-new"></a>
## Save As New

[Save As New](pdmpublishersolidworks_save-as-new.md) crée un document natif distinct SOLIDWORKS sans renommer le document source ou modifier les références d'assemblage source.

![Paramètres Save As New et commandes de profil](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)
Utilisez-le pour :

- Construisez des noms de fichiers et des dossiers de destination à partir de valeurs de documents, propriétés, valeurs de dossiers, variables PDM, formules, numéros de série et texte demandé.
- Afficher la boîte de dialogue normale Enregistrer sous lorsque la destination a besoin de confirmation de l'utilisateur.
- Reconstruisez le modèle avant d'enregistrer et d'ouvrir la nouvelle copie après.
- Copiez et reliez un dessin associé.
- Écrire les dimensions calculées de la boîte de raccordement à la nouvelle pièce ou à l'ensemble.
- Exécutez une macro SOLIDWORKS après la création de la copie.
- Ajouter et vérifier les nouveaux fichiers dans le coffre PDM sélectionné automatiquement.

Save As New valide l'extension, la destination, les noms de fichiers dupliqués, les fichiers existants et les conflits du coffre-fort avant d'écrire la copie.

<a id="property-doctor"></a>
## Property Doctor

[Property Doctor](pdmpublishersolidworks_property-doctor.md) affiche le document actif, les configurations, les listes de découpe, les dessins et les documents référencés dans une grille de propriétés modifiables.

![Gride de documents et de propriétés Property Doctor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/PropertyDoctor/PropertyDoctor_Main_window_Default_Light_100.png)
Utilisez-le pour :

- Ajouter, modifier, effacer, réinitialiser ou supprimer des propriétés personnalisées et spécifiques à la configuration.
- Rechercher, filtrer, trouver et remplacer, et remplir les valeurs sur les lignes visibles.
- Utilisez des valeurs de document, des valeurs liées, des formules, des informations PDM et des sources externes configurées.
- Ajouter et organiser des colonnes de propriété ou charger un modèle de colonne réutilisable.
- Importez des valeurs de propriété de CSV et exportez la grille actuelle vers CSV.
- Prévisualiser un profil Property Doctor avant d'appliquer ses actions de propriété commandées.
- Vérifiez les fichiers PDM entrants ou sortants, obtenez les dernières informations, résolvez les références et ouvrez les documents déchargés lorsque cela est permis.

Les changements en attente restent dans la grille jusqu'à ce que **Apply changes** soit sélectionné. **Discard changes** restaure les valeurs qui ont été chargées lorsque la fenêtre s'est ouverte.

<a id="clone-tree"></a>
## Clone Tree

[Clone Tree](pdmpublishersolidworks_smart-pack.md) crée un plan de copie pour un document actif et ses références. Chaque fichier inclus peut avoir son propre nom de sortie et destination tandis que les références SOLIDWORKS sont mises à jour dans les fichiers copiés.

![Plan de copie des documents Clone Tree](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/CloneTree/CloneTree_Main_window_Default_Light_100.png)
Utilisez-le pour :

- Inclure ou exclure les modèles et dessins individuels du colis.
- Créez des noms et des destinations par fichier à partir de propriétés, dossiers, variables PDM, numéros de série et formules.
- Ignorer les composants de la boîte à outils lorsqu'ils doivent continuer de faire référence à leurs emplacements d'origine.
- Inclure les fichiers associés STEP, PDF ou DXF du même nom.
- Copiez la dernière révision PDM attribuée directement à la destination sans changer le cache du coffre-fort local.
- Enregistrer les documents pris en charge dans la version SOLIDWORKS actuelle ou une version antérieure prise en charge.
- Créez une archive ZIP après la copie du jeu de documents.
- Appliquer les règles du profil commandé et exécuter optionnellement un profil Property Doctor sur les fichiers copiés.

La copie est bloquée lorsque les cibles sont dupliquées, écraser une source ou un fichier existant, modifier une extension SOLIDWORKS ou dépendre d'informations de destination ou de révision non résolues.

<a id="bom-manager"></a>
## BOM Manager

[BOM Manager](pdmpublishersolidworks_bom-manager.md) définit le modèle de colonne par défaut, le type d'affichage de SOLIDWORKS BOM, l'expression de regroupement de lignes et les exclusions de composants basées sur les conditions utilisées par les workflows de BOM.

![Fenêtre principale BOM Manager](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Main_window_Default_Light_100.png)
La fenêtre BOM Manager affiche la hiérarchie d'assemblage, la configuration, la quantité et les colonnes de propriété sélectionnées. Il peut trouver et filtrer des lignes, modifier le modèle de type ou de colonne BOM, les entrées de groupe, ignorer les composants, importer ou exporter des données Excel, et appliquer les modifications prises en charge.

![BOM Manager par défaut](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_BOM_Manager_Default_Light_100.png)
Sélectionnez **Ignore Components** pour créer des conditions qui suppriment les composants correspondants du BOM sans les supprimer ou les supprimer dans l'ensemble SOLIDWORKS.

![BOM Manager Ignorer les conditions des composants](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Ignore_components_Default_Light_100.png)
<a id="publishing"></a>
## Publication

La commande [Publier](pdmpublishersolidworks-publish.md) ouvre la publication pour le document actif. Un profil Publish combine les paramètres de sortie, les annotations et les conditions nécessaires pour une exportation répétable.

![Publier la sortie, la feuille de dessin, la référence et les paramètres de fabrication](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
La publication peut :

- Exporter des pièces, des assemblages, des dessins et des références aux formats PDF, DXF, DWG, STEP, eDrawings et autres.
- Construisez des chemins de sortie et des noms de fichiers à partir de lieux et de documents ou de valeurs PDM.
- Traiter les références individuellement, convertir les configurations et les configurations de filtre.
- Sélectionnez les feuilles de dessin, les noms des feuilles de correspondance, fusionnez les PDF, ajoutez une table des matières et créez des signets.
- Exporter des motifs plats en tôle et des corps divisés.
- Ajouter du texte, des valeurs de propriété, des filigranes et des codes QR par [Annotations] (pdmpublishersolidworks_annotations.md).
- Inclure ou exclure les documents et les références par [Conditions] (conditions_solidworks.md).
- Détails de traitement des dossiers, avertissements et erreurs dans [Logs](pdmpublishersolidworks_logs.md).

Voir [Publier les paramètres](pdmpublishersolidworks_options.md) pour la référence complète de l'option de publication.

<a id="annotations"></a>
### Annotations

[Annotations](pdmpublishersolidworks_annotations.md) placer le texte formaté, les propriétés SOLIDWORKS, les filigranes et autres marques sur les pages PDF publiées. Chaque annotation peut avoir sa propre position et la feuille de sélection.

![Éditeur des annotations](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Annotations_Default_Light_100.png)
<a id="conditions"></a>
### Conditions

[Conditions](conditions_solidworks.md) utilisent des règles imbriquées pour inclure ou exclure les documents et les références avant l'exportation. La revue de publication montre le résultat avant la rédaction des dossiers.

![Éditeur des conditions](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Default_Light_100.png)
<a id="logs-and-publish-review"></a>
### Journaliser et publier la revue

[Logs](pdmpublishersolidworks_logs.md) enregistre les fichiers de sortie, les avertissements, les éléments ignorés et les erreurs. Lorsque **Show dialog before processing** est activé, la fenêtre d'examen liste les fichiers et les configurations qui seront traités.

![Revoir les fichiers avant publication](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-condition-review-20260916.png)
![Édition de journaux filtrés aux erreurs](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)
<a id="settings-and-profiles"></a>
## Paramètres et profils

La commande [Settings](pdmpublishersolidworks_settings.md) ouvre une boîte de dialogue pour toutes les configurations supplémentaires.

![ boîte de dialogue de recherche PDMPublisher pour les paramètres SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
La boîte de dialogue contient :

- Paramètres et profils d'utilité pour Save As New, Property Doctor et Clone Tree.
- BOM Manager par défaut pour les colonnes, le type d'affichage, le regroupement et les composants ignorés.
- Porte-places clairement marqués pour les fonctionnalités prévues de Translate, ERP Sync et Publisher Macros.
- Publier les profils complets, y compris les options de publication, les annotations et les conditions.
- Sélection PDM partagée, langues, dossiers de recherche de dessin, sources externes et formules avancées.
- Support, mise à jour, version, juridique et informations de licence.

Les profils appartiennent à la commande qui les utilise. Par exemple, un profil Property Doctor stocke les actions de propriété, tandis qu'un profil Publish stocke le comportement d'exportation. Sélection de la flèche sous une commande CommandManager liste les profils disponibles pour cette commande.

Les menus Paramètres **Import** et **Export** peuvent transférer la configuration complète via un fichier ou un code PIN à six chiffres. Le transfert complet comprend chaque famille de profils et les ressources partagées. Les identifiants SQL Server sont intentionnellement exclus et doivent être entrés sur l'ordinateur de destination.

<a id="shared-resources"></a>
### Ressources partagées

Les ressources partagées fournissent une configuration réutilisable aux services publics et aux profils de publication.

- [Langues](pdmpublishersolidworks_languages.md) sélectionne la langue d'affichage et le formatage régional.
- [Lieux de fichiers](pdmpublishersolidworks_file-locations.md) définit les dossiers supplémentaires utilisés pour localiser les dessins associés.
- [Sources externes](pdmpublishersolidworks_external-sources.md) définit les connexions et requêtes SQL Server réutilisables.
- [Formules avancées](pdmpublishersolidworks_advanced-formulas.md) définit les expressions nommées pour les noms de fichiers, les dossiers et les propriétés.

![Paramètres de langue et de format régional](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Languages_Default_Light_100.png)
![Démarche des paramètres de localisation des fichiers](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)
![Sources externes SQL Server](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Sources_Default_Light_100.png)
![Paramètres avancés des formules](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)
<a id="planned-features"></a>
## Caractéristiques prévues

L'interface actuelle réserve des pages pour [Trail](pdmpublishersolidworks_translate.md), [ERP Sync](pdmpublishersolidworks_erp-sync.md), et [Publisher Macros](pdmpublishersolidworks_publisher-macros.md). Ces pages montrent les zones de produits prévues, mais les caractéristiques ne sont pas encore disponibles pour la production.

![Page de paramètres de traduction planifiée](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Translate_Default_Light_100.png)
![Page de paramètres ERP Sync programmée](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_ERP_Sync_Default_Light_100.png)
![Page de paramètres Publisher Macros programmée](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publisher_Macros_Default_Light_100.png)
<a id="help-task-pane"></a>
## Panneau d'aide

Le volet des tâches PDMPublisher affiche la page de bienvenue de la documentation compacte à `https://pdmpublisher.com/help/addinwelcome.html`. Il n'héberge pas ou ne contrôle pas les commandes natives PDMPublisher.

La page intégrée nécessite Microsoft Edge WebView2 Runtime. Si la page ne peut pas être chargée, toutes les commandes CommandManager restent disponibles. Voir [Help volet des tâches](pdmpublishersolidworks_help-pane.md) pour les exigences et le dépannage.

<a id="solidworks-pdm-professional-integration"></a>
## Intégration SOLIDWORKS PDM Professional

Lorsque l'ordinateur a une vue locale du coffre-fort PDM, PDMPublisher peut utiliser la session active PDM pour résoudre les dossiers et les variables du coffre-fort, réserver les numéros de série, vérifier les fichiers entrants ou sortants, obtenir des révisions et valider les destinations du coffre-fort. Les actions disponibles suivent toujours les autorisations de la chambre forte de l'utilisateur et l'état du workflow.

![Raccordement du coffre-fort PDM utilisé par les utilitaires complémentaires](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)
L'complément SOLIDWORKS n'inclut pas la planification des tâches PDM, les instructions de lancement des tâches, la configuration de la méthode d'exécution ou la sélection de l'hôte des tâches SOLIDWORKS. Ceux-ci appartiennent à [PDMPublisher pour PDM Professional](pdmpublisher.md).

<a id="install-and-enable-the-add-in"></a>
## Installer et activer le module complémentaire

Fermer SOLIDWORKS avant d'exécuter l'installateur MSI. Après l'installation, ouvrez **Tools > Add-Ins**, localisez **PDMPublisher (SOLIDWORKS)** sous **Partner Solution Add-Ins** et sélectionnez les cases à cocher en cours de session et de démarrage.

![PDMPublisher pour SOLIDWORKS activé en tant que solution partenaire](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)
Voir [Installer et activer le complément](pdmpublishersolidworks_installation.md) pour la procédure complète et le dépannage.

<a id="download-and-licensing"></a>
## Téléchargement et licence

- [Guide d'installation](pdmpublishersolidworks_installation.md)
- [Télécharger PDMPublisher pour SOLIDWORKS](https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher)
- [Acheter une licence PDMPublisher pour SOLIDWORKS](https://bluebyte.biz/product/pdmpublisher-solidworks)
- [Gestion des licences](pdmpublishersolidworks_license.md)

PDMPublisher pour SOLIDWORKS peut fonctionner comme édition communautaire sans clé d'essai ou payante. L'essai séparé de 7 jours offert ailleurs sur ce site d'aide est pour le **PDM Professional Task version**.

![PDMPublisher pour la page clé de la licence SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_License_Key_Default_Light_100.png)
<a id="updates-and-about"></a>
## Mises à jour et à propos

[Version et mises à jour](pdmpublishersolidworks-updates.md) rapporte les versions installées et disponibles et fournit la commande de mise à jour. [À propos](pdmpublishersolidworks_About.md) fournit des produits, du soutien, de la documentation et des renseignements juridiques.

![Support et mises à jour des paramètres](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Support_Updates_Default_Light_100.png)
![À propos des paramètres](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_About_Default_Light_100.png)
Pour obtenir du soutien, contactez `support@bluebytesystemsinc.zohodesk.com`.
