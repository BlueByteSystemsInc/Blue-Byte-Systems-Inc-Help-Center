---
title: "Dépannage des fichiers bloqués dans Windows , SOLIDWORKS PDM"
description: "Découvrez comment débloquer les fichiers Windows téléchargés depuis Internet ou des sources externes, y compris SOLIDWORKS PDM add-ins."
ms.date: 06/19/2026
ms.topic: conceptual
---

# Un fichier que j'ai téléchargé (comme un complément SOLIDWORKS PDM) ne fonctionne pas. Comment puis-je vérifier si elle est bloquée ?

> [!WARNING]
> - Oui.


<br>

Si un fichier téléchargé depuis Internet (comme un complément SOLIDWORKS PDM, macro, installateur ou script) ne charge pas ou n'exécute pas, Windows pourrait le bloquer pour des raisons de sécurité. Suivez ces step pour le débloquer :

- **Locate the File:** Ouvrez l'Explorateur de fichiers et naviguez vers le fichier téléchargé.

- **Right-click the File:** Faites un clic droit sur le fichier pour faire apparaître le menu contextuel.

- **Go to Properties:** Cliquez sur "Propriétés" en bas du menu contextuel.

- **Check for Blocking:** Dans l'onglet **General**, recherchez une case à cocher marquée **“Unblock”** près du bas. Si vous le voyez, le fichier est bloqué par Windows.

- **Unblock the File:** Cochez la case **“Unblock”** et cliquez sur **“Apply”**, puis sur **“OK”**.

- **Verify:** Réouvrir la fenêtre Propriétés pour s'assurer que la case "Débloquer" est supprimée.

Après le déblocage, le fichier devrait fonctionner normalement sans être bloqué par les mécanismes de sécurité de Windows.

<br>

<center>
<img src="https://pdmpublisher.com/help/images/blocked.png" alt="Blocked file example" />
</center>

<br><br>

> [!NOTE]
> Windows peut bloquer les fichiers de sources externes pour protéger votre système. Cela comprend les fichiers qui sont :
>
> **✅ Downloaded from the Internet**
> - Les fichiers provenant de sites Web, de stockage en nuage ou de fournisseurs de logiciels peuvent être automatiquement bloqués.
>
> **📩 Received as Email Attachments**
> - Surtout ceux d'expéditeurs inconnus ou méfiants.
>
> **🔌 Copied from External Devices**
> - Les lecteurs USB, les emplacements réseau partagés ou les serveurs distants peuvent marquer les fichiers comme non fiables.
>
> **⚙️ Controlled by Security Policies**
> - Les fichiers sont étiquetés avec un identificateur de zone (par exemple, "à partir d'Internet") et peuvent être restreints en fonction des paramètres de la politique du système ou du groupe.

---

Débloquer le fichier garantit que Windows ne l'empêchera plus de fonctionner — assurez-vous simplement que la source est fiable.
