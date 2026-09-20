---
title: "Importer, exporter et réinitialiser les paramètres PDMPublisher pour SOLIDWORKS"
description: "Sauvegarder, partager, restaurer ou réinitialiser la configuration PDMPublisher complète pour SOLIDWORKS."
ms.date: 09/16/2026
ms.topic: how-to
---

# Importer, exporter et Réinitialiser les paramètres

Utilisez les commandes au bas de **PDMPublisher > Settings** pour transférer ou restaurer la configuration complète de le complément.

![Reset, Importer et Exporter les commandes en bas de Réglages](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)
| Commande | Portée |
| --- | --- |
| **Reset** | Restaurer les paramètres par défaut pour la page de paramètres actuellement sélectionnée. Sélectionnez **OK** pour conserver la réinitialisation. |
| **Export all settings to File...** | Écrit un paquet complet de configuration pour la sauvegarde ou le transfert hors ligne. |
| **Share complete settings using PIN...** | Charge un paquet complet et renvoie un NIP à six chiffres. |
| **Import all settings from File...** | Valide et applique un paquet à partir du disque. |
| **Import complete settings using PIN...** | Télécharger, valider et appliquer un paquet partagé par PIN. |

<a id="recommended-transfer-workflow"></a>
## Flux de travail de transfert recommandé

1. Sur l'ordinateur source, exportez tous les paramètres vers un fichier et conservez-le comme une copie de récupération.
2. Exporter vers un fichier ou créer un NIP pour le destinataire prévu.
3. Sur l'ordinateur de destination, importez le fichier ou entrez le NIP.
4. Examiner la sélection des voûtes, les références de sources externes, les emplacements des fichiers locaux et les chemins de sortie.
5. Ouvrez chaque profil important et exécutez un document d'essai contrôlé.

L'ensemble complet comprend des profils d'utilité, des profils Publier, des annotations, des conditions, des formules, des emplacements de fichiers et des définitions de sources externes. Les secrets SQL Server sont exclus. Les chemins locaux et les noms du coffre-forts peuvent ne pas exister sur un autre ordinateur.

PDMPublisher valide les sections importées et crée une sauvegarde locale horodatée avant de remplacer les paramètres. Si l'application d'une section échoue, elle tente de restaurer la configuration précédente.

> [!WARNING]
> Toute personne ayant un NIP actif peut récupérer sa configuration jusqu'à l'expiration du NIP. Ne pas utiliser le profil ou les paramètres de partage pour les mots de passe ou le texte de requête confidentiel.

Pour déplacer un seul profil Publier, utilisez [Publier des profils](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
