---
title: "ERP Sync | PDMPublisher pour SOLIDWORKS"
description: "Configurer ERP Sync pour envoyer des données à l'ERP et importer les propriétés ERP mappées dans SOLIDWORKS après l'examen des différences."
ms.date: 09/31/2026
ms.topic: conceptual
---

# ERP Sync

ERP Sync échange les données SOLIDWORKS sélectionnées avec un système ERP au moyen d'un connecteur installé. Push envoie les articles, propriétés, fichiers et relations de nomenclature prises en charge à l'ERP. Pull affiche un aperçu des propriétés ERP mappées avant d'appliquer les changements approuvés dans SOLIDWORKS.

Ouvrez **PDMPublisher > ERP Sync** pour préparer une opération Push ou Pull. Ouvrez **PDMPublisher > Settings > ERP Sync** pour choisir le connecteur et configurer la vue de nomenclature par défaut. Pull est disponible uniquement lorsque le connecteur sélectionné prend en charge Pull avec aperçu.

<a id="configure-erp-sync"></a>
## Configurer ERP Sync

![Paramètres ERP Sync dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-settings-20260920.png)
La page de paramètres contient :

| Réglage | Description |
| --- | --- |
| Connecteur ERP | Sélectionne le connecteur utilisé par ERP Sync. Ouvrez les réglages du connecteur depuis la commande de connecteur adjacente. |
| Modèle de colonne par défaut | Sélectionne le modèle de colonnes de BOM Manager utilisé à l'ouverture de la fenêtre ERP Sync. Les colonnes sélectionnées fournissent aussi les valeurs accessibles au connecteur. |
| Type d'affichage de nomenclature par défaut | Sélectionne la vue initiale **Parts only**, **Top-level only** ou la nomenclature hiérarchique. |
| Regrouper par | Regroupe les lignes affichées selon un texte, une propriété ou un espace réservé pris en charge. Laissez ce champ vide pour afficher une liste à plat. |
| Ignorer les composants | Ouvre les conditions qui excluent les composants correspondants de la vue ERP Sync. |
| Rechercher le texte | Filtre les lignes affichées par texte. |
| Types d'articles | Limite les types de lignes inclus dans la vue. |

Sélectionnez **OK** pour enregistrer les valeurs par défaut. Ces paramètres sont indépendants des paramètres BOM Manager.

<a id="install-and-configure-a-connector"></a>
## Installer et configurer un connecteur

![catalogue et paramètres du connecteur ERP](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-connector-settings-20260920.png)
1. Ouvrez **Settings > ERP Sync** et ouvrez **ERP connector settings**.
2. Sélectionnez un connecteur officiel et choisissez **Download**, ou choisissez **Add new...** pour naviguer vers un connecteur personnalisé DLL.
3. Sélectionnez le connecteur installé. Ses paramètres apparaissent dans la grille de propriété inférieure.
4. Saisissez l'URL du serveur, les identifiants, les mappages et d'autres valeurs spécifiques au connecteur.
5. Choisissez **Test connection**. Corrigez tout problème d'authentification, d'URL ou de mappage signalé.
6. Choisissez **Save** pour rendre ce connecteur actif.

Les paramètres du connecteur sont enregistrés séparément pour chaque connecteur et chiffrés pour l'utilisateur Windows actuel. Redémarrer SOLIDWORKS avant de remplacer une DLL de connecteur déjà chargée.

Pour les connecteurs fournis par Blue Byte Systems, consultez [Connecteur ERPNext](pdmpublishersolidworks_erpnext-connector.md) et [Connecteur Odoo](pdmpublishersolidworks_odoo-connector.md).

<a id="choose-the-synchronization-source"></a>
## Choisir la source de synchronisation

Utilisez le sélecteur de source en haut à gauche d'ERP Sync pour choisir la provenance des lignes, des colonnes, des quantités et de la hiérarchie de nomenclature.

