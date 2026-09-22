---
title: "Connecteur ERPNext | PDMPublisher pour SOLIDWORKS"
description: "Configurer le connecteur ERPNext officiel pour envoyer les données SOLIDWORKS et importer les propriétés ERP mappées après l'examen des différences."
ms.date: 09/31/2026
ms.topic: how-to
---

# Connecteur ERPNext

Le connecteur ERPNext est un connecteur officiel de Blue Byte Systems offert dans le catalogue de connecteurs PDMPublisher. Il envoie les lignes SOLIDWORKS cochées vers ERPNext sous forme d'articles, met à jour les champs mappés, peut demander des numéros de pièce à ERPNext, téléverse des fichiers et aperçus facultatifs et synchronise les relations sélectionnées vers des nomenclatures provisoires gérées.

![Connecteur ERPNext officiel et ses paramètres](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-connector-settings-20260920.png)

> [!NOTE]
> Push et Pull ne créent pas de mouvements de stock, de bons de commande, de définitions de champs personnalisés, de nomenclatures soumises ou de nomenclatures actives par défaut. Pull modifie uniquement les propriétés SOLIDWORKS mappées.

## Préparer ERPNext

Avant de configurer PDMPublisher :

- Créez un utilisateur d'intégration ERPNext et générez sa clé API et son secret API.
- Accordez-lui l'accès en lecture, création et écriture aux enregistrements **Item** visés par la synchronisation.
- Pour les téléversements, accordez la création de **File** et l'écriture sur Item.
- Pour les nomenclatures, accordez l'accès à la société configurée et les droits de lecture, création et mise à jour des enregistrements **BOM**.
- Vérifiez que le groupe d'articles et l'unité de mesure configurés existent déjà.
- Créez les champs `custom_*` requis sur le DocType **Item**. Le connecteur mappe les valeurs vers des champs existants; il ne crée pas les champs.
- Pour demander les numéros de pièce manquants, configurez les paramètres de stock ERPNext afin de nommer les articles par **Naming Series** et préparez la série à utiliser.

Utilisez un site de test ERPNext ou une société hors production pour valider les autorisations, champs obligatoires, flux de travail et scripts serveur.

## Installer le connecteur

1. Ouvrez **PDMPublisher > Settings > ERP Sync**.
2. Ouvrez **ERP connector settings** et sélectionnez **Refresh**.
3. Sélectionnez **ERPNext** sous **Official Blue Byte Systems Inc**.
4. Sélectionnez **Download** si le connecteur n'est pas installé ou si une version serveur plus récente est disponible.
5. Sélectionnez la ligne ERPNext installée pour afficher ses paramètres.
6. Saisissez les paramètres de connexion et de synchronisation, puis sélectionnez **Test connection**.
7. Sélectionnez **Save** et redémarrez SOLIDWORKS si un connecteur déjà chargé a été remplacé.

**Test connection** vérifie l'authentification et l'accès en lecture aux articles sans créer ni modifier d'enregistrements ERPNext. Les droits de création et d'écriture sont appliqués lors d'une opération Push.

## Paramètres du connecteur

