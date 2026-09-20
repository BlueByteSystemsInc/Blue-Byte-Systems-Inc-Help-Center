---
title: "Questions fréquentes"
description: "PDMPublisher pose fréquemment des questions."
ms.date: 06/19/2026
ms.topic: conceptual
---
# Foire aux questions

<a id="features"></a>
## Caractéristiques

| Question | Réponse |
|---|---|
| J'ai des erreurs liées à la mise en page des matériaux. | Dans les versions récentes, nous avons commencé à utiliser le PDM BOM au lieu du SOLIDWORKS BOM. PDMPublisher utilisera la première mise en page BOM de votre chambre forte pour calculer les quantités (Vous pouvez définir la mise en page à utiliser dans l'onglet Options). La mise en page doit comprendre une colonne <RefCount> (Quantité) et une colonne <Configuration> (Nom de configuration). |
| Comment PDMPublisher calcule-t-il les quantités BOM? | PDMPublisher crée un Bill of Materials en mémoire à partir de l'assemblage de haut niveau. Il ignore tous les éléments supprimés, virtuels, enveloppes et composants qui sont exclus du Bill of Materials. La plupart de ces paramètres proviennent de la boîte de dialogue des propriétés des composants. |
| Comment fonctionnent les conditions? | Les conditions sont évaluées pour la référence PDM trouvée. Si l'une des conditions évalue à true, la référence est ajoutée à la file d'attente de traitement. |
| Je ne vois pas les fichiers exportés ! | Assurez-vous que l'emplacement d'exportation dans certains endroits où dans votre chambre forte (ou à l'extérieur de votre chambre forte) où vous avez le workflow et les permissions de dossier pour ajouter et modifier des fichiers. **The vault's root folder** est généralement un dossier que **is locked** pour ajouter ou éditer des fichiers par les administrateurs PDM. |
| J'ai créé une tâche. Comment le lancer ?  | Les tâches PDMPublisher peuvent être attachées à une transition de workflow ou déclenchées à partir du menu à clic droit d'un fichier. Vous trouverez vos tâches créées sous Tâches. Dans le menu clic droit, les tâches utilisent le nom défini la page de configuration des tâches. Voir ci-dessous: <img src="https://pdmpublisher.com/help/images/pdmpublisher_rmb.png"/> |
| Je vois cette erreur « Impossible de trouver ou de créer la police 'Helvetica-Bold'. Certains caractères peuvent ne pas s'afficher ou s'imprimer correctement. » lorsque j'ouvre le PDF fusionné. | Cette erreur est liée à votre lecteur PDF. Assurez-vous d'installer la police appropriée Voir ci-dessous: <img src="https://pdmpublisher.com/help/images/pdmpublisher_merge.png"/> |



<a id="installation"></a>
## Installation

|Question|Réponse|
|---|---|
|Je ne peux pas activer ma licence|Assurez-vous que votre système ou votre pare-feu autorise les connexions à `https://bluebyte.biz` sur le **port 443**. **[Communiquez avec nous](https://bluebyte.biz/contact/)** si le problème persiste.|
|Je dirige le complément sur l'assemblage et il ne capte pas toutes les références.|Assurez-vous que l'assemblage et ses références ont des copies locales sur la machine qui exécute le complément. Vous pouvez le faire en faisant un get-latest sur l'assemblage et ses références dans la machine qui exécute la tâche. C'est un comportement par conception de l'éditeur PDM.|
|La tâche ne peut pas archiver le fichier journal.|Vérifiez que l'utilisateur qui exécute le complément dispose des autorisations appropriées sur le fichier et le dossier du journal. Vérifiez également que l'extension `.txt` ne fait PAS partie du **[paramètre utilisateur d'ajout automatique](https://help.solidworks.com/2017/english/enterprisepdm/admin/idd_page_file_adding.htm)**.|