![Sélecteur de source ERP Sync avec l'arbre des fonctions, une table de nomenclature SOLIDWORKS et un fichier CSV](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-source-selector-20260928.png)

| Source | Données utilisées par ERP Sync | Comportement important |
| --- | --- | --- |
| Feature tree | Le document SOLIDWORKS actif et son arborescence de composants résolus. | Il s'agit de la source par défaut. Le type de nomenclature, les modèles de colonnes, le regroupement, les filtres de composants, les éléments de liste de pièces soudées et les lignes fantômes restent disponibles. L'envoi d'une nomenclature exige la vue **Indented** sans regroupement. |
| Table de nomenclature SOLIDWORKS | Une table de nomenclature trouvée dans un assemblage ou un dessin, y compris la configuration sélectionnée pour la table. | Les lignes et colonnes visibles ainsi que les quantités affichées sont utilisées. L'envoi des articles et des propriétés reste disponible pour toute table valide. L'envoi de la nomenclature exige aussi une table hiérarchique avec une numérotation détaillée telle que `1`, `1.1` et `1.2`, des lignes parentes visibles et une hiérarchie non ambiguë. |
| Fichier CSV | Un fichier CSV UTF-8 sélectionné sur le disque. | Chaque colonne CSV devient une propriété source accessible au connecteur. L'envoi des articles et des propriétés est disponible après validation du fichier. L'envoi de la nomenclature est activé lorsque les colonnes d'article et de parent définissent une hiérarchie valide. |

La source sélectionnée est mémorisée pour le document SOLIDWORKS enregistré.

### Feature tree

Choisissez **Feature tree** pour créer les lignes à partir de la pièce, de l'assemblage ou du dessin actif. Utilisez **BOM type**, **Column template**, **Group by**, **Ignore Components** et les filtres d'articles pour préparer la vue. Les lignes peuvent inclure les composants résolus, les éléments de liste de pièces soudées et les lignes fantômes selon les réglages sélectionnés.

### Table de nomenclature SOLIDWORKS

Ouvrez le sous-menu du document dans le sélecteur de source, puis choisissez une table de nomenclature et une configuration. ERP Sync lit la table telle qu'elle est affichée :

- Les lignes et colonnes masquées sont omises.
- Les titres de colonnes et les colonnes de propriétés personnalisées deviennent des propriétés source que le connecteur peut mapper.
- La quantité affichée doit être numérique.
- Une table à plat peut servir à synchroniser les articles et les propriétés. La synchronisation de nomenclature exige une hiérarchie en retrait avec une numérotation numérique détaillée et des lignes parentes visibles.

Si la table ne permet pas de créer une hiérarchie non ambiguë, ERP Sync laisse les opérations d'article et de propriété disponibles et désactive l'opération de nomenclature.

### Fichier CSV

Choisissez **CSV file...** pour utiliser des données indépendantes de l'arborescence des composants SOLIDWORKS. Le fichier doit respecter les exigences suivantes :

- Texte UTF-8, avec ou sans marque d'ordre des octets (BOM).
- Taille maximale de 20 Mo et au plus 50 000 lignes de données non vides.
- En-têtes non vides et uniques, avec le même nombre de champs dans chaque ligne de données.
- Quantités entières positives. En l'absence d'une colonne de quantité, ERP Sync utilise `1`.

ERP Sync reconnaît les en-têtes conventionnels suivants :

| Rôle | En-têtes reconnus |
| --- | --- |
| Code d'article | `Item code`, `item_code`, `PartNumber`, `Part Number` ou `Item` |
| Quantité | `Quantity` ou `Qty` |
| Article parent | `Parent`, `Parent item` ou `parent_item` |
| Description | `Description` |
| Matériau | `Material` |

Pour activer l'envoi d'une nomenclature depuis un CSV, fournissez des colonnes reconnues pour le code d'article et le parent. Chaque code d'article doit apparaître une seule fois, chaque parent référencé doit exister et les relations ne doivent contenir aucun cycle. Une hiérarchie valide doit contenir au moins un parent avec des enfants.

<a id="push-document-data"></a>
## Envoyer les données du document

1. Ouvrez ou activez une pièce, un assemblage ou un dessin SOLIDWORKS enregistré.
2. Sélectionnez **PDMPublisher > ERP Sync**.
3. Sélectionnez **Feature tree**, une table de nomenclature SOLIDWORKS ou **CSV file...** comme source. Utilisez les commandes offertes pour cette source afin de préparer la vue.
4. Cochez chaque ligne à inclure. Seules les lignes cochées et actuellement affichées sont envoyées. Développez les branches réduites avant d'envoyer une nomenclature hiérarchique.
5. Sélectionnez le connecteur actif au bas de la fenêtre.
6. Ouvrez la flèche à côté de **Push** et sélectionnez les opérations requises.
7. Sélectionnez **Push**, examinez le résultat et corrigez tout élément défectueux ou BOM signalé par le connecteur.

![Options de l'opération Push d'ERP Sync](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-options-20260920.png)
| Opération | Résultat |
| --- | --- |
| Propriétés | Met à jour les propriétés mappées des articles ERP existants. |
| Créer des éléments + propriétés | Crée les articles ERP manquants et envoie leurs propriétés mappées. La création d'articles comprend la synchronisation des propriétés. |
| BOM | Envoie les relations BOM parents-enfants explicitement sélectionnées. Le connecteur doit annoncer le support BOM. |
| Inclure les éléments de la liste de coupure | Inclut les lignes de liste de coupe prises en charge dans l'instantané. |

L'instantané contient des données brutes capturées à partir de SOLIDWORKS; un connecteur ne reçoit pas d'objets COM SOLIDWORKS. Les propriétés personnalisées racine sont fusionnées avec les propriétés de configuration active, et les valeurs de configuration ont priorité. La masse est fournie en kilogrammes.

<a id="pull-erp-properties-into-solidworks"></a>
## Importer les propriétés ERP dans SOLIDWORKS

Pull utilise les mappages de propriétés du connecteur en sens inverse : le champ ERP devient la source et la propriété personnalisée SOLIDWORKS mappée devient la destination.

1. Sélectionnez une source provenant de l'arborescence des fonctions ou d'une table de nomenclature SOLIDWORKS. Pull ne peut pas écrire dans une source CSV.
2. Cochez les lignes dont vous voulez comparer les propriétés mappées.
3. Sélectionnez un connecteur qui prend en charge Pull avec aperçu, puis sélectionnez **Pull**.
4. Examinez chaque valeur proposée ou ignorée dans **Review ERP pull**.
5. Activez **Show unchanged** si vous voulez aussi afficher les valeurs déjà identiques.
6. Sélectionnez **Apply to SOLIDWORKS** pour valider de nouveau et écrire les valeurs proposées, ou **Cancel** pour ne rien écrire.
7. Enregistrez les documents SOLIDWORKS modifiés.

![Examen des différences ERP Pull avant d'appliquer les propriétés dans SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-pull-review-20260931.png)

La grille utilise le vert pour **Added**, le jaune pour **Changed** et le rouge pour **Deleted**. Chaque cellule affiche la valeur proposée ou une raison explicite pour laquelle elle est ignorée. Les colonnes intégrées et calculées, la propriété servant à associer l'article ERP, les documents en lecture seule, les champs ERP absents ou nuls et les destinations non prises en charge ne sont pas écrasés.

Aucune donnée n'est écrite pendant l'examen des différences. Après l'approbation, PDMPublisher demande au connecteur de valider de nouveau le même instantané ERP et vérifie encore l'identité et les valeurs du document local. Si les données ERP ou la cible SOLIDWORKS ont changé, l'application est interrompue et vous devez produire un nouvel aperçu. Pull modifie uniquement les propriétés; il ne change pas la structure de l'assemblage ou de la nomenclature, ne télécharge pas de pièces jointes, ne crée pas d'articles ERP et n'enregistre pas automatiquement les documents SOLIDWORKS.

## Développement de connecteurs

Pour créer et charger votre propre intégration C#, y compris la prise en charge de Pull avec aperçu, consultez [Créer un connecteur ERP personnalisé](pdmpublishersolidworks_erp-connector.md).
