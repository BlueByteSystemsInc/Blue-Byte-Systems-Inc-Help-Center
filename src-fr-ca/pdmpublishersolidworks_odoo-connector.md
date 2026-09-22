---
title: Connecteur Odoo | PDMPublisher pour SOLIDWORKS
description: Installer et configurer le connecteur Odoo officiel pour synchroniser les produits, propriétés, pièces jointes et nomenclatures de fabrication après révision.
ms.date: 10/02/2026
ms.topic: how-to
---

# Connecteur Odoo

Le connecteur Odoo est un connecteur officiel de Blue Byte Systems destiné à Odoo 19+ et Odoo Online avec accès à l'API externe JSON-2. Il prend en charge les opérations Push et Pull révisées entre les lignes cochées d'ERP Sync et les produits Odoo.

![Connecteur Odoo officiel et paramètres de configuration](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/odoo-connector-settings-20260931.png)

La clé API identifie l'utilisateur Odoo. Le connecteur n'envoie aucun nom d'utilisateur ni mot de passe de connexion. PDMPublisher chiffre les paramètres enregistrés pour l'utilisateur Windows actuel.

<a id="requirements"></a>
## Exigences

- Utilisez Odoo 19+ ou Odoo Online avec l'API externe JSON-2.
- [Créez une clé API](#create-an-odoo-api-key) pour un utilisateur Odoo réservé à l'intégration.
- Accordez-lui l'accès en lecture aux champs de produit utilisés par les mappages et les droits d'écriture ou de création nécessaires.
- Accordez les droits sur les nomenclatures de fabrication pour synchroniser les nomenclatures.
- Accordez les droits sur les pièces jointes pour téléverser des vignettes ou des fichiers exportés.
- Rendez chaque **Internal Reference** de produit unique. PDMPublisher compare exactement la colonne de code d'article configurée à `product.product.default_code`.
- Effectuez d'abord les essais dans une base de données ou une société Odoo hors production.

Le connecteur utilise l'API JSON-2 d'Odoo, et non les anciens points de terminaison XML-RPC ou JSON-RPC.

<a id="install-the-connector"></a>
## Installer le connecteur

1. Ouvrez **PDMPublisher > Settings > ERP Sync**.
2. Ouvrez **ERP connector settings**, puis sélectionnez **Refresh**.
3. Sélectionnez **Odoo** sous **Official Blue Byte Systems Inc**.
4. Sélectionnez **Download** si le connecteur n'est pas installé ou si une version plus récente est offerte.
5. Sélectionnez la ligne Odoo installée pour afficher ses paramètres.
6. Remplissez les paramètres de connexion et de synchronisation ci-dessous.
7. Sélectionnez **Test connection**.
8. Sélectionnez **Save** pour activer Odoo.

Redémarrez SOLIDWORKS avant de remplacer un connecteur déjà chargé.

<a id="create-an-odoo-api-key"></a>
## Créer une clé API Odoo

Utilisez un utilisateur Odoo réservé à l'intégration et accordez-lui uniquement les droits nécessaires sur les produits, les champs, les pièces jointes, les sociétés et les nomenclatures de fabrication que PDMPublisher doit synchroniser.

1. Connectez-vous à Odoo avec l'utilisateur d'intégration.
2. Ouvrez le menu de l'utilisateur et sélectionnez **My Preferences**.
3. Ouvrez l'onglet **Security**.
4. Sous **API Keys**, sélectionnez **Add API Key**.
5. Entrez un nom reconnaissable, par exemple `PDMPublisher`, puis créez la clé avec la portée `rpc`.
6. Copiez immédiatement la clé générée et conservez-la en lieu sûr. Collez-la dans le champ **API key** de PDMPublisher; n'entrez pas le mot de passe de l'utilisateur.
7. Dans PDMPublisher, sélectionnez **Test connection**, puis **Save** lorsque le test réussit.

![Préférences de sécurité Odoo montrant la clé API de PDMPublisher](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/odoo-create-api-key-20260931.png)

Traitez la clé API comme un mot de passe. Ne l'incluez pas dans des captures d'écran, des journaux, le contrôle de code source ou des fichiers de configuration partagés. Pour remplacer une clé, créez-en une nouvelle, mettez à jour et testez PDMPublisher, enregistrez les paramètres du connecteur, puis supprimez l'ancienne clé dans Odoo.

<a id="connection-settings"></a>
## Paramètres de connexion

| Paramètre | Valeur à saisir |
| --- | --- |
| Server URL | Adresse racine HTTPS du site Odoo, par exemple `https://exemple.odoo.com/`. N'ajoutez aucun chemin d'API, paramètre, fragment ou identifiant. |
| API key | Clé API de l'utilisateur d'intégration Odoo. Les espaces ne sont pas permis. La valeur est masquée et chiffrée localement. |
| Database | Valeur facultative de l'en-tête `X-Odoo-Database`. Laissez généralement ce champ vide pour Odoo Online. |
| Timeout (seconds) | Délai de chaque requête, de 1 à 300 secondes. La valeur par défaut est `60`. |

**Test connection** valide l'adresse et les identifiants, charge les métadonnées des champs de produit modifiables, vérifie les mappages et confirme l'accès en lecture aux produits. Aucun enregistrement Odoo n'est créé ou modifié.

<a id="item-settings"></a>
## Paramètres des articles

| Paramètre | Comportement |
| --- | --- |
| Item code column | Colonne ERP Sync ou propriété personnalisée comparée exactement à l'**Internal Reference** (`default_code`) du produit Odoo. La valeur par défaut est `PartNumber`. Une référence vide ou en double interrompt l'aperçu Push. |
| Skip empty values | Lorsqu'activé, une source mappée vide n'écrase pas la valeur Odoo et une valeur vide lue par Pull ne vide pas la propriété SOLIDWORKS locale. |
| Property mappings | Associe une propriété SOLIDWORKS ou une colonne ERP Sync à un champ scalaire modifiable du produit Odoo. Le mappage par défaut est `Description` → `name`. |

Ouvrez **Property mappings > ...**, puis sélectionnez **Load ERP fields** pour découvrir les champs accessibles à l'utilisateur Odoo actuel. Les cibles comprennent notamment `name`, `description`, `description_sale`, `description_purchase`, `sale_ok`, `purchase_ok`, `weight`, `volume`, `barcode` et les champs personnalisés `x_*` modifiables.

Utilisez les noms de champs d'API, et non les étiquettes traduites. Les booléens acceptent `True/False`, `Yes/No` ou `1/0`. Les nombres utilisent la notation décimale invariante, par exemple `12.5`. Les champs de sélection exigent la clé Odoo enregistrée. Les champs relationnels ne sont pas des cibles de mappage génériques et chaque champ Odoo ne peut être mappé qu'une seule fois.

<a id="bom-setting"></a>
## Paramètre de nomenclature

| Paramètre | Comportement |
| --- | --- |
| Company ID | ID numérique facultatif de la société Odoo utilisé pour la création et la sélection des produits et nomenclatures. Entrez `0` pour utiliser la société actuelle de l'utilisateur API. |

Sélectionnez une société lorsque la recherche de nomenclatures doit être limitée à une seule société. Les droits d'accès Odoo continuent de s'appliquer.

<a id="upload-settings"></a>
## Paramètres de téléversement

| Paramètre | Comportement |
| --- | --- |
| Upload thumbnail | Envoie l'aperçu SOLIDWORKS capturé dans le champ `image_1920` du produit. |
| Upload exported files | Téléverse les fichiers correspondants existants comme enregistrements `ir.attachment`. Le connecteur ne produit pas les exports. |
| Export folder | Dossier contenant les fichiers exportés. Laissez-le vide pour utiliser le dossier de chaque modèle source. |
| File extensions | Extensions séparées par des virgules. La valeur par défaut est `step,stp,dxf,pdf`. |

Le nom de base du fichier exporté doit correspondre à celui du modèle source. Une pièce jointe existante du même nom est mise à jour; les doublons sont refusés. Chaque fichier est limité à 20 Mo et chaque produit à 64 Mo. Les fichiers absents apparaissent comme ignorés dans l'aperçu.

<a id="push-products-and-properties"></a>
## Envoyer les produits et propriétés

1. Ouvrez [ERP Sync](pdmpublishersolidworks_erp-sync.md) et préparez les lignes sources.
2. Cochez uniquement les produits à synchroniser.
3. Sélectionnez **Odoo** comme connecteur.
4. Choisissez les opérations Push nécessaires.
5. Sélectionnez **Push** et examinez toutes les différences. Aucune donnée n'est encore écrite.
6. Sélectionnez **Commit changes** pour valider de nouveau Odoo et appliquer le plan, ou **Cancel** pour ne rien écrire.

![Révision Odoo Push montrant les changements de produits et de propriétés proposés avant la validation](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/odoo-push-review-20261002.png)

Le connecteur peut créer des produits et mettre à jour les champs mappés. Les nouveaux produits utilisent les valeurs Odoo par défaut pour l'unité, la catégorie et le type de produit, sauf si un mappage pris en charge fournit une valeur. Le nom mappé ou le nom de la ligne source devient le nom du nouveau produit. Cette version ne produit pas les Internal References absentes et ne crée pas de champs Odoo personnalisés.

Après un Push réussi, les produits créés ou mis à jour sont disponibles dans l'inventaire Odoo. Les noms des produits, les références internes, les propriétés mappées et les aperçus téléversés correspondent aux changements ERP Sync validés.

![Produits créés dans l'inventaire Odoo après un Push réussi](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/odoo-push-output-20261002.png)

Chaque lecture Odoo enregistrée est vérifiée de nouveau avant la première écriture. Un plan d'aperçu ne peut être utilisé qu'une seule fois. Si les données Odoo changent après l'aperçu, Commit s'arrête et vous devez produire un nouvel aperçu.

<a id="pull-mapped-properties"></a>
## Importer les propriétés mappées

Cochez les lignes SOLIDWORKS, puis choisissez **Pull**. Le connecteur lit les produits Odoo correspondants et inverse les mappages. Examinez les changements locaux proposés dans **Review ERP pull**, puis sélectionnez **Apply to SOLIDWORKS** ou **Cancel**.

Les produits et champs absents ainsi que les valeurs nulles sont ignorés. Une valeur Odoo vide peut vider le texte local uniquement lorsque **Skip empty values** est désactivé. La propriété de code d'article et les destinations intégrées ou calculées demeurent protégées. Pull modifie uniquement les propriétés SOLIDWORKS mappées; il n'importe pas les nomenclatures Odoo dans la structure d'assemblage SOLIDWORKS. Enregistrez ensuite les documents modifiés.

Consultez [Importer les propriétés ERP dans SOLIDWORKS](pdmpublishersolidworks_erp-sync.md#pull-erp-properties-into-solidworks) pour connaître le flux de différences et de validation.

<a id="synchronize-manufacturing-boms"></a>
## Synchroniser les nomenclatures de fabrication

Le connecteur synchronise les relations d'assemblage sélectionnées avec les nomenclatures de fabrication Odoo normales. L'aperçu affiche les ajouts, suppressions et changements de quantité. Les ID de lignes et les paramètres non concernés sont conservés lors d'un changement de quantité, tout comme la quantité de base d'une nomenclature existante.

Avant Commit, PDMPublisher refuse les situations ambiguës ou dangereuses : plusieurs nomenclatures correspondantes, lignes en double, cycles proposés, unités incompatibles, opérations, sous-produits et lignes propres à une variante. Les produits et nomenclatures parents à variantes multiples sont protégés afin de ne pas modifier les variantes sœurs au moyen de champs de modèle partagés.

<a id="limitations-and-safe-retries"></a>
## Limites et nouvelles tentatives sécuritaires

- Le connecteur ne synchronise pas l'inventaire, ne crée pas de champs personnalisés, ne produit pas les Internal References absentes et n'importe pas la structure de nomenclature dans SOLIDWORKS.
- Les vérifications préalables Odoo sont effectuées côté client et ne forment pas une transaction unique couvrant toutes les requêtes.
- Des changements simultanés après la vérification demeurent possibles.
- Un échec partiel peut laisser des changements confirmés dans Odoo.
- Ne relancez pas automatiquement un Commit échoué ou incertain. Examinez Odoo, corrigez la cause et produisez un nouvel aperçu.
- Les produits archivés et les Internal References en double doivent être corrigés dans Odoo.

<a id="related-pages"></a>
## Pages connexes

- [ERP Sync](pdmpublishersolidworks_erp-sync.md)
- [Créer un connecteur ERP personnalisé](pdmpublishersolidworks_erp-connector.md)
- [Connecteur ERPNext](pdmpublishersolidworks_erpnext-connector.md)
