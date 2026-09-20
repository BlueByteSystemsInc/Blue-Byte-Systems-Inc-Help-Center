---
title: "Aide Pane des tâches PDMPublisher pour SOLIDWORKS"
description: "Utilisez la documentation PDMPublisher intégrée dans le volet des tâches SOLIDWORKS et dépannez le chargement WebView2."
ms.date: 09/16/2026
ms.topic: how-to
---

# Panneau d'aide

Le volet des tâches PDMPublisher est un navigateur de documentation. Les commandes et les paramètres sont passés à l'onglet SOLIDWORKS **PDMPublisher** CommandManager et au menu **Tools > PDMPublisher**.

![Volet d’aide PDMPublisher à côté de l’assemblage SOLIDWORKS actif](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)

Le panneau ouvre le compact [PDMPublisher pour la page de bienvenue SOLIDWORKS] (https://pdmpublisher.com/help/addinwelcome.html). Sélectionnez un lien de documentation pour naviguer dans le panneau. Liens qui demandent une nouvelle fenêtre ouverte dans le navigateur Web par défaut.

<a id="help-pane-links"></a>
## Aide Liens de panneau

| Lien | Ouvre |
| --- | --- |
| **Commands** | Référence de la commande CommandManager et comportement profil-menu. |
| **Settings** | Boîte de dialogue des paramètres unifiés et référence de transfert des paramètres. |
| **Save As New** | Workflow de copie native et tous les contrôles Save As New. |
| **Property Doctor** | Examen des biens, colonne, action, prévisualisation et application du workflow. |
| **Clone Tree** | Copie, renommer, destination, révision et flux ZIP. |
| **Publish** | Publier les profils, les paramètres d'exportation et l'exécution des tâches. |
| **Full overview** | Compléter PDMPublisher pour un aperçu SOLIDWORKS. |
| **Installation** | Installation MSI et activation complémentaire. |
| **Licensing** | Essai, activation, désactivation et gestion des licences. |
| **Support** | Chaîne de support Blue Byte Systems. |

Utilisez la barre de défilement du panneau de tâches lorsque les liens inférieurs sont à l'extérieur de la zone visible. Les commandes de broche et d'effondrement dans l'en-tête du panneau de tâches sont les commandes SOLIDWORKS : la broche maintient le panneau ouvert et l'effondrement renvoie de l'espace à la zone graphique.

<a id="requirements"></a>
## Exigences

La page intégrée utilise Microsoft Edge WebView2 Runtime. Les installations Windows actuellement prises en charge ont normalement déjà le Evergreen Runtime.

Si le panneau signale que l'aide ne peut pas être chargée:

1. Confirmez que l'ordinateur peut ouvrir `https://pdmpublisher.com/help/addinwelcome.html` dans un navigateur.
2. Sélectionnez le message dans le panneau à réessayer.
3. Installer ou réparer [Microsoft Edge WebView2 Runtime](https://developer.microsoft.com/microsoft-edge/webview2/) si le message indique que l'exécution n'est pas disponible.
4. Redémarrez SOLIDWORKS.

Les commandes d'édition et d'utilitaire restent disponibles si la page d'aide ou WebView2 ne peut pas être chargée.

> [!NOTE]
> La page de bienvenue intégrée est intentionnellement exclue de l'indexation du moteur de recherche. Les pages de documentation liées restent consultables.
