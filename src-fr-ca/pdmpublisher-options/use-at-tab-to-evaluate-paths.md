---
title: "Utiliser @ Tab pour évaluer les options PDMPublisher"
description: "Évaluer les chemins d'exportation et les noms de fichiers depuis l'onglet de configuration @."
ms.date: 08/13/2026
ms.topic: reference
---

# Utiliser @ Tab pour évaluer les chemins

![Utilisez @ onglet pour évaluer le réglage des chemins](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-031-property-use-@-tab-to-evaluate-paths..png)
Évaluer les variables dynamiques dans l'emplacement d'exportation et le nom de fichier en utilisant l'onglet `@`.

Utilisez ceci lorsque les informations nécessaires pour construire le chemin d'exportation sont stockées dans l'onglet `@` du fichier au lieu d'un onglet de configuration spécifique au modèle.

Ceci est utile lorsque les noms de dossiers, les noms de clients, les numéros de projets, les dossiers de libération ou d'autres valeurs de chemin sont maintenus sur `@`.

Par exemple, si l'emplacement d'exportation utilise une variable de `@`:

```text
(VaultRootFolder)\Released PDFs\($ProjectNumber)
```

PDMPublisher lit `ProjectNumber` depuis l'onglet `@` et l'utilise pour construire le chemin d'exportation final.

Utilisez ceci avec [Export Location](export-location.md) lorsque le dossier d'exportation dépend des variables stockées sur `@`.
