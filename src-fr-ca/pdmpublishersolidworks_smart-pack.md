---
title: "Clone Tree.PDMPublisher pour SOLIDWORKS"
description: "Copier les documents et les références de SOLIDWORKS avec les noms de fichiers, les destinations, la gestion de la révision PDM, les fichiers associés, les profils et la sortie ZIP."
ms.date: 10/12/2026
ms.topic: how-to
---

# Clone Tree

Clone Tree construit un plan de copie pour le document actif et ses références. Chaque fichier inclus peut avoir son propre nom et destination tandis que les références SOLIDWORKS sont mises à jour dans les fichiers copiés.

![Arbre de fichiers Clone Tree avec noms de fichiers et dossiers de destination](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/CloneTree/CloneTree_Main_window_Default_Light_100.png)
Ouvrez **PDMPublisher > Settings > Clone Tree** pour sélectionner le numéro de série PDM partagé et maintenir les profils de commande.

![Paramètres du profil Clone Tree](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Clone_Tree_Default_Light_100.png)
<a id="create-a-package"></a>
## Créer un paquet

1. Enregistrer le document SOLIDWORKS actif.
2. Sélectionnez **PDMPublisher > Clone Tree**.
3. Vérifiez les fichiers à copier et décochez les fichiers à exclure.
4. Définir les valeurs **New name** et **Destination folder**. Utilisez le menu de chaque cellule pour les valeurs de document, les propriétés, les valeurs de dossier, les valeurs PDM, les numéros de série ou les formules.
5. Inclure en option les fichiers STEP, PDF ou DXF et configurer la sortie ZIP.
6. Sélectionnez **Copy**.

Les fichiers exclus conservent leurs références originales. Les filtres de recherche et de type ne changent que les lignes visibles; tous les fichiers vérifiés restent dans le plan de copie.

### Sélectionner les fichiers dans la grille

Cliquez avec le bouton droit dans l'arborescence pour modifier les lignes incluses :

| Commande | Comportement |
| --- | --- |
| **Check All** | Coche toutes les lignes de document facultatives. |
| **Uncheck All** | Décoche toutes les lignes facultatives. Les documents racines obligatoires restent cochés. |
| **Check Selected** | Coche les lignes sélectionnées. |
| **Uncheck Selected** | Décoche les lignes facultatives sélectionnées. Un document racine obligatoire ne peut pas être décoché. |

<a id="copy-a-value-through-a-column"></a>
## Copier une valeur dans une colonne

Dans le menu d'une cellule modifiable, utilisez **Copy to all cells in this column**, **Copy to all cells above** ou **Copy to all cells below**. Clone Tree copie la valeur ou la formule selon l'ordre affiché et respecte le filtre courant. **Copy All**, **Copy Above**, **Copy Below** et le remplissage par glissement incluent la ligne ZIP lorsqu'elle est affichée et modifiable. La ligne ZIP peut aussi servir de source. Les lignes masquées, exclues, virtuelles ou non modifiables sont ignorées. Vérifiez chaque nom et dossier avant de sélectionner **Copy**.

<a id="copy-options"></a>
## Copier les options

| Option | Comportement |
| --- | --- |
| Ignorer les composants de la boîte à outils | Leaves Toolbox components out of the copied document set. |
| Copier la dernière révision PDM vers destination | Copie la dernière révision attribuée directement à chaque destination. Il ne met pas à jour le cache du coffre-fort local ou recharge SOLIDWORKS. Les fichiers par défaut sans révision assignée ne peuvent pas utiliser cette option. |
| Version | Dans SOLIDWORKS 2024 et plus récent, enregistre dans la version actuelle ou dans l'une des deux versions précédentes. |
| Fichiers complémentaires | Comprend les fichiers STEP/STP, PDF ou DXF existants du même nom. |
| archive ZIP | Crée un ZIP après que les copies du fichier aient été terminées, en utilisant son propre nom de fichier et destination. |
| Numéro de série PDM | Assigne un numéro réservé par ligne incluse et le réutilise lorsque le nom de fichier et le dossier ont besoin de ce numéro. |

<a id="profiles-and-rules"></a>
## Profils et règles

Les profils Clone Tree préservent les destinations, les préférences de la boîte à outils, les formats d'accompagnement, le comportement de dernière révision, les paramètres ZIP, les dépassements par fichier et les règles ordonnées. Les règles peuvent définir un nom de fichier ou un emplacement d'exportation lorsque leurs conditions correspondent; les règles ultérieures peuvent remplacer des valeurs antérieures.

Gérer les profils dans **Settings > Clone Tree**, ou sélectionner le matériel dans la fenêtre Clone Tree. La flèche à côté de la commande CommandManager ouvre directement un profil enregistré.

Un profil peut exécuter un profil Property Doctor après la copie. Ce traitement s'applique aux fichiers copiés et nécessite des fichiers compatibles avec la version SOLIDWORKS actuelle.

<a id="validation"></a>
## Validation

Clone Tree peut remplacer les documents de destination et une archive ZIP existants. Avant l'écriture, il sauvegarde temporairement chaque sortie existante. Si la copie échoue, les fichiers précédents sont restaurés.

Les documents sources demeurent protégés et ne peuvent pas servir de destination. Clone Tree signale aussi les chemins de destination en double, les documents de destination ouverts dans SOLIDWORKS, les fichiers de destination en lecture seule, les extensions SOLIDWORKS modifiées, les expressions de destination non résolues et les données de révision PDM non disponibles.

Chaque sélection de **Copy** crée un nouvel objet SOLIDWORKS Pack and Go tout en conservant les paramètres courants de la grille. Vous pouvez ainsi corriger un problème et recommencer sans fermer et rouvrir Clone Tree. Revérifiez la grille si les références changent pendant que la fenêtre est ouverte.
