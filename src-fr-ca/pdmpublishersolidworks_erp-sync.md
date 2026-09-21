---
title: "ERP Sync | PDMPublisher pour SOLIDWORKS"
description: "Configurez ERP Sync et envoyez les articles, propriétés et nomenclatures SOLIDWORKS au moyen d'un connecteur ERP installé."
ms.date: 09/20/2026
ms.topic: conceptual
---

# ERP Sync

ERP Sync est activé dans PDMPublisher pour SOLIDWORKS. Il envoie les données sélectionnées des documents, composants, propriétés et nomenclatures SOLIDWORKS à un système ERP au moyen d'un connecteur installé.

Ouvrez **PDMPublisher > ERP Sync** pour examiner et envoyer les données du document actif. Ouvrez **PDMPublisher > Settings > ERP Sync** pour choisir le connecteur et configurer la vue de nomenclature par défaut.

> [!NOTE]
> ERP Sync prend actuellement en charge **Push**. **Pull** est visible dans la fenêtre, mais demeure désactivé jusqu'à ce que cette fonction soit prise en charge.

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

Pour le connecteur fourni par Blue Byte Systems, consultez [Connecteur ERPNext](pdmpublishersolidworks_erpnext-connector.md).

<a id="push-document-data"></a>
## Envoyer les données du document

![Fenêtre ERP Sync avec lignes d'assemblage sélectionnées](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-window-20260920.png)
1. Ouvrez ou activez une pièce, un assemblage ou un dessin SOLIDWORKS enregistré.
2. Sélectionnez **PDMPublisher > ERP Sync**.
3. Sélectionnez un type de nomenclature et un modèle de colonnes. Utilisez **Columns**, **Group by**, **Find**, **Ignore Components** et **Refresh** pour préparer la vue.
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

## Développement de connecteurs

Pour créer et charger votre propre intégration C#, consultez [Créer un connecteur ERP personnalisé](pdmpublishersolidworks_erp-connector.md).
