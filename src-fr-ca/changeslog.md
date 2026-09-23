---
title: "PDMPublisher Modifier le journal Mises à jour des fonctionnalités, améliorations et corrections"
description: "Consultez le journal de changement PDMPublisher avec des mises à jour détaillées, des améliorations, des corrections de bugs et des améliorations pour toutes les versions."
ms.date: 10/04/2026
ms.topic: conceptual
---
# Journal des modifications de PDMPublisher

Cette page suit toutes les modifications, corrections, améliorations et nouvelles fonctionnalités introduites dans PDMPublisher, le complément des tâches SOLIDWORKS PDM Professional et PDMPublisher pour SOLIDWORKS, le complément SOLIDWORKS.

Les versions sont identifiées par leur date de compilation, qui représente la date de construction de la version publiée. Chaque entrée peut comprendre des mises à jour telles que de nouvelles fonctionnalités, des corrections de bugs, des améliorations de performance, des mises à jour de compatibilité, des modifications de configuration et des changements de comportement connus.

<a id="current-versions"></a>
## Versions actuelles

| Produit | Version actuelle |
| --- | --- |
| [PDMPublisher pour SOLIDWORKS](pdmpublishersolidworks.md) | `2026.10.04.0` |
| [Tâche PDM PDMPublisher](pdmpublisher.md) | `2026.09.08` |

L'extension SOLIDWORKS et la tâche PDM sont publiées indépendamment, de sorte que leurs numéros de version actuels peuvent différer.

> [!TIP]
> Si vous utilisez PDMPublisher (task), nous vous recommandons vivement d'utiliser PDMDeploy pour mettre à jour PDMPublisher. Veuillez consulter [ici] (/src/cdpdm.html).

<a id="202610040"></a>
## 2026.10.04.0
*S'applique au **complément SOLIDWORKS***

- Version du programme d'installation : `26.10.04`.
- Amélioration de la disposition d'exportation Excel du [BOM Manager](pdmpublishersolidworks_bom-manager.md) en plaçant **Browse...** à côté du champ **Workbook template**.
- L'option de vignette d'exportation Excel a été renommée **Include thumbnail**.

<a id="20261003"></a>
## 2026.10.03
*S'applique au **complément SOLIDWORKS***

- Ajout des [paramètres d’entreprise](pdmpublishersolidworks_company-settings.md), qui permettent à un administrateur de publier certains groupes de configuration aux utilisateurs titulaires d’une licence portant le même nom d’entreprise.
- Ajout des politiques **Off**, **Let users choose** et **Required**, de l’édition administrateur protégée, du cache local, de la protection contre les conflits de révision et d’une option explicite pour remplacer une révision plus récente.

<a id="20261002"></a>
## 2026.10.02
*S'applique au **complément SOLIDWORKS***

