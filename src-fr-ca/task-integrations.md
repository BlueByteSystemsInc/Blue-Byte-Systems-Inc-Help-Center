---
title: Page de tâche Intégrations | PDMPublisher | SOLIDWORKS PDM
description: Exécuter un connecteur ERP configuré après une publication réussie de la tâche PDM PDMPublisher.
ms.date: 10/09/2026
ms.topic: how-to
---

# Page de tâche Intégrations

Utilisez **Intégrations** pour envoyer les articles publiés et certaines variables PDM vers un connecteur ERP après une publication réussie de la tâche PDM.

> [!IMPORTANT]
> Cette page configure l'intégration sans surveillance de la **tâche PDM**. Pour les opérations Push et Pull interactives dans SOLIDWORKS, consultez [ERP Sync](pdmpublishersolidworks_erp-sync.md).

![Page Intégrations de la tâche PDM PDMPublisher](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-integrations-20261009.png)

## Configurer une connexion

1. Installez un connecteur ERP pris en charge et ses dépendances `PDMPublisher.ERPExtension.dll` dans un dossier local stable sur chaque hôte de tâches.
2. Ouvrez la tâche dans SOLIDWORKS PDM Administration et sélectionnez **Intégrations**.
3. Sélectionnez **Add connection...**, puis choisissez la DLL du connecteur.
4. Saisissez un nom de connexion et configurez le serveur, les identifiants et les mappages.
5. Sélectionnez **Test connection**. Le test vérifie la connexion sans publier de données ERP.
6. Configurez le même nom de connexion sous le compte Windows qui exécute la tâche sur chaque hôte.
7. Activez **Sync published document items and mapped properties after successful publishing**.
8. Choisissez si une erreur d'intégration doit faire échouer la tâche, puis enregistrez-la.

Les connexions sont chiffrées pour l'utilisateur Windows actuel et enregistrées sous `%LOCALAPPDATA%\Blue Byte Systems Inc\PDMPublisher\TaskConnections`. Les identifiants ne sont pas inclus dans les profils exportés.

## Paramètres

| Paramètre | Comportement |
| --- | --- |
| **Saved connection** | Sélectionne la connexion locale. Le même nom doit exister pour le compte d'exécution sur chaque hôte. |
| **PDM variables to include** | Liste de variables PDM séparées par des virgules. Une valeur de configuration remplace la valeur `@` correspondante. |
| **Mark the task failed if integration fails** | Marque la tâche comme échouée si Push échoue. Les fichiers publiés sont conservés. |

## Comportement et limites

- L'intégration s'exécute uniquement si la publication et la copie des sorties réussissent.
- Le connecteur reçoit les articles, les variables demandées et les fichiers créés pendant l'exécution actuelle.
- Un Push échoué n'est pas relancé automatiquement, car l'ERP peut avoir été partiellement modifié.
- Les téléversements sont limités à un fichier par format et par article.
- Les miniatures, la génération ou l'écriture de numéros d'article, et la synchronisation hiérarchique des nomenclatures ERP ne sont pas prises en charge par la tâche PDM.

Pour les identifiants et mappages propres au connecteur, consultez les guides [ERPNext](pdmpublishersolidworks_erpnext-connector.md), [Odoo](pdmpublishersolidworks_odoo-connector.md) ou [Business Central](pdmpublishersolidworks_business-central-connector.md).
