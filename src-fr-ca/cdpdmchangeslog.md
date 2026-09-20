---
title: "PDMDeploy Modifier le journal Mises à jour des fonctionnalités, améliorations et corrections"
description: "Consultez le journal de changement PDMDeploy avec des mises à jour détaillées, des améliorations, des corrections de bugs et des améliorations pour toutes les versions."
ms.date: 07/04/2026
ms.topic: conceptual
---

# Journal de modification de PDMDeploy

<a id="34"></a>
## 34
- Correction du bogue relatif aux permissions des nœuds de registre.

<a id="31"></a>
## 31
*Codes d'interface et d'activation modifiés*

- Nouvelle interface sombre à travers le gestionnaire complément, la boîte de dialogue de configuration et la fenêtre de configuration.
- Codes d'activation : configurez PDMDeploy en tapant le code de votre e-mail de bienvenue, sans envoyer plus de fichiers de configuration. Le fichier de configuration client `.cdg` reste entièrement pris en charge comme un retour en arrière. La commande menu s'appelle désormais *Load Customer Configuration (Code d'activation ou Fichier)...*
- Améliorations apportées aux gestionnaires supplémentaires :
  - La fenêtre s'ouvre instantanément et se charge en arrière-plan. Le dialogue de blocage "S'il vous plaît attendre" a disparu. Une barre d'état affiche la progression en direct (lecture de add-ins installé, puis chargement depuis le serveur).
  - Nouvelle colonne Statut : *Non installé*, *Mise à jour disponible* ou *Mise à jour* en un coup d'oeil.
  - La nouvelle version du serveur est présélectionnée pour chaque complément.
  - Cochez les cases à un clic et une case à cocher dans l'en-tête.
  - Expérience de première sortie : si PDMDeploy n'est pas configuré, la fenêtre affiche directement le panneau d'activation au lieu d'une liste vide.
  - Le titre de la fenêtre montre la version PDMDeploy et le nom de le coffre-fort.
- Corrections de fiabilité:
  - Effacer les messages d'erreur au lieu de défaillances silencieuses lors du chargement des configurations ou de contact avec le serveur.
  - Des défaillances d'enregistrement de COM supplémentaires sont maintenant détectées et signalées (auparavant, elles pourraient échouer silencieusement), et l'enregistrement utilise le bon cadre 64 bits.
  - La colonne version installée se met à jour immédiatement après une installation.

<a id="30"></a>
## 30
*CDPDM complément est maintenant PDMDeploy*

- CDPPM est **renamed to _PDMDeploy_ in version 30**.
- Des mises à jour de documentation reflétant le nouveau nom et la version sont prévues pour **March 2026**.