- Ajout du [connecteur Microsoft Dynamics 365 Business Central](pdmpublishersolidworks_business-central-connector.md) officiel pour la création d'articles, la mise à jour de propriétés mappées et Pull avec révision. La synchronisation des nomenclatures n'est pas disponible, car l'API standard Business Central v2.0 n'expose aucune définition de nomenclature d'assemblage ou de production.
- Correction de la suppression des colonnes dans [Property Doctor](pdmpublishersolidworks_property-doctor.md#edit-properties) afin de marquer ou de restaurer ensemble plusieurs colonnes de propriétés sélectionnées. L'utilisation de la commande sur une colonne non sélectionnée continue de ne modifier que cette colonne.

<a id="20261001"></a>
## 2026.10.01
*S'applique au **complément SOLIDWORKS***

- Correction d'un problème où la suppression d'une propriété personnalisée dans [Property Doctor](pdmpublishersolidworks_property-doctor.md#edit-properties) ne marquait pas le document SOLIDWORKS comme modifié. La suppression est maintenant conservée lors de l'enregistrement du document.

<a id="20260931"></a>
## 2026.09.31
*S'applique au **complément SOLIDWORKS***

- Ajout du [connecteur Odoo](pdmpublishersolidworks_odoo-connector.md) officiel pour synchroniser les produits, propriétés, pièces jointes, nomenclatures de fabrication et opérations Pull révisées au moyen de l'API JSON-2 d'Odoo 19+.
- Ajout d'ERP Pull avec une [grille obligatoire d'examen des différences](pdmpublishersolidworks_erp-sync.md#pull-erp-properties-into-solidworks) avant l'application des propriétés ERP mappées dans SOLIDWORKS.
- Ajout de la revalidation de l'instantané Pull, de raisons explicites pour les valeurs ignorées, de l'affichage des valeurs inchangées et d'une gestion protégée des valeurs en lecture seule, intégrées, calculées, d'identité, absentes et nulles.
- Ajout de `IErpPullPreview` et de `ErpCapabilities.PullPreview` pour les connecteurs personnalisés.
- Transformation du guide des connecteurs personnalisés en tutoriel progressif couvrant le projet, les paramètres typés, les capacités, les contrats Push/Pull, l'emballage, les essais, les vérifications de production et le dépannage.
- Ajout de **Mark property for deletion (visible rows)** au menu contextuel des colonnes de [Property Doctor](pdmpublishersolidworks_property-doctor.md#edit-properties).
- Ajout de petites corrections de fiabilité et d'utilisation.

<a id="20260930"></a>
## 2026.09.30
*S'applique au **complément SOLIDWORKS***

- Ajout de [Publisher Macros](pdmpublishersolidworks_publisher-macros.md), avec un exemple VBA modifiable, la coloration syntaxique et l'exécution directe au moyen de SOLIDWORKS.
- Ajout d'appels d'automatisation VBA pour les profils enregistrés de Save As New, Property Doctor et Clone Tree, ainsi que pour les sources et les opérations Push d'ERP Sync.
- Ajout de l'exécution interactive et silencieuse, de la conservation du code de macro, du signalement des erreurs VBA et de petites corrections d'utilisation.

<a id="20260928"></a>
## 2026.09.28
*S'applique au **complément SOLIDWORKS***

- Ajout d'un sélecteur de source ERP Sync pour l'[arborescence des fonctions SOLIDWORKS, les tables de nomenclature SOLIDWORKS et les fichiers CSV UTF-8](pdmpublishersolidworks_erp-sync.md#choose-the-synchronization-source).
- Les sources de table de nomenclature SOLIDWORKS utilisent les lignes et colonnes visibles, les quantités affichées et la configuration sélectionnée de la table. Les tables hiérarchiques valides peuvent aussi fournir la structure de nomenclature.
- Les sources CSV exposent chaque colonne au connecteur et peuvent fournir une hiérarchie de nomenclature au moyen de colonnes reconnues de code d'article et de parent.

<a id="20260927"></a>
## 2026.09.27
*S’applique au **complément SOLIDWORKS***

- Correction du [rapport ERP Sync](pdmpublishersolidworks_erpnext-connector.md#surveiller-la-synchronisation-et-examiner-le-rapport) afin que chaque article coché reçoive un résultat clair : **Success**, **No sync needed** ou **Failure**.
- Les connecteurs réussis qui ne retournent aucun résultat individuel marquent maintenant les lignes concernées **Success** avec un message explicatif au lieu de **Not reported**.
- Ajout de couleurs selon l'état, de détails d'échec plus clairs, de la recherche par état et d'une grille de rapport simplifiée.

<a id="20260926"></a>
## 2026.09.26
*S’applique au **complément SOLIDWORKS***

- Activation d’[ERP Sync](pdmpublishersolidworks_erp-sync.md) pour synchroniser les articles SOLIDWORKS sélectionnés, les propriétés mappées, les numéros de pièce produits par l’ERP et les relations de nomenclature cochées au moyen d’un connecteur ERP installé.
- Ajout de la fenêtre de révision ERP Sync avec sélection des lignes, types d’affichage de nomenclature, modèles de colonnes, regroupement, filtrage, règles d’exclusion de composants, inclusion des listes de pièces soudées et choix des opérations Push.
- Ajout du catalogue officiel de connecteurs et du chargement de connecteurs personnalisés dans **ERP connector settings**.
- Ajout du contrat `PDMPublisher.ERPExtension.dll` et de l’API typée `ErpConnector<TSettings>` pour [créer des connecteurs ERP personnalisés en C#](pdmpublishersolidworks_erp-connector.md) sur .NET Framework 4.7.2.
- Ajout de la configuration du [connecteur ERPNext](pdmpublishersolidworks_erpnext-connector.md), du test de connexion et de la synchronisation des articles, des propriétés et des nomenclatures. Pull demeure visible, mais désactivé dans cette version.

<a id="20260925"></a>
## 2026.09.25
*S'applique au **complément SOLIDWORKS***

- Réorganisation de PDMPublisher autour du CommandManager de SOLIDWORKS et du menu **Tools > PDMPublisher**. Le volet des tâches affiche maintenant l'aide en ligne au lieu d'héberger les commandes de publication. Voir [Commandes PDMPublisher](pdmpublishersolidworks_commands.md) et [Volet des tâches d'aide](pdmpublishersolidworks_help-pane.md).
- Ajout des flux de travail actuels : [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md), [Clone Tree](pdmpublishersolidworks_smart-pack.md) et [BOM Manager](pdmpublishersolidworks_bom-manager.md).
- Ajout d'une boîte de dialogue [Settings](pdmpublishersolidworks_settings.md) unifiée et consultable, avec des profils propres à chaque commande, des ressources partagées et le transfert complet de la configuration par fichier ou NIP à six chiffres. Voir [Importer, exporter et réinitialiser les paramètres](pdmpublishersolidworks_settings-transfer.md).
- Extension des modèles de publication et de l'évaluation des propriétés avec les valeurs PDM, les valeurs de date et d'heure, les numéros de série, les formules enregistrées et les sources SQL externes.
- Ajout d'une aide contextuelle pour les conditions, de la sélection des noms de propriétés avec caractères génériques et de l'attribution d'un matériau à partir d'une propriété dans Property Doctor.
- Ajout de la localisation de l'interface et de programmes d'installation localisés. Voir [Langues](pdmpublishersolidworks_languages.md).
- Ajout de statistiques facultatives sur l'installation et la licence, avec désactivation immédiate par utilisateur. Voir [À propos, mises à jour et licence](pdmpublishersolidworks_About.md).

<a id="20260908"></a>
## 2026.09.08
*S'applique à **Tâche PDM***

- Ajouté [Obtenez la dernière révision seulement](/src/pdmpublisher-options/get-latest-revision-only.html). La tâche peut publier la plus récente révision PDM enregistrée et les références enregistrées avec cette révision au lieu de nouvelles versions non révisées.
- Traitement modifié des erreurs de copie de sortie. Si un ou plusieurs fichiers générés ne peuvent pas être copiés à leur destination, la tâche est maintenant marquée comme échouée au lieu de terminée avec succès.
- Ajout de messages de journal de copie-échec plus clairs avec le chemin source temporaire, le chemin destination et les détails d'erreur disponibles.

<a id="20260812"></a>
## 2026.08.12
*S'applique à **Tâche PDM***

- Correction des préférences d'exportation SOLIDWORKS utilisées lorsque la tâche crée des fichiers eDrawings Part (`.eprt`), eDrawings Assembly (`.easm`) et eDrawings Drawing (`.edrw`).
- La tâche permet désormais explicitement de mesurer et d'enregistrer les propriétés des fichiers et les propriétés des fichiers par composant dans les sorties eDrawings supportées au lieu de dépendre des préférences précédemment stockées sur l'hôte de tâches.
- Aucun comportement complémentaire PDMPublisher pour SOLIDWORKS n'a été modifié dans cette version. Voir [eDrawings Export Settings](/src/pdmpublisher-options/edrawings-export-settings.html).

<a id="20260811"></a>
## 2026.08.11
*S'applique à **SOLIDWORKS Add-in***

- PDMPublisher enregistré pour SOLIDWORKS en tant que solution partenaire SOLIDWORKS. Il apparaît maintenant sous **Partner Solution Add-Ins** dans la boîte de dialogue SOLIDWORKS **Add-Ins**. Aucune autre fonctionnalité de produit n'a changé dans cette version.

<a id="20260810"></a>
## 2026.08.10
*S'applique à **SOLIDWORKS Add-in***

- Ajout du partage de profil par PIN à six chiffres. Un utilisateur peut partager les sections Options, Annotations et Conditions sélectionnées, et le NIP reste disponible pendant 30 jours.
- Ajout de **Load using PIN...** pour télécharger un profil partagé, sélectionner qui comprenait des sections à appliquer, enregistrer le résultat localement et en faire le profil actif. Les paramètres existants dans les sections qui ne sont pas sélectionnées restent inchangés.
- Ajout de la gestion des conflits de nom de profil pour qu'un profil téléchargé puisse remplacer le profil local, être enregistré sous un autre nom ou être annulé. Voir [Profils de partage utilisant un NIP](/src/pdmpublishersolidworks_profile_sharing.html).

<a id="20260809"></a>
## 2026.08.09
*S'applique à **Tâche PDM** et **SOLIDWORKS Add-in***

**Tâche PDM**:
- Ajouté **Use drawing-derived BOM**. La tâche peut utiliser le premier BOM nommé sauvegardé sur le dessin associé d'un assemblage pour déterminer les références, les configurations et les quantités. Si le dessin ou un BOM dérivé utilisable n'est pas disponible, PDMPublisher revient au BOM calculé configuré. Voir [Utilisez BOM Drawing-Derved] (/src/pdmpublisher-options/use-drawing-derived-bom.html).

**Tâche PDM and SOLIDWORKS Add-in**:
- Les feuilles de dessin modifiées correspondent donc à un dessin à feuilles multiples sans feuille correspondant au modèle évalué exporte toutes les feuilles au lieu de produire aucune feuille de sortie.
- Les dessins à une feuille continuent d'exporter leur seule feuille sans en évaluer le modèle. Voir [Modèle de nom de la feuille](/src/pdmpublisher-options/sheet-name-pattern.html).

<a id="20260808"></a>
## 2026.08.08
*S'applique à **Tâche PDM** et **SOLIDWORKS Add-in***

**SOLIDWORKS Add-in**:
- Ajout de profils réutilisables avec des commandes pour créer, renommer, enregistrer, exporter, charger et supprimer les configurations de publication.
- Ajout de modèles de profil de démarrage pour les workflows DXF, PDF et STEP et STEP.
- Ajout d'une navigation pliable sur le panneau des tâches pour offrir plus de place pour les réglages.
- Ajout de la prise en charge optionnelle des thèmes de lumière/dark Windows. Les changements de thème s'appliquent après le redémarrage de SOLIDWORKS.
- Ajout de la sélection des feuilles de dessin avec le patron de feuille et `(ConfigurationName)` correspondant.
- Mise à jour du sélecteur multiformat avec des noms descriptifs et des icônes de type fichier.
- Mise à jour des interfaces Options, Annotations, Conditions et A propos. Voir [PDMPublisher pour SOLIDWORKS](/src/pdmpublishersolidworks.html).

**Tâche PDM**:
- Ajout des détenteurs de place **File Number** qui renvoient les premiers 3, 4, 5 ou 6 chiffres de la première séquence numérique dans un nom de fichier.
- Ajout de titulaires de place **File Number Range** qui regroupent ces valeurs à 3, 4, 5 ou 6 chiffres dans des gammes numériques.
- Organisé les nouveaux détenteurs de place dans les groupes **File Number** et **File Number Range** dans le menu `>...`. Voir [Numéro de fichier Placeholders](/src/pdmpublisherspecialvariable.html#file-number-placeholders).

<a id="20260807"></a>
## 2026.08.07
*S'applique à **Tâche PDM***
- Ajout de la synchronisation optionnelle des thèmes lumineux et sombres de Windows pour les pages de configuration des tâches PDMPublisher. Les administrateurs peuvent activer ou désactiver la synchronisation depuis **Add-ins > PDMPublisher > Theme settings...**. Voir [Paramètres thématiques](/src/pdmpublisher-theme-settings.html).
- Ajout du détenteur de place `(FileNameNumberRange)` pour organiser des noms de fichiers numériques dans des gammes de 1000. Voir [Table des numéros de fichier](/src/pdmpublisherspecialvariable.html#file-name-number-range).
- Mise à jour de la sélection des feuilles de dessin donc un dessin avec une seule feuille exporte cette feuille sans appliquer le modèle de correspondance de la feuille. L'appariement du nom des feuilles continue de s'appliquer aux dessins comportant deux feuilles ou plus.

<a id="20260806"></a>
## 2026.08.06
*S'applique à **Tâche PDM***
- Correction d'un problème de focalisation du clavier sur la page Conditions afin que les utilisateurs puissent saisir les colonnes Valeur et Configuration après avoir ajouté une condition.
- La boîte de dialogue de configuration des tâches PDM SOLIDWORKS a été redimensionnée. Les pages de configuration PDMPublisher s'étendent maintenant avec la boîte de dialogue.

<a id="20260805"></a>
## 2026.08.05
*S'applique à **Tâche PDM** et **SOLIDWORKS Add-in***
- Ajouté ACIS, 3D XML, VRML, VDAFS, CATIA Graphics, HCG, HOOPS HSF, Microsoft XAML, JPEG, TIF, Adobe Illustrator et Adobe Photoshop formats d'exportation. Voir [Formats de fichiers](/src/pdmpublisher-options/file-formats.html).
- Ajout de noms de format descriptif et d'icônes de type de fichier Windows au sélecteur de formats de fichiers et aux emplacements d'exportation spécifiques à l'extension.
- Ajout d'icônes visuelles aux sélecteurs de modèles BOM et SOLIDWORKS.

<a id="20260804"></a>
## 2026.08.04
*S'applique à **Tâche PDM***
- Ajout d'un sélecteur de mode feuille de dessin pour contrôler quelles feuilles sont exportées.
- Ajout d'un champ nom de feuille pour les modes d'exportation qui filtrent les feuilles de dessin par nom.

<a id="20260803"></a>
## 2026.08.03
*S'applique à **Tâche PDM***
- Améliorer la normalisation du chemin, le dossier temporaire de nettoyage.
- Mieux gérer le chemin UNC.
- Ajouter la logique pour supprimer le dossier temporaire après l'exécution réussie des tâches, avec la gestion des erreurs et le message d'avertissement sur l'échec.


<a id="20260802"></a>
## 2026.08.02
<a id="20260801"></a>
## 2026.08.01
*S'applique à **Tâche PDM***
- Correction du bogue lors de la création de nouvelles tâches ( boîte de dialogue d'erreur du cadre Empty .net)

<a id="20260727"></a>
## 2026.07.27
*S'applique à **Tâche PDM***
- Ajouté (FolderName) comme condition.
<a id="20260718"></a>
## 2026.07.18
*S'applique à **Tâche PDM***
- Problème corrigé lié à l'échec de le complément de fichiers PDM lors de l'enregistrement (E EDM FILE SHARE ERROR: Résultats 0x8004020B)
- Problème corrigé lié à la création de la table TOC lorsque le caractère '#' est utilisé.

<a id="20260621"></a>
## 2026.06.21
*S'applique à **Tâche PDM***
- Ajout d'une boîte de dialogue interactive de sélection des fichiers de lancement de tâches pour les tâches qui demandent aux utilisateurs de spécifier des fichiers au lancement.
- Ajout de l'importation CSV dans la boîte de dialogue de lancement des tâches. PDMPublisher lit les noms de fichiers ou les chemins depuis le CSV, recherche le coffre-fort et utilise le premier résultat correspondant tout en sautant les duplicatas.
- Ajout du calcul automatique de référence de montage dans la boîte de dialogue de lancement.
- Ajout de lignes de dessin en vue seulement sous des pièces et des assemblages. Ces lignes sont affichées pour examen, mais ne sont pas transmises à la liste d'entrée des tâches.
- Ajout de la sélection du format de fichier de lancement, de la visibilité de l'emplacement d'exportation et d'un avis d'administration qui explique les paramètres d'exportation des tâches sont contrôlés à partir de l'outil d'administration PDM SOLIDWORKS. Voir [Page de travail sur les éléments programmés](/src/scheduleditems.html).

<a id="20260620"></a>
## 2026.06.20
*S'applique à **Tâche PDM***
- Ajout de la page de configuration **Scheduled Items**. Cette page permet aux administrateurs de choisir les fichiers que PDMPublisher devrait traiter lorsqu'une tâche programmée s'exécute sans les fichiers sélectionnés. Voir [ici] (/src/scheduleditems.html).
- Ajout de la prise en charge pour exporter des fichiers binaires Parasolid avec l'extension `x_b`.
- Mise à jour prévue Gestion des tâches et des détails des tâches Log des comportements de recherche.

<a id="20260531"></a>
## 2026.05.31
*S'applique à **Tâche PDM** et **SOLIDWORKS Add-in***
- Correction à chaud : PDF n'impressionne pas en raison de corps fractionnés.

<a id="20260530"></a>
## 2026.05.30
**Tâche PDM**:
- Ajout d'une page de journal dans l'onglet détails. Voir [ici] (/src/pdmpublisher_task_details.html).
- Ajout d'un support pour diviser la partie multi-corps. Voir [ici] (/src/options.html).
- Extension limitée de `u3d` aux assemblages export seulement.
- Correction d'un bug en cliquant sur Ajouter une tâche dans l'outil d'administration sous la liste des tâches. La tâche demande maintenant à l'utilisateur de sélectionner les fichiers à traiter:
![Ajouter une tâche](https://pdmpublisher.com/help/images/add_task.png)
**SOLIDWORKS Add-in**:
- Correction du problème de transparence des icônes dans le taskpane et la boîte de dialogue du gestionnaire complément dans SOLIDWORKS
- Ajout d'un support pour diviser la partie multi-corps. Voir [ici] (/src/pdmpublishersolidworks_options.html).
- Extension limitée de `u3d` aux assemblages export seulement.


<a id="20260501"></a>
## 2026.05.01
*S'applique à **Tâche PDM***
- Amélioration du nombre de réessayer et du temps d'attente entre les rétries lors de l'enregistrement de fichier et le complément de fichier.

<a id="20260421"></a>
## 2026.04.21
*S'applique à **Tâche PDM***
- Ajout d'une fonctionnalité pour supprimer les commandes de tâches dans le menu de clic droit des tâches dans l'Explorateur de fichiers. La configuration est dans les options.

<a id="20260417"></a>
## 2026.04.17
*S'applique à **Tâche PDM***
- Numéro fixe relatif aux exportations de tôles (vues)

<a id="20260412"></a>
## 2026.04.12
*S'applique à **Tâche PDM***
- Corrections de petits bugs

<a id="20260411"></a>
## 2026.04.11
*S'applique à **Tâche PDM***
- Correction du bogue lorsque l'emplacement d'exportation commence avec `//`

<a id="20260410"></a>
## 2026.04.10
*S'applique à **Tâche PDM***
- Ajout d'une réessayer lors de le complément de fichiers et de la vérification des fichiers dans le coffre.


<a id="20260401"></a>
## 2026.04.01
*S'applique à **Tâche PDM***
- Ajout d'un soutien aux points de vue d'exportation des pièces en tôle
- Ajout de réessayer d'enregistrement
- Ajout d'une session supplémentaire pour trouver lorsque les fichiers exportés sont verrouillés par d'autres applications

<a id="20260327"></a>
## 2026.03.27
*S'applique à **SOLIDWORKS add-in***
- Accident fixe lié à GDI atteignant +9999
- Changements mineurs dans le dialogue de progression

<a id="20260326"></a>
## 2026.03.26
*S'applique à **Tâche PDM***
- Ajouter un multiplicateur de quantité personnalisé lorsque la configuration au démarrage est demandée à l'utilisateur.
- Ajouté l'élément de menu Download Center dans l'outil Administration sous le complément pour lorsque PDMDeploy est bloqué. Cela vous mènera au centre de téléchargement PDMPublisher.

<a id="20260322"></a>
## 2026.03.22
*S'applique à **Tâche PDM** et **SOLIDWORKS Add-in***
- Fusionner et corriger les bogues TOC.
- Ajout du support pour l'exportation vers `bmp`

<a id="20260316"></a>
## 2026.03.16
*S'applique à **Tâche PDM***
- Ajout du support pour le traitement des fichiers Excel et Word à pdf
- Ajout de la prise en charge de la cartographie variable entre le fichier destination et le fichier source
- Ajout du support pour créer une référence personnalisée entre le fichier destination et le fichier source
- Ajout du support pour supprimer les duplicatas en dehors de la destination cible
- Ajout de la prise en charge des extensions suivantes: `ifc`,`3mf`, `3dpdf` (pdf mais pour les pièces et assemblages)
- Corrections mineures


<a id="20260223"></a>
## 2026.02.23
*S'applique à la fois à **Tâche PDM** et **SOLIDWORKS Add-in***
- Correction du bogue lors de l'exportation du motif plat lorsque `Convert Multiple Configurations` est activé
- Ajout d'une nouvelle option dans les paramètres du modèle plat pour supprimer ou ajouter `-FlatPattern` au nom de fichier du modèle plat dxf.

<a id="20260222"></a>
## 2026.02.22
*S'applique à la fois à **Tâche PDM** et **SOLIDWORKS Add-in***
- Ajout de la prise en charge des configurations de filtrage à la tâche activée via le `Convert Multiple Configurations`
- Ajout du support pour l'extension `3mf` pour les pièces

<a id="20260221"></a>
## 2026.02.21
*S'applique à **SOLIDWORKS Add-in***
- Correction de bugs liés aux dessins ne fermant pas lors de l'impression sur PDF.

<a id="20260220"></a>
## 2026.02.20
*S'applique à **SOLIDWORKS Add-in***
- Ajout de la possibilité de choisir les configurations (comprenant et excluant les modèles) à traiter sous l'option `Convert Multiple Configurations`

<a id="20260219"></a>
## 2026.02.19
<a id="20260218"></a>
## 2026.02.18
*S'applique à **SOLIDWORKS Add-in***
- Reconstruction du fantôme


<a id="20260217"></a>
## 2026.02.17
*S'applique à **SOLIDWORKS Add-in***
- Correction du problème de calcul de BOM
<a id="20260216"></a>
## 2026.02.16
<a id="20260215"></a>
## 2026.02.15
<a id="20260214"></a>
## 2026.02.14
<a id="20260213"></a>
## 2026.02.13
*S'applique à **SOLIDWORKS Add-in***
- Reconstruction du fantôme

<a id="20260213"></a>
## 2026.02.13
*S'applique à **SOLIDWORKS Add-in***
- Correction : Si le taskpane échoue, complément tentera de se réenregistrer. Vous devez utiliser SW comme administrateur pour ce travail.


<a id="2026-02-12"></a>
## 2026-02-12 
*S'applique à **SOLIDWORKS Add-in***
- Amélioration de la vitesse de chargement des références

<a id="2026-02-11"></a>
## 2026-02-11 
*S'applique à **SOLIDWORKS Add-in***
- Bogue corrigé : Données de dialogue de références incomplètes lorsque l'assemblage de niveau supérieur est ouvert en léger.
- Diminution du temps nécessaire pour construire l'arbre de référence dans le dialogue de progression
- Changements mineurs de l'interface utilisateur dans la page à propos (sous-titres des boutons renommés et adresse électronique de support ajoutée)

<a id="2026-02-10"></a>
## 2026-02-10 
- Construction de fantômes

<a id="2026-02-09"></a>
## 2026-02-09 
*S'applique à la fois à **Tâche PDM** et **SOLIDWORKS Add-in***
- Séperateur usagé démarré | au lieu de # (problèmes causés par des noms de fichiers contenant #)
- FAQ mise à jour sur l'erreur de fusion PDFs.
- Ajout de l'alias `ConfigurationName` aux conditions.

<a id="2026-01-17"></a>
## 2026-01-17  
*S'applique à la fois à **Tâche PDM** et **SOLIDWORKS Add-in***
- Correction de **outside diameter of countersink holes** lors de l'exportation du bug **DXF flat patterns**.

<a id="2026-01-16"></a>
## 2026-01-16  
*S'applique à **SOLIDWORKS Add-in***
- Correction du bug de conflit d'assemblage

<a id="2026-01-15"></a>
## 2026-01-15  
*S'applique à la fois à **Tâche PDM** et **SOLIDWORKS Add-in***

- Ajout d'un nouveau **Flat Pattern export setting** qui supprime le **outside diameter of countersink holes** lors de l'exportation de **DXF flat patterns**: Cela aide à produire des DXF plus propres pour la fabrication en aval en excluant la géométrie extérieure du contrepuce tout en préservant les profils de coupe requis.
