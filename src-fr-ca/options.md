---
title: "Options : PDMPublisher"
description: "Référence courte pour chaque option de configuration des tâches PDMPublisher disponible dans SOLIDWORKS PDM Professional."
ms.date: 08/09/2026
ms.topic: conceptual
---

# Page de tâche des options

La page des tâches **Options** contrôle où PDMPublisher écrit des fichiers exportés, quels formats sont créés, comment les PDF sont fusionnés et comment la tâche PDM se comporte quand elle tourne.

> [!IMPORTANT]
> C'est la page des options **tâche PDM**. Les paramètres partagés avec le complément SOLIDWORKS utilisent les mêmes pages de détails et identifient leur comportement spécifique au produit. Voir [Tâche PDM vs Complément SOLIDWORKS](pdmpublisher-product-differences.md).

![Page de travail des options PDMPublisher](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/page-options.png)
Utilisez cette page comme une carte rapide. Chaque paramètre se connecte à sa propre page avec la capture d'écran, l'explication et les notes correspondantes.

<a id="recommended-first-setup"></a>
## Première configuration recommandée

Examinez ces paramètres avant d'enregistrer une nouvelle tâche :

- [Endroit d'exportation](pdmpublisher-options/export-location.md)
- [Nom du fichier](pdmpublisher-options/filename.md)
- [Formulaires de fichiers](pdmpublisher-options/file-formats.md)
- [Utilisez cette version de SOLIDWORKS](pdmpublisher-options/use-this-version-of-solidworks.md)
- [Template](pdmpublisher-options/template.md), lors du traitement des assemblages ou des quantités
- [Logs d'activités par défaut](pdmpublisher-options/turn-on-activity-tracking.md), lors de l'essai d'une nouvelle tâche

<a id="output"></a>
## Produit

| Réglage | Résumé | Détails |
|---|---|---|
| Lieu d'exportation | Dossier de destination ou modèle de chemin dynamique pour les fichiers générés. | [Ouvrir](pdmpublisher-options/export-location.md) |
| Nom du fichier | Modèle de nom de fichier de sortie. Utilisez des variables pour garder les fichiers exportés uniques. | [Ouvrir](pdmpublisher-options/filename.md) |
| Formats de fichiers | Sélectionnez un ou plusieurs formats d'exportation tels que PDF, DXF, DWG, STEP, eDrawings, 3MF, IFC et autres. | [Ouvrir](pdmpublisher-options/file-formats.md) |
| Utiliser @ Tab pour évaluer les chemins | Permet à l'onglet de configuration `@` de résoudre les variables utilisées dans le chemin d'exportation ou le nom de fichier. | [Ouvrir](pdmpublisher-options/use-at-tab-to-evaluate-paths.md) |
| Créer une référence du fichier de destination vers le fichier source | Crée une référence PDM à partir du fichier exporté vers le fichier source. | [Ouvrir](pdmpublisher-options/create-reference-from-destination-file-to-source-file.md) |
| Supprimer les duplicatas en dehors du dossier de destination | Supprime les fichiers de sortie dupliqués en dehors du dossier de destination. | [Ouvrir](pdmpublisher-options/delete-duplicates-outside-destination-folder.md) |
| Variables de carte entre la source et le fichier de destination | Copie les métadonnées cartographiées du fichier source vers le fichier de sortie généré. | [Ouvrir](pdmpublisher-options/map-variables-between-source-and-destination-file.md) |

<a id="export-behavior"></a>
## Comportement à l'exportation

| Réglage | Résumé | Détails |
|---|---|---|
| Document affecté par l'exportation | Exporte le fichier de haut niveau qui a déclenché la tâche. | [Ouvrir](pdmpublisher-options/export-active-document.md) |
| Exporter les références aux formats de fichiers individuellement | Exporte les documents référencés comme des fichiers de sortie séparés. | [Ouvrir](pdmpublisher-options/export-references-individually.md) |
| Convertir plusieurs configurations | Traite chaque partie et configuration d'assemblage au lieu d'une seule configuration. | [Ouvrir](pdmpublisher-options/convert-multiple-configurations.md) |
| Demander à l'utilisateur de sélectionner la configuration au démarrage | Prompte l'utilisateur pour la configuration lorsque la tâche commence. | [Ouvrir](pdmpublisher-options/ask-user-to-select-configuration-on-startup.md) |
| Demander à l'utilisateur de spécifier les fichiers lors du lancement de la tâche | Il invite l'utilisateur à choisir les fichiers, les références et les formats au lancement. | [Ouvrir](pdmpublisher-options/ask-user-to-specify-files-on-task-launch.md) |
| Archiver tous les documents exportés (.zip) | Crée un paquet ZIP contenant les fichiers exportés. | [Ouvrir](pdmpublisher-options/archive-all-exported-documents.md) |
| Exporter des pièces en tôle à 1:1 plan DXF | Exporte des motifs plats en tôle en fichiers 1:1 DXF. | [Ouvrir](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md) |
| Corps divisés | Enregistre les pièces multi-corps comme fichiers de corps séparés. | [Ouvrir](pdmpublisher-options/split-bodies.md) |
| Utilisez Microsoft Print To PDF pour enregistrer les PDF | Utilise le chemin d'imprimante Windows PDF pour la création de PDF. | [Ouvrir](pdmpublisher-options/use-microsoft-print-to-pdf.md) |

<a id="pdf"></a>
## PDF

| Réglage | Résumé | Détails |
|---|---|---|
| Fusionner les PDF exportés en un seul maître PDF | Combine les sorties PDF en un seul maître PDF. | [Ouvrir](pdmpublisher-options/merge-exported-pdfs.md) |
| Ajouter un tableau de contenu à PDF fusionné | Insère une table des matières générée dans le PDF fusionné. | [Ouvrir](pdmpublisher-options/add-table-of-content-to-merged-pdf.md) |
| Colonnes du tableau | Contrôle les colonnes affichées sur la table des matières PDF générée. | [Ouvrir](pdmpublisher-options/table-columns.md) |
| Marqueurs PDF | Définit le texte de signet pour les PDF fusionnés. | [Ouvrir](pdmpublisher-options/pdf-bookmarks.md) |

<a id="drawing-sheets"></a>
## Feuilles de dessin

| Réglage | Résumé | Détails |
|---|---|---|
| Feuilles à exporter | Choisissez toutes les feuilles de dessin ou seulement les feuilles correspondant à un motif. | [Ouvrir](pdmpublisher-options/sheets-to-export.md) |
| Modèle de nom de feuille | Modèle Wildcard utilisé pour l'exportation de feuilles correspondantes seulement. | [Ouvrir](pdmpublisher-options/sheet-name-pattern.md) |

<a id="pdm-and-solidworks"></a>
## PDM et SOLIDWORKS

| Réglage | Résumé | Détails |
|---|---|---|
| Fonctionne avec la dernière version | Force PDM à obtenir la dernière version de fichier avant de publier. | [Ouvrir](pdmpublisher-options/work-with-latest-version.md) |
| Mode vue rapide (dessin seulement) | Ouvre les dessins en mode vue rapide où supporté. | [Ouvrir](pdmpublisher-options/quick-view-mode.md) |
| Utiliser la recherche pour localiser les dessins | Utilise le comportement de recherche PDM lorsque les dessins ne sont pas à côté du modèle. | [Ouvrir](pdmpublisher-options/use-pdm-search-to-locate-drawings.md) |
| Utilisez cette version de SOLIDWORKS | Sélectionne qui a installé la version SOLIDWORKS devrait exécuter la tâche. | [Ouvrir](pdmpublisher-options/use-this-version-of-solidworks.md) |
| Masquer les tâches dans l'explorateur de fichiers | Cache la commande de tâches dans le menu de clic droit de l'Explorateur de fichiers PDM. | [Ouvrir](pdmpublisher-options/hide-task-in-file-explorer.md) |

<a id="bom-activity-logs-and-advanced"></a>
## BOM, journaux d'activités et avancé

| Réglage | Résumé | Détails |
|---|---|---|
| Modèle | Sélectionne le modèle/la mise en page de BOM utilisé pour la sortie quantity-ware. | [Ouvrir](pdmpublisher-options/template.md) |
| Méthode de calcul | Choisissez comment les références sont calculées pour l'évaluation de la BOM et de la quantité. | [Ouvrir](pdmpublisher-options/calculation-method.md) |
| Utiliser BOM dérivé du dessin | Utilise le premier BOM nommé enregistré sur le dessin d'assemblage associé, avec le BOM calculé configuré comme un repli. | [Ouvrir](pdmpublisher-options/use-drawing-derived-bom.md) |
| Journaux d'activité du coffre-fort | Crée des journaux détaillés dans le dossier voûté configuré lorsque la publication commence. | [Ouvrir](pdmpublisher-options/turn-on-activity-tracking.md) |
| Logs d'activités synthétisés par serveur | Envoie les journaux d'activité au serveur pour l'examen futur du support. | [Ouvrir](pdmpublisher-options/server-synced-activity-logs.md) |
| Dossier du journal (par défaut seulement) | Dossier du coffre-fort PDM où les journaux sont stockés. | [Ouvrir](pdmpublisher-options/log-folder-vault-only.md) |
| Ignorer les sous-ensembles d'enfants lorsque les contrôles d'état échouent | Empêche le traitement des enfants de sous-ensembles défaillants. | [Ouvrir](pdmpublisher-options/ignore-sub-assembly-children-when-condition-checks-fail.md) |

<a id="related-pages"></a>
## Pages connexes

- [Page de travail sur les annotations](annotations.md)
- [Page de travail sur les conditions](conditions.md)
- [Page de travail sur les points prévus](scheduleditems.md)
