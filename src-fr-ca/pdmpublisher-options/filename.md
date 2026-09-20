---
title: "Nom de fichier Options PDMPublisher"
description: "Configurez le modèle de nom de fichier de sortie utilisé par la tâche PDM PDMPublisher et le complément de SOLIDWORKS."
ms.date: 08/13/2026
ms.topic: reference
---

# Nom du fichier

![Définition du nom de fichier dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Définit le modèle de nom de fichier de sortie. Vous pouvez combiner du texte statique avec des propriétés personnalisées SOLIDWORKS ou des variables PDM.

> [!NOTE]
> Ce réglage est partagé par les **tâche PDM** et **SOLIDWORKS add-in**. Les variables PDM sont disponibles lors de la publication dans un contexte voûté; les propriétés personnalisées SOLIDWORKS et les supports de place intégrés sont disponibles dans le contexte de fichier actif.

Utilisez des valeurs uniques comme le numéro de pièce, la révision, le nom de configuration ou le nom de feuille lorsqu'un fichier source peut créer plusieurs exportations.

Utilisez les supports **File Number** pour extraire les 3, 4, 5 ou 6 premiers chiffres de la première séquence numérique dans un nom de fichier source. Utilisez les espaces **File Number Range** pour organiser les sorties en gammes numériques. Voir [Numéro de fichier Placeholders](../pdmpublisherspecialvariable.md#file-number-placeholders) pour tous les placeholders disponibles, les exemples et le comportement de repli.

> [!IMPORTANT]
> Si **Convert multiple configurations** est activé, inclure `ConfigurationName` ou une autre valeur spécifique à la configuration dans le nom de fichier.

<a id="existing-files-in-pdm"></a>
## Fichiers existants dans PDM

Si le fichier exporté existe déjà dans PDM, la tâche PDM écrase le fichier en créant une nouvelle version. L'complément SOLIDWORKS fait la même chose lors de la publication dans un contexte du coffre-fort sélectionné et l'utilisateur a les autorisations requises.

Lorsque PDMPublisher ajoute ou vérifie le fichier exporté, le commentaire d'enregistrement indique que le fichier a été ajouté ou vérifié par PDMPublisher.
