---
title: "Dossier de journal (par défaut seulement)"
description: "Stocker les journaux PDMPublisher dans un dossier voûté PDM."
ms.date: 08/09/2026
ms.topic: reference
---

# Dossier du journal (par défaut seulement)

![Configuration du dossier de connexion](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-020-property-log-folder-(vault-only).png)

Définit le dossier du coffre-fort PDM où les fichiers journaux sont déposés.

Ce paramètre est lié à [Logs d'activités par défaut](turn-on-activity-tracking.md). Il contrôle l'endroit où les fichiers du journal d'activité sont stockés dans le coffre.

Chemin recommandé :

```text
(VaultRootFolder)\Logs\PDMPublisher
```

Créez ce dossier manuellement avant d'utiliser la tâche.

> [!IMPORTANT]
> Le dossier doit être à l'intérieur du coffre-fort et ne doit pas se terminer par une rétro-slash.
>
> L'utilisateur exécutant la tâche, ou le compte hôte de la tâche utilisé pour exécuter la tâche, doit avoir la permission du complémenter des fichiers journaux à ce dossier.
