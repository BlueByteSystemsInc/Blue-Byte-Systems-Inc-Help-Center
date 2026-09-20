---
title: "Emplacement de l'exportation : Options PDMPublisher"
description: "Configurez où la tâche PDM PDMPublisher ou le complément SOLIDWORKS écrit des fichiers exportés."
ms.date: 08/13/2026
ms.topic: reference
---

# Lieu d'exportation

![Détermination de l'emplacement de l'exportation dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Définit le dossier où PDMPublisher écrit des fichiers générés. L'emplacement d'exportation peut indiquer un dossier à l'intérieur du coffre-fort, un chemin relatif, un chemin UNC/serveur, ou un dossier à l'extérieur du coffre-fort.

> [!NOTE]
> Ce réglage est partagé par les **tâche PDM** et **SOLIDWORKS add-in**. La tâche PDM peut utiliser des espaces réservés et des opérations du coffre-fort. L'ajout évalue le chemin du document actuellement ouvert dans SOLIDWORKS et le profil sélectionné.

<a id="path-types"></a>
## Types de trajectoire

PDMPublisher accepte plusieurs styles de chemin :

| Type de chemin | Exemple | Utiliser lorsque |
|---|---|---|
| Voie par défaut (Tâche PDM) | `(VaultRootFolder)\Released PDFs` | Les fichiers exportés doivent être ajoutés au coffre. Utilisez le support `VaultRootFolder` du menu `>...`. |
| Voie relative | `Exports\PDF` | La destination doit être basée sur le fichier source ou le contexte de publication actuel. |
| CNU/chemin du serveur | `\\server\engineering\exports` | La sortie doit être écrite à un emplacement de réseau partagé. |
| En dehors du coffre-fort | `D:\Exports\PDMPublisher` | Les fichiers exportés doivent rester en dehors de PDM. |

> [!IMPORTANT]
> Si l'emplacement est à l'intérieur du coffre-fort, l'utilisateur de la tâche PDM ou l'utilisateur qui publie à partir de le complément doit avoir la permission de créer, vérifier, vérifier et écraser les fichiers dans ce dossier.

Si le dossier d'exportation n'existe pas, PDMPublisher le crée avant d'enregistrer le fichier exporté.

`(VaultRootFolder)` est le moyen préféré pour construire un chemin du coffre-fort dans la tâche PDM car il résout à la racine du coffre-fort locale sur l'ordinateur de tâche.

<a id="browse-button"></a>
## Parcourir le bouton

Le bouton de navigation vous permet simplement de sélectionner un emplacement de dossier statique et d'écrire ce chemin de dossier dans **Export Location**.

Utilisez-le lorsque la tâche doit toujours exporter vers le même dossier fixe. Si le chemin doit changer en fonction du fichier, de la révision, de l'état ou du dossier, utilisez plutôt des placeholders du menu `>...`.

<a id="placeholders"></a>
## Propriétaires

Les entrées bleues dans le champ lieu d'exportation sont des détenteurs de place. Un placeholder est une valeur dynamique que PDMPublisher résout lorsque la publication commence.

Par exemple:

`(TopAssemblyFolder)\Exports\(State)\(Revision)`

Si l'ensemble supérieur est dans:

`C:\PDMVault\Projects\1001`

et l'état du fichier est `Released` avec la révision `B`, PDMPublisher résout l'emplacement d'exportation à :

`C:\PDMVault\Projects\1001\Exports\Released\B`

`(TopAssemblyFolder)` signifie le dossier du fichier de haut niveau en cours de traitement. Pour la tâche PDM, c'est le fichier qui a lancé la tâche. Pour le complément SOLIDWORKS, c'est le document actuellement ouvert dans SOLIDWORKS. Si le fichier de haut niveau est une partie ou un dessin unique, PDMPublisher utilise le dossier de ce fichier.

Par exemple, si la tâche est exécutée :

`C:\PDMVault\Projects\1001\Bracket.SLDPRT`

puis :

`(TopAssemblyFolder)\Exports`

décide:

`C:\PDMVault\Projects\1001\Exports`

Les Placeholders sont utiles lorsque la même tâche ou le même profil du complément doit écrire des fichiers dans différents dossiers selon le fichier en cours de traitement. Vous pouvez utiliser des valeurs exposées par le menu `>...`, comme le dossier source, le nom de fichier, la configuration ou les propriétés personnalisées de SOLIDWORKS. La tâche PDM peut également exposer des valeurs voûtées telles que la révision, l'état, le workflow et les variables PDM.

Utilisez les espaces **File Number** et **File Number Range** pour organiser les exportations en utilisant la première séquence numérique dans un nom de fichier source. Vous pouvez extraire ses premiers 3, 4, 5 ou 6 chiffres ou créer une plage de ce préfixe. Voir [Numéro de fichier Placeholders](../pdmpublisherspecialvariable.md#file-number-placeholders) pour tous les placeholders disponibles, les exemples et le comportement de repli.

> [!TIP]
> Utilisez des emplacements pour les configurations de tâches répétables et les profils supplémentaires. Les chemins codés en dur sont parfaits pour un dossier d'exportation fixe, mais les détenteurs de place font le chemin s'adapter à chaque fichier source.

Pour la tâche PDM, si le chemin utilise des variables stockées dans l'onglet `@` du fichier, voir [Utilisez @ Tab pour évaluer les chemins] (use-at-tab-to-evaluate-paths.md). Cette option n'est pas affichée dans le complément SOLIDWORKS.

<a id="extension-specific-locations"></a>
## Emplacements spécifiques

Utilisez **Customize Location** lorsque différents formats de fichiers ont besoin de dossiers de sortie différents.

![Lieux par boîte de dialogue de format de fichier](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Locations_by_file_format_Default_Light_100.png)
La boîte de dialogue utilise les mêmes noms de format et les mêmes icônes de type de fichier décrites sur la page [Formats de fichier](file-formats.md). Chaque ligne vous permet d'activer un emplacement personnalisé pour ce format de sortie.

Lorsqu'un emplacement spécifique à une extension est activé pour un format de fichier, il remplace le **Export Location** principal pour ce format seulement.

Par exemple:

| Format | Lieu d'exportation principal | Emplacement spécifique à l'extension | Dossier de sortie final |
|---|---|---|---|
| PDF | `C:\PDMVault\Exports` | `C:\PDMVault\Exports\PDF` | `C:\PDMVault\Exports\PDF` |
| DXF | `C:\PDMVault\Exports` | `\\server\laser\DXF` | `\\server\laser\DXF` |
| STEP | `C:\PDMVault\Exports` | Non activé | `C:\PDMVault\Exports` |

Seuls les formats vérifiés/activés utilisent leur emplacement personnalisé. Tout format sans extension spécifique continue d'utiliser le **Export Location** principal.

> [!NOTE]
> Le journal d'activité des tâches PDM et l'onglet Complément SOLIDWORKS **Logs** identifient des chemins personnalisés utilisés par des emplacements spécifiques à une extension.

> [!WARNING]
> Ne pas mettre fin à l'emplacement d'exportation ou à l'emplacement spécifique de l'extension avec une barre oblique.
