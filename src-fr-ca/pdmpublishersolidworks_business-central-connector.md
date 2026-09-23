---
title: Connecteur Microsoft Dynamics 365 Business Central | PDMPublisher pour SOLIDWORKS
description: Configurer le connecteur officiel Microsoft Dynamics 365 Business Central pour synchroniser les articles et propriétés après révision.
ms.date: 09/22/2026
ms.topic: how-to
---

# Connecteur Microsoft Dynamics 365 Business Central

Le connecteur officiel Microsoft Dynamics 365 Business Central synchronise les articles et les propriétés mappées entre PDMPublisher pour SOLIDWORKS et Business Central. La version `1.0.0.0` prend en charge Business Central Online dans le nuage commercial Microsoft au moyen de l'API standard v2.0.

Push peut créer des articles et mettre à jour les champs mappés. Pull affiche d'abord les changements de propriétés SOLIDWORKS proposés afin que l'utilisateur puisse les réviser.

> [!IMPORTANT]
> **La synchronisation des nomenclatures n'est pas disponible dans cette version.** L'API standard Business Central v2.0 et les services OData publiés qui ont été vérifiés n'exposent aucune API pour définir les nomenclatures d'assemblage ou de production. Les API de commandes d'assemblage représentent des documents transactionnels, et non les données maîtres d'une nomenclature d'article. Il faut une extension API AL pour Business Central et une prise en charge supplémentaire dans le connecteur. Le connecteur n'annonce pas `BomSync` et refuse une demande de nomenclature avant toute écriture.

## Environnement pris en charge

- Business Central **Online** dans le nuage commercial Microsoft et API standard v2.0.
- Authentification de service à service Microsoft Entra avec des informations d'identification client.
- Société choisie par nom exact ou GUID d'API.
- Création d'articles, mise à jour de propriétés mappées et aperçus Push et Pull obligatoires.

Les installations locales, les nuages souverains, l'authentification de base et la connexion déléguée interactive ne sont pas pris en charge.

## Configurer Microsoft Entra et Business Central

1. Inscrivez une application dans Microsoft Entra ID.
2. Ajoutez l'autorisation **d'application** Business Central `API.ReadWrite.All`, puis accordez le consentement de l'administrateur.
3. Dans Business Central, ouvrez **Microsoft Entra Applications** et ajoutez l'ID client de l'application.
4. Activez l'application et accordez uniquement les droits de lecture et d'écriture nécessaires sur la société et les articles. N'accordez pas **SUPER**.
5. Créez un secret client et copiez sa **valeur**. PDMPublisher n'utilise pas l'ID du secret.
6. Notez l'ID du locataire, le nom de l'environnement et le nom exact ou GUID de la société.

Le locataire et l'environnement figurent dans une adresse comme `https://businesscentral.dynamics.com/{tenant}/{environment}`.

## Installer et configurer le connecteur

1. Ouvrez **PDMPublisher > Settings > ERP Sync**.
2. Ouvrez **ERP connector settings**.
3. Sélectionnez **Microsoft Dynamics 365 Business Central** sous **Official Blue Byte Systems Inc**.
4. Sélectionnez **Download**, puis sélectionnez le connecteur installé.
5. Entrez les paramètres ci-dessous, sélectionnez **Test connection**, puis **Save**.

| Paramètre | Valeur à saisir |
| --- | --- |
| Tenant ID | GUID du locataire Microsoft Entra. |
| Environment | Nom de l'environnement, par exemple `Production` ou `Sandbox`. |
| Client ID | ID de l'application Microsoft Entra activée. |
| Client secret | **Valeur** du secret, et non son ID. La valeur enregistrée est chiffrée pour l'utilisateur Windows actuel. |
| Company | Nom exact ou GUID d'API de la société. Obligatoire si plusieurs sociétés sont accessibles. |
| Timeout (seconds) | Délai maximal de chaque requête; `60` par défaut. |
| Item code column | Colonne ERP Sync ou propriété comparée au numéro d'article Business Central; `PartNumber` par défaut. |
| Skip empty values | Ignore les valeurs vides dans les deux directions. |
| Property mappings | Associe les propriétés SOLIDWORKS aux champs d'article Business Central. Valeur par défaut : `Description` → `displayName`. |

**Test connection** vérifie en lecture l'accès à la société et aux articles. Il ne confirme pas les droits d'écriture; effectuez le premier essai Push dans une société bac à sable.

## Numéros d'article et mappages

Les numéros d'article sont élagués, convertis en majuscules et limités à 20 caractères. Les numéros existants ne sont jamais renommés et aucun numéro automatique n'est demandé.

Les champs modifiables pris en charge comprennent `displayName`, `displayName2`, `type`, `itemCategoryCode`, `blocked`, `gtin`, `unitPrice`, `priceIncludesTax`, `unitCost`, `taxGroupCode`, `baseUnitOfMeasureCode`, `generalProductPostingGroupCode` et `inventoryPostingGroupCode`, lorsqu'ils figurent dans les métadonnées actives.

Les décimales utilisent une notation comme `1.25`. Les booléens acceptent `true/false`, `yes/no` ou `1/0`. Le champ `type` accepte `Inventory`, `Service` ou `Non-Inventory`. Les codes liés doivent déjà exister dans la société.

## Utiliser Push et Pull

Dans **ERP Sync**, choisissez les lignes, sélectionnez le connecteur, puis utilisez **Properties** ou **Create items + properties** sous **Push**. Ne sélectionnez pas **BOM**. Révisez les valeurs courantes et proposées avant de confirmer.

Le connecteur valide de nouveau toutes les lectures avant la première écriture et utilise l'ETag révisé avec `If-Match`. Un plan périmé s'arrête avant l'écriture. Un aperçu est figé, lié à l'instance connectée et utilisable une seule fois. Les écritures ne sont jamais relancées automatiquement.

Pour Pull, sélectionnez les lignes et choisissez **Pull**. Révisez les changements dans **Review ERP pull**, puis sélectionnez **Apply to SOLIDWORKS**. Pull ne remplace pas la propriété d'identité, les colonnes intégrées ou calculées. Enregistrez ensuite les documents SOLIDWORKS modifiés.

## Limites actuelles

- Aucune synchronisation des nomenclatures d'assemblage ou de production sans future extension API AL et nouvelle prise en charge du connecteur.
- Aucun téléversement de pièces jointes ou de vignettes.
- Aucun numéro d'article automatique, suppression d'article, ajustement de stock, dimension, variante ou champ personnalisé arbitraire.
- Une validation portant sur plusieurs articles ne constitue pas une transaction unique. Des changements antérieurs confirmés peuvent subsister après un échec ultérieur. Examinez le résultat et produisez un nouvel aperçu; ne relancez pas aveuglément une validation incertaine.

Consultez aussi [ERP Sync](pdmpublishersolidworks_erp-sync.md).
