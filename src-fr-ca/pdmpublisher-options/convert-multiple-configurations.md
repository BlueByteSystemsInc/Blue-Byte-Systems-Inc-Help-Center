---
title: "Convertir les options de configurations multiples de PDMPublisher"
description: "Exportez toutes les configurations de pièces et d'assemblage."
ms.date: 08/09/2026
ms.topic: reference
---

# Convertir plusieurs configurations

![Convertissez plusieurs configurations dans PDMPublisher pour SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox5_Convert_multiple_configurations_Light_100.png)
Traite toutes les configurations de pièces et d'assemblage au lieu de seulement la configuration active ou sélectionnée.

> [!NOTE]
> Ce réglage est disponible dans les **tâche PDM** et **SOLIDWORKS add-in**. La tâche commence par sa configuration sélectionnée ou lancée; le complément commence par la configuration active dans SOLIDWORKS.

> [!IMPORTANT]
> Ajouter `ConfigurationName` au [nom de fichier pattern](filename.md) avant d'activer cette option. Sans nom de fichier spécifique à la configuration, les exportations de différentes configurations peuvent s'écraser.

<a id="configuration-filter"></a>
## Filtre de configuration

Le bouton **Configuration Filter** ouvre la boîte de dialogue filtre pour cette option. Utilisez-le lorsque vous ne voulez pas que chaque configuration soit traitée.

![Fichier de configuration](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Configuration_filter_Default_Light_100.png)
Le filtre vous permet d'inclure ou d'exclure les configurations par nom. Utilisez des modèles joker lorsque plusieurs configurations partagent une convention de nommage.

Entrez les modèles dans **Include Configurations** lorsque seules les configurations correspondantes doivent être exportées. Laissez-le vide lorsque toutes les configurations sont autorisées.

Saisissez les motifs dans **Exclude Configurations** lors de la configuration correspondante. Ceci est couramment utilisé pour sauter les configurations de motifs plats lors de l'exportation de formats de modèles tels que `STEP`.

| Objectif | Exemple de modèle | Résultat |
|---|---|---|
| Exporter chaque configuration | `*` | Traite toutes les configurations. |
| Exporter uniquement les configurations de production | `PROD*` | Traitement des configurations dont les noms commencent par `PROD`. |
| Exporter seulement une configuration nommée | `Default` | Processus uniquement `Default`. |
| Tailles d'exportation qui suivent un patron de nommage | `SIZE-*` | Procéder à des configurations telles que `SIZE-S`, `SIZE-M` et `SIZE-L`. |
| Exclure les configurations de motifs plats | `*Flat*` ou `*Flat-Pattern*` dans la liste des exclusions | Passe les configurations planes pendant l'exportation de configuration normale. |

> [!TIP]
> Si vous voulez convertir chaque configuration de modèle en `STEP`, activez **Convert multiple configurations**, incluez `ConfigurationName` dans le [nom de fichier pattern](filename.md), et excluez les configurations planes du filtre de configuration. Cela évite de créer des fichiers STEP indésirables à partir de configurations planes en tôle.
