---
title: "Paramètres PDMPublisher pour SOLIDWORKS"
description: "Configurez l'édition, les utilitaires, les intégrations, BOM Manager, les ressources partagées, les licences et le transfert complet de paramètres dans PDMPublisher pour SOLIDWORKS."
ms.date: 10/03/2026
ms.topic: how-to
---

# Paramètres

Ouvrez **PDMPublisher > Settings** pour configurer l'extension SOLIDWORKS. Options de recherche trouve les paramètres par nom de page, étiquette et mot-clé connexe.

![Page actuelle Publier dans la boîte de dialogue unifiée PDMPublisher pour les paramètres SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
La navigation de gauche divise la boîte de dialogue en **Publishing**, **Utilities**, **Integration**, **Bill Of Materials**, **Shared Resources** et pages d'information sur les produits. **Search Options** trouve un contrôle par son étiquette ou un mot-clé connexe sans exiger de l'utilisateur de savoir quelle page il contient.

<a id="settings-pages"></a>
## Configuration des pages

| Catégorie | Page | Ce qu'il contrôle |
| --- | --- | --- |
| Services publics | [Save As New](pdmpublishersolidworks_save-as-new.md) | Modèles de nom de fichier et de destination, numéros de série PDM, dessins associés, propriétés de la boîte de délimitation, macros et profils de commande. |
| Services publics | [Clone Tree](pdmpublishersolidworks_smart-pack.md) | Profils clonés, source de numéro de série PDM, comportement de dernière révision, fichiers complémentaires, sortie ZIP, et traitement optionnel Property Doctor. |
| Services publics | [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Les colonnes par défaut, le chargement des vignettes et les profils d'action de propriété. |
| Services publics | [Traduit par le journal] | Travaux de traduction prévus; pas encore disponible. |
| Intégration | [ERP Sync](pdmpublishersolidworks_erp-sync.md) | Connecteur actif, modèle de colonnes et type de nomenclature par défaut, regroupement, composants ignorés et filtres. |
| Intégration | [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) | Ouvre l'exemple VBA modifiable servant à automatiser les commandes PDMPublisher. |
| Nomenclature | [BOM Manager](pdmpublishersolidworks_bom-manager.md) | Colonnes BOM par défaut, type d'affichage, expression de regroupement et exclusions de composants. |
| Ressources partagées | [PDM](pdmpublishersolidworks_pdm-settings.md) | La voûte utilisée par les paramètres d'utilité PDM-aware. |
| Ressources partagées | [Langues](pdmpublishersolidworks_languages.md) | Le langage d'interface PDMPublisher. |
| Ressources partagées | [Lieux de fichiers](pdmpublishersolidworks_file-locations.md) | Dossiers de dessin supplémentaires, sous-dossiers optionnels et dossiers de documents référencés SOLIDWORKS. |
| Ressources partagées | [Sources extérieures] (pdmpublishersolidworks_external-sources.md) | Sources SQL Server réutilisables utilisées par les menus de propriété et de formule pris en charge. |
| Ressources partagées | [Formules avancées] (pdmpublishersolidworks_advanced-formulas.md) | Formules nommées partagées par noms de fichiers, dossiers et propriétés. |
| Édition | [Publier](pdmpublishersolidworks_options.md) | Publier des profils, des sorties, des formats, des références, des feuilles de dessin, des PDF et des sorties de fabrication. |
| Appui | [À propos](pdmpublishersolidworks_About.md) | Soutien, documentation, produits et liens juridiques. |
| Informations sur le produit | [Paramètres d’entreprise](pdmpublishersolidworks_company-settings.md) | Téléchargement ou publication de certains paramètres d’entreprise et contrôle du choix offert aux utilisateurs. |
| Informations sur le produit | [Clause de licence](pdmpublishersolidworks_license.md) | Complément SOLIDWORKS activation, désactivation, et le statut d'édition communautaire. |

Sélectionnez **OK** pour enregistrer les modifications. **Cancel** ferme la boîte de dialogue sans enregistrer les modifications en cours. **Reset** restaure les valeurs par défaut pour la page sélectionnée; sélectionnez **OK** pour conserver les valeurs de réinitialisation.

<a id="utility-settings"></a>
## Paramètres d' utilité

<a id="save-as-new"></a>
### Save As New

![Paramètres Save As New actuels](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)
La page contrôle les noms de fichier, une destination optionnelle, les numéros de série PDM, s'il faut afficher la boîte de dialogue SOLIDWORKS Enregistrer sous, l'enregistrement automatique, le comportement de reconstruction, l'ouverture de la nouvelle copie, les propriétés calculées de la boîte de liaison, les dessins associés, le nettoyage Property Doctor, les macros post-save et les profils réutilisables. Les options qui dépendent d'une autre case à cocher restent désactivées jusqu'à ce que l'option parent soit activée.

<a id="clone-tree"></a>
### Clone Tree

![Paramètres Clone Tree actuels](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Clone_Tree_Default_Light_100.png)
**Use this serial number** sélectionne la définition du numéro de série PDM utilisée par les lignes qui demandent un nouveau numéro. Le sélecteur de profil choisit les paramètres édités par la commande. Les boutons à côté créent, renomment et suppriment les profils. Les numéros de série sont générés lorsque **Copy** est sélectionné dans le workflow, et réutilise le même nombre pendant que la boîte de dialogue reste ouverte.

<a id="property-doctor"></a>
### Property Doctor

![Paramètres Property Doctor actuels](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Property_Doctor_Default_Light_100.png)
**Hide thumbnail column** améliore les performances de chargement. Le sélecteur de template de colonne détermine quelles propriétés apparaissent lorsque Property Doctor s'ouvre. **Edit columns** modifie ce modèle et **Save default** le stocke par défaut. Le sélecteur de profil et les boutons adjacents sélectionner, créer, modifier ou supprimer les profils d'action Property Doctor.

<a id="shared-resources"></a>
## Ressources partagées

<a id="pdm"></a>
### PDM

![Paramètres de connexion à le coffre-fort PDM](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)
Activez **Use vault** et sélectionnez le coffre-fort local SOLIDWORKS PDM Professional partagé par les numéros de série, l'enregistrement automatique, les détenteurs de dossiers racine Vault et d'autres outils PDM.

<a id="languages"></a>
### Langues

![Sélection de langue et de format régional](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Languages_Default_Light_100.png)
Sélectionnez la langue d'affichage et le formatage régional utilisés par PDMPublisher sur cet ordinateur. Réouvrir les fenêtres PDMPublisher existantes après le changement.

<a id="file-locations"></a>
### Emplacements des fichiers

![Démarche des paramètres de localisation des fichiers](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)
Utilisez **Add** et **Remove** pour maintenir des dossiers de recherche de dessin supplémentaires. **Include subfolders** recherche sous chaque dossier listé. **Include SOLIDWORKS File Locations > Referenced Documents folders** recherche également les dossiers configurés dans SOLIDWORKS. Le dossier du modèle actif est toujours recherché en premier, suivi des dossiers listés dans l'ordre.

<a id="external-sources"></a>
### Sources externes

![Paramètres externes des sources SQL Server](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_External_Sources_Default_Light_100.png)
Les sources externes sont des connexions et des requêtes SQL Server réutilisables. **Add** crée une source, **Edit / Test** la modifie et valide la requête en utilisant un nom de configuration, un nom de fichier ou une valeur de propriété, et **Delete** supprime la définition sélectionnée. Les pouvoirs demeurent locaux et ne sont pas inclus dans les paramètres exportés.

<a id="advanced-formulas"></a>
### Formules avancées

![Paramètres de formule avancés](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)
Les formules avancées sont des expressions nommées partagées par les menus de fichiers, dossiers et propriétés pris en charge. **Add** crée une formule, **Edit** modifie la formule sélectionnée et **Delete** la supprime. Les noms de formules doivent décrire leur résultat afin qu'ils restent compréhensibles lorsqu'ils sont insérés à partir d'un autre workflow.

<a id="dialog-commands"></a>
## Commandes de dialogue

| Commande | Comportement |
| --- | --- |
| **Reset** | Restaurer les paramètres par défaut pour la page de paramètres sélectionnée. La réinitialisation n'est enregistrée qu'après avoir sélectionné **OK**. |
| **Import** | Importe tous les paramètres à partir d'un fichier ou d'un NIP partagé à six chiffres. |
| **Export** | Exporte tous les paramètres vers un fichier ou les télécharge et renvoie un code PIN partagé. |
| **OK** | Valide et enregistre les modifications actuelles. |
| **Cancel** | Ferme la boîte de dialogue sans enregistrer les modifications effectuées depuis son ouverture. |

<a id="transfer-all-settings"></a>
## Transférer tous les paramètres

Les menus **Import** et **Export** en bas transfèrent une configuration PDMPublisher complète.

- **Export all settings to File...** crée un paquet complet de paramètres.
- **Share complete settings using PIN...** télécharge le paquet et retourne un NIP à six chiffres.
- **Import all settings from File...** valide et applique un paquet à partir du disque.
- **Import complete settings using PIN...** télécharge, valide et applique un paquet partagé.

Un paquet complet contient des paramètres d'utilité, des profils Save As New, des profils Property Doctor, des profils Clone Tree, des formules et des sources partagées et des profils Publier complets.

Les paramètres ERP Sync sont inclus dans l'ensemble complet de paramètres. Les identifiants du connecteur et les autres valeurs enregistrées demeurent protégés pour l'utilisateur Windows actuel et ne deviennent pas transférables par l'exportation des paramètres. Publisher Macros conserve le code VBA localement pour l'utilisateur Windows actuel; ce code n'est pas inclus dans l'ensemble de paramètres. Translate ne contient aucun contrôle configurable.

> [!IMPORTANT]
> Les secrets de connexion SQL Server ne sont pas exportés ou téléchargés. Après une importation, entrez de nouveau les identifiants pour des sources externes qui n'ont pas encore de correspondance avec les identifiants locaux.

Avant de remplacer les paramètres, PDMPublisher valide chaque section et crée une sauvegarde locale horodatée. Si l'écriture d'une section échoue, elle tente de restaurer les paramètres précédents.

Pour transférer un seul profil Publier, utilisez [Profiles](pdmpublishersolidworks_profiles.md) au lieu d'un paquet complet de paramètres.

Pour la procédure complète et le comportement de conflit, voir [Importer, Exporter et Réinitialiser les paramètres] (pdmpublishersolidworks_settings-transfer.md).