| Paramètre | Fonction |
| --- | --- |
| Server URL | URL racine HTTPS du site ERPNext, sans `/api`, identifiants, requête ou fragment. |
| API key / API secret | Identifiants de l'utilisateur d'intégration ERPNext. Les valeurs sont masquées et stockées dans les paramètres chiffrés de l'utilisateur Windows actuel. |
| Timeout (seconds) | Délai par requête de 1 à 300 secondes. La valeur par défaut est 60. |
| Item code column | Colonne ERP Sync ou propriété personnalisée utilisée comme `item_code`. La valeur par défaut est `PartNumber`; aucun repli vers le nom de fichier. |
| Item group | Groupe d'articles ERPNext existant attribué aux nouveaux articles. La valeur par défaut est `Products`. |
| Stock unit of measure | Unité ERPNext existante attribuée aux nouveaux articles. La valeur par défaut est `Nos`. |
| Skip empty values | Conserve les valeurs ERPNext lorsque les valeurs sources mappées sont vides. Les propriétés sources absentes sont toujours omises. |
| Request missing part numbers | Demande un code d'article à ERPNext lorsque la propriété personnalisée modifiable sélectionnée est vide, puis écrit le numéro confirmé dans SOLIDWORKS. |
| Item naming series | Série de noms ERPNext utilisée pour demander les numéros de pièce manquants. |
| Property mappings | Mappe les propriétés ou colonnes SOLIDWORKS aux champs Item pris en charge. Par défaut, `Description` est mappé vers `description`. |
| Maintain stock | Valeur `is_stock_item` par défaut des nouveaux articles. |
| Allow sales | Valeur `is_sales_item` par défaut des nouveaux articles. |
| Allow purchase | Valeur `is_purchase_item` par défaut des nouveaux articles. |
| BOM company | Société ERPNext utilisée pour la synchronisation des nomenclatures provisoires gérées. |
| Upload thumbnail | Joint l'aperçu SOLIDWORKS capturé et le définit comme image de l'article ERPNext. |
| Upload exported files | Téléverse les fichiers existants dont le nom de base correspond au modèle source. Aucun export n'est généré. |
| File extensions | Extensions de pièces jointes séparées par des virgules. La valeur par défaut est `step,stp,dxf,pdf`. |
| Export folder | Dossier des fichiers exportés. Laissez vide pour utiliser le dossier de chaque modèle source; les sous-dossiers ne sont pas parcourus. |

## Mapper les propriétés

1. Saisissez l'URL du serveur et les identifiants API.
2. Ouvrez **Property mappings > ...** et sélectionnez **Load ERP fields**.
3. Sélectionnez une propriété SOLIDWORKS ou une colonne ERP Sync disponible comme source.
4. Sélectionnez le champ ERPNext et enregistrez les paramètres du connecteur.

La découverte lit les métadonnées Item sans lire les valeurs d'articles ni écrire d'enregistrements. Les cibles prises en charge sont `item_name`, `description`, `is_stock_item`, `is_sales_item`, `is_purchase_item` et les champs scalaires modifiables `custom_*`. Les tables et les champs masqués, en lecture seule ou non pris en charge sont exclus.

Utilisez les noms de champs ERPNext plutôt que leurs étiquettes. Les mappages booléens acceptent `True/False`, `Yes/No` ou `1/0`. Les champs numériques exigent un texte numérique invariant comme `12.5`. Les noms de propriétés sont comparés sans tenir compte de la casse, mais les codes d'article sont comparés exactement.

<a id="pull-mapped-properties"></a>
## Importer les propriétés mappées

Sélectionnez les lignes ERP Sync voulues et choisissez **Pull**. Le connecteur lit les articles ERPNext correspondants et utilise chaque mappage de propriété en sens inverse. Le champ ERP devient la source et sa propriété personnalisée SOLIDWORKS mappée devient la destination.

Examinez les valeurs ajoutées, modifiées, inchangées et ignorées dans la grille des différences avant de sélectionner **Apply to SOLIDWORKS**. Pull n'écrase jamais la propriété servant à associer le code d'article ni les colonnes intégrées ou calculées. Les valeurs ERP absentes ou nulles conservent la valeur locale; lorsque **Skip empty values** est activé, le texte ERP vide est aussi ignoré. Les documents sont marqués comme modifiés et doivent être enregistrés manuellement.

