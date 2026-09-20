---
title: "Sources externes PDMPublisher pour SOLIDWORKS"
description: "Créer et valider des sources de données SQL Server réutilisables pour les champs PDMPublisher pris en charge."
ms.date: 09/16/2026
ms.topic: how-to
---

# Sources externes

Ouvrez **PDMPublisher > Settings > External Sources** pour maintenir des définitions de sources SQL Server réutilisables.

![Sources externes SQL Server](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Sources_Default_Light_100.png)
Sélectionnez **Add** ou **Edit / Test** pour ouvrir l'éditeur source.

![Éditeur source externe SQL Server](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Source_editor_Default_Light_100.png)
| Commande | Comportement |
| --- | --- |
| **Add** | Crée une définition de source et de requête nommée. |
| **Edit / Test** | Mettre à jour la définition sélectionnée et la tester avec un nom de configuration, un nom de fichier ou une valeur de propriété. |
| **Delete** | Supprime la définition sélectionnée après confirmation. |

Utilisez un nom descriptif qui explique la valeur retournée. Testez la source avec des données représentatives avant de l'insérer dans une propriété, une formule, un nom de fichier ou un workflow d'annotation. Une connexion réussie ne garantit pas que chaque document retourne une ligne, alors définissez le comportement de résultat vide attendu dans le workflow de consommation.

Les valeurs par défaut, les sources externes et les formules sont enregistrées séparément des autres paramètres d'utilité.

> [!IMPORTANT]
> Les identifiants de base de données demeurent locaux et ne sont pas inclus dans les paramètres exportés ou les parts de NIP. Rentrer les identifiants sur l'ordinateur de destination après avoir importé une configuration.

Utilisez un compte de base de données avec seulement les permissions nécessaires pour exécuter la requête. Ne placez pas de mots de passe dans le texte de requête, les noms de profil, les formules ou les annotations.
