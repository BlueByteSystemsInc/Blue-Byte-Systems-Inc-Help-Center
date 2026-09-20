---
title: "Paramètres PDM: PDMPublisher pour SOLIDWORKS"
description: "Sélectionnez le coffre PDM local SOLIDWORKS utilisé par les fonctionnalités PDMPublisher PDM."
ms.date: 09/16/2026
ms.topic: how-to
---

# Paramètres PDM

Ouvrez **PDMPublisher > Settings > PDM** pour sélectionner le coffre PDM local SOLIDWORKS utilisé par les paramètres d'utilitaire PDM-aware.

![Paramètres de connexion à le coffre-fort PDM](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)
| Contrôle | Ce qu'il fait |
| --- | --- |
| **Use vault** | Active le comportement PDM-aware pour les commandes et les profils qui le supportent. |
| Liste des fautes | Sélectionne le coffre-fort locale SOLIDWORKS PDM Professional partagée par PDMPublisher. |

Utilisez cette page lorsqu'un profil Save As New ou Clone Tree utilise des numéros de série PDM, des révisions, un enregistrement ou une autre opération dépendante de le coffre-fort. La chambre forte sélectionnée doit avoir une vue locale sur la chambre forte sur l'ordinateur et l'utilisateur Windows actuel doit pouvoir se connecter.

<a id="before-selecting-a-vault"></a>
## Avant de sélectionner une faille

1. Confirmer que la vue du coffre-fort requise existe localement.
2. Connectez-vous à SOLIDWORKS PDM File Explorer au moins une fois.
3. Ouvrez Paramètres et sélectionnez le coffre-fort sur la page **PDM**.
4. Activez **Use vault** et sélectionnez le coffre-fort prévue.
5. Sélectionnez **OK** pour enregistrer le choix.

La chambre forte sélectionnée est utilisée pour les numéros de série, l'enregistrement automatique, les dossiers racine Vault et d'autres outils PDM-aware.

Si aucun coffre-fort n'est disponible, créez ou réparez la vue du coffre-fort locale à l'extérieur de PDMPublisher. La publication qui utilise uniquement les fichiers SOLIDWORKS locaux ne nécessite pas de sélection du coffre-fort.

> [!IMPORTANT]
> La sélection d'un coffre-fort ne déplace pas les fichiers, n'enregistre pas l'utilisateur ou n'accorde pas de permissions PDM. Il identifie seulement le coffre-fort que les commandes PDMPublisher doivent utiliser.