Consultez [Importer les propriétés ERP dans SOLIDWORKS](pdmpublishersolidworks_erp-sync.md#pull-erp-properties-into-solidworks) pour connaître le flux complet de révision et de validation.

## Envoyer les articles et propriétés

1. Ouvrez [ERP Sync](pdmpublishersolidworks_erp-sync.md) pour un document SOLIDWORKS enregistré.
2. Préparez les lignes et cochez uniquement les articles à envoyer.
3. Sélectionnez le connecteur ERPNext.
4. Ouvrez la flèche à côté de **Push** et choisissez **Properties**, **Create items + properties**, **BOM** ou une combinaison prise en charge.
5. Sélectionnez **Push** et examinez chaque résultat de ligne et le résumé.

**Properties** exige que tous les articles cochés existent. **Create items + properties** crée les articles manquants et met à jour les champs mappés. Les articles existants conservent leur identité, groupe, unité de stock et champs ERP non liés. Les lignes répétées ayant le même code et les mêmes valeurs sont envoyées une seule fois; des valeurs conflictuelles arrêtent le lot avant toute écriture.

## Surveiller la synchronisation et examiner le rapport

Après avoir sélectionné **Push**, PDMPublisher verrouille la fenêtre de révision et affiche la progression pendant la synchronisation des articles cochés. Gardez SOLIDWORKS ouvert jusqu'à la fin de l'opération.

![Synchronisation ERPNext en cours](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-progress-20260928.png)

Une fois la synchronisation terminée, le **rapport ERP Sync** affiche le résumé de l'exécution et une ligne pour chaque article coché.

![Rapport de synchronisation ERPNext terminé](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-report-20260927.png)

Chaque ligne indique l'un des résultats suivants :

- **Success** : l'article a été traité avec succès.
- **No sync needed** : ERPNext contenait déjà les valeurs demandées et aucune modification n'était nécessaire.
- **Failure** : l'article a échoué, était incomplet ou n'a pas été traité après l'arrêt de l'exécution.

Lorsqu'une exécution réussie ne retourne aucun résultat individuel, les lignes concernées sont marquées **Success** et précisent que le connecteur n'a pas fourni les changements par article. Utilisez le résumé pour examiner les nombres créés, mis à jour, inchangés, téléversés, ignorés et les nomenclatures. Le champ de recherche filtre les lignes; **Copy report** copie le rapport complet et **Save report...** l'enregistre dans un fichier.

## Demander les numéros de pièce manquants

Activez **Request missing part numbers**, choisissez une propriété personnalisée modifiable comme **Item code column** et saisissez la série ERPNext. Les valeurs vides amènent ERPNext à attribuer un code; les numéros confirmés sont réécrits dans les lignes de modèle ou de liste de pièces soudées correspondantes.

Les documents SOLIDWORKS sont marqués comme modifiés, mais ne sont pas enregistrés automatiquement. Enregistrez-les pour conserver les numéros. Les numéros existants ne sont pas remplacés. Les lignes groupées, agrégées ou fantômes ne peuvent pas recevoir de numéros générés.

## Téléverser les aperçus et fichiers exportés

Les téléversements sont des pièces jointes ERPNext privées. Les fichiers exportés doivent déjà exister avec le même nom de base que le modèle source, par exemple `Bracket.SLDPRT` et `Bracket.step`. Les fichiers et aperçus manquants sont ignorés et comptés. Un fichier de plus de 20 Mo arrête l'opération avant l'écriture des articles.

Les instances répétées sont téléversées une seule fois par article pendant une opération Push. Les opérations ultérieures peuvent créer d'autres enregistrements File; les pièces jointes existantes ne sont pas supprimées.

## Synchroniser les nomenclatures provisoires

La synchronisation exige une vue ERP Sync **Indented** sans regroupement et une **BOM company** configurée. Cochez chaque assemblage parent et les enfants directs à inclure. Un assemblage coché sans enfant coché est ignoré.

Le connecteur crée ou met à jour sa propre nomenclature provisoire marquée pour le fichier source, la configuration et la société. Chaque synchronisation réussie remplace la liste de matières de ce brouillon par l'instantané des enfants cochés. Le connecteur ne soumet pas, n'active pas et ne définit pas la nomenclature par défaut. Il ne modifie pas les nomenclatures soumises ou les autres brouillons.

## Traiter les échecs en toute sécurité

Le connecteur s'arrête à la première erreur API et ne réessaie pas ou n'annule pas automatiquement les modifications terminées. Si une requête expire ou si une réponse ne peut pas être confirmée, l'écriture peut tout de même avoir atteint ERPNext. Vérifiez l'article, la pièce jointe ou la nomenclature signalée avant de réessayer.

Lorsque des numéros générés ont été confirmés avant un échec ultérieur, PDMPublisher les retourne pour l'écriture locale. Si cette écriture échoue, utilisez les valeurs signalées pour la récupération au lieu de demander de nouveaux numéros.

## Pages connexes

- [ERP Sync](pdmpublishersolidworks_erp-sync.md)
- [Créer un connecteur ERP personnalisé](pdmpublishersolidworks_erp-connector.md)
