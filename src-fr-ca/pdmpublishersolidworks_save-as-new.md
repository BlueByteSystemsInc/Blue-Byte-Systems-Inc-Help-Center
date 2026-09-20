---
title: "Save As New-PDMPublisher pour SOLIDWORKS"
description: "Enregistrer une copie native SOLIDWORKS avec des noms réutilisables, des destinations, des numéros de série PDM, des dessins associés et des actions post-sauvetage."
ms.date: 09/15/2026
ms.topic: how-to
---

# Save As New

**Save As New** crée un document natif séparé SOLIDWORKS sans renommer le document source ou ses modèles référencés. Ouvrez **PDMPublisher > Settings > Save As New** pour configurer la commande.

![Save As New nom de fichier, destination, PDM, propriété et paramètres macro](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)
<a id="configure-the-new-file"></a>
## Configurer le nouveau fichier

1. Saisissez un modèle **Filename**. L'extension source est automatiquement ajoutée.
2. Activez éventuellement **Save the new to this destination** et entrez un modèle de dossier ou de dossier existant.
3. Activez **Show Save As dialog** lorsque l'utilisateur doit confirmer ou modifier la cible à chaque fois.
4. Sélectionnez toutes les options post-sauvetage, puis sélectionnez **OK**.
5. Ouvrez un document et sélectionnez **Save As New**, ou utilisez la flèche à côté de la commande pour choisir un profil enregistré.

Tapez `{` dans un nom de fichier ou un éditeur de destination pour insérer une valeur de document, une propriété, une valeur de dossier, une valeur PDM ou un jeton **Prompt user**. Une valeur induite n'affecte que le chemin de sortie; elle ne modifie pas les propriétés du document.

<a id="options"></a>
## Options

| Option | Comportement |
| --- | --- |
| Utiliser ce numéro de série | Réserve une valeur à partir du générateur de numéros de série PDM sélectionné et la met à disposition du modèle de nom ou de destination. |
| Vérifier automatiquement vers PDM | Ajoute et vérifie le modèle sauvegardé et le dessin associé. La destination doit être à l'intérieur du coffre sélectionné. |
| Reconstruire avant d'enregistrer | Reconstruire la configuration active, y compris les sous-ensembles d'assemblage, et s'arrêter si la reconstruction échoue. |
| Ouvrir la nouvelle copie après l'enregistrement | Ouvre la copie sauvegardée et en fait le document actif. |
| Ajouter les dimensions calculées de la boîte de raccordement | Écrit `Bounding Box Length`, `Bounding Box Width` et `Bounding Box Height` en millimètres pour la configuration active d'une pièce ou d'un ensemble. |
| Apporter le dessin associé | Copie un dessin ouvert ou du même nom à côté de la nouvelle pièce ou de l'assemblage et met à jour sa référence de modèle. |
| Exécuter la macro après l'enregistrement | Exécute la méthode macro sélectionnée sur la nouvelle copie avant l'enregistrement automatique PDM. La macro doit enregistrer ses propres changements. |

> [!NOTE]
> Le nettoyage de Property Doctor est visible dans le modèle de paramètres actuel, mais n'est pas encore activé pour Save As New. Utilisez Property Doctor séparément jusqu'à ce que cette automatisation soit libérée.

<a id="profiles"></a>
## Profils

La zone **Save As New profiles** stocke les configurations de commandes réutilisables. Ajouter ou modifier un profil dans Paramètres, puis utiliser la flèche à côté de **Save As New** dans le CommandManager pour l'exécuter. Le premier profil est traité par défaut.

<a id="validation-and-file-safety"></a>
## Validation et sécurité des dossiers

Save As New rejette un nom de fichier inchangé, un fichier cible existant, une extension SOLIDWORKS différente, une destination non disponible et un nom de fichier déjà présent dans le coffre-fort sélectionnée. Si le modèle est sauvegardé mais qu'un enregistrement macro ou PDM ultérieur échoue, l'erreur explique que les nouveaux fichiers existent déjà et doivent être inspectés.
