---
title: "Feuilles vers l'exportation des options PDMPublisher"
description: "Choisissez les feuilles de dessin qui sont exportées et comprenez le repli toutes feuilles quand aucun nom ne correspond."
ms.date: 08/19/2026
ms.topic: reference
---

# Feuilles à exporter

![Sheets to export setting in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Contrôles que le dessin des exportations de PDF incluent toutes les feuilles ou seulement les feuilles dont le nom correspond à un motif.

> [!NOTE]
> Ce réglage est disponible dans les **tâche PDM** et **SOLIDWORKS add-in**.

![Sheets to export liste déroulante in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Dropdown14_Light_100.png)
Options:

- `All sheets` exporte toutes les feuilles du dessin.
- `Sheets matching name` exporte des feuilles qui correspondent à [Sheet Name Pattern](sheet-name-pattern.md). Si aucune feuille ne correspond, PDMPublisher exporte toutes les feuilles.

<a id="matching-fallback"></a>
## Correspondance de l'automne

- Un dessin avec une feuille exporte toujours sa seule feuille sans évaluer le modèle.
- Un dessin avec deux feuilles ou plus n'exporte que les feuilles correspondantes lorsqu'un ou plusieurs noms correspondent.
- Si un dessin avec deux feuilles ou plus n'a pas de noms de feuilles correspondants, PDMPublisher exporte chaque feuille et enregistre le retour dans le journal.

> [!IMPORTANT]
> Un motif qui ne correspond à rien ne produit plus une sélection de feuilles vide. Examinez l'onglet Logs de tâches ou du complément si toutes les feuilles ont été exportées de façon inattendue.

Utilisez `Sheets matching name` lorsque les dessins contiennent des feuilles de fabrication, de référence ou internes qui ne devraient pas être exportées.
