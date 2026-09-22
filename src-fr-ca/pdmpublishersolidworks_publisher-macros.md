---
title: Publisher Macros | PDMPublisher pour SOLIDWORKS
description: Modifier et exécuter des macros VBA qui automatisent les commandes Save As New, Property Doctor, Clone Tree et ERP Sync de PDMPublisher.
ms.date: 09/30/2026
ms.topic: how-to
---

# Publisher Macros

Publisher Macros est maintenant disponible dans PDMPublisher pour SOLIDWORKS. Il fournit un exemple VBA modifiable qui appelle les commandes PDMPublisher par l'intermédiaire du complément SOLIDWORKS chargé.

![Commande Publisher Macros dans le CommandManager PDMPublisher](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-publisher-macros-20260930.png)

Ouvrez **PDMPublisher > Publisher Macros** dans le CommandManager ou **Tools > PDMPublisher > Publisher Macros**. Vous pouvez aussi l'ouvrir à partir de **PDMPublisher > Settings > Publisher Macros**.

![Page de paramètres Publisher Macros](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publisher-macros-settings-20260930.png)

> [!IMPORTANT]
> Chargez **PDMPublisher (SOLIDWORKS)** sous **Tools > Add-Ins** avant d'exécuter une macro. Publisher Macros est différent de l'option **Run macro after saving** de [Save As New](pdmpublishersolidworks_save-as-new.md).

<a id="edit-and-run-a-macro"></a>
## Modifier et exécuter une macro

![Éditeur VBA de Publisher Macros](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publisher-macros-editor-20260930.png)

L'éditeur contient un exemple complet `Sub main()` avec coloration syntaxique et numéros de ligne.

1. Enregistrez les profils et les paramètres de connecteur que la macro utilisera.
2. Ouvrez **Publisher Macros**.
3. Remplacez les noms de profils ou de connecteurs d'exemple par ceux qui sont disponibles sur cet ordinateur.
4. Décommentez uniquement les commandes que vous voulez exécuter.
5. Sélectionnez **Run** pour exécuter le code affiché au moyen de SOLIDWORKS.
6. Examinez toute fenêtre, tout résultat ou toute erreur ouverte par PDMPublisher.
7. Sélectionnez **OK** pour conserver le code modifié pour la prochaine session, ou **Cancel** pour abandonner les modifications.

**Run** exige un point d'entrée `Sub main()`. **Cancel** n'annule pas les opérations déjà exécutées par **Run**. Lors de la première utilisation, l'exemple sélectionne des profils Save As New et Property Doctor disponibles lorsque cela est possible. Les sessions suivantes restaurent le dernier code conservé avec **OK**.

<a id="connect-to-pdmpublisher-from-vba"></a>
## Se connecter à PDMPublisher à partir de VBA

Publisher Macros utilise la liaison tardive; la macro n'a donc pas besoin d'une référence VBA vers PDMPublisher :

```vb
Dim publisher As Object
Set publisher = Application.SldWorks.GetAddInObject( _
    "{9BC55484-9BC0-431E-B039-E9CC13542E43}")

If publisher Is Nothing Then
    Err.Raise vbObjectError + 1, , _
        "Load PDMPublisher in Tools > Add-ins first."
End If
```

Les appels d'automatisation suivants sont disponibles :

```vb
publisher.SaveAsNew profileName, silent
publisher.PropertyDoctor profileName, silent
publisher.CloneTree profileName, silent
publisher.ERPSync connectorName, direction, sourceType, sourcePath, _
    bomTableName, itemTypes, operations, silent
```

Les noms de profils ne sont pas sensibles à la casse. Un nom vide, manquant ou ambigu provoque un échec. Les appels sans argument conservent leur comportement interactif. Les anciennes méthodes `SaveAsNewWithProfile`, `CloneTreeWithProfile` et `PropertyDoctorWithProfile` demeurent prises en charge.

<a id="interactive-and-silent-execution"></a>
## Exécution interactive et silencieuse

| Valeur de `silent` | Comportement |
| --- | --- |
| `False` | Ouvre l'interface PDMPublisher normale avec le profil ou les options demandés. Save As New affiche sa boîte de dialogue de destination et ERP Sync permet d'examiner et de décocher des lignes avant Push. |
| `True` | Exécute la commande sans boîte de dialogue de progression, de révision ou de résultat de PDMPublisher et attend la fin de l'opération. Les erreurs sont retournées au gestionnaire d'erreurs VBA. |

Les limites de l'édition Community continuent de s'appliquer. Les modifications terminées ne sont pas annulées si une étape ultérieure échoue. Property Doctor modifie les documents comme le fait son opération **Apply** normale; enregistrez ensuite ces documents.

Save As New silencieux exige l'édition Premium, n'écrase pas les fichiers existants et refuse les espaces réservés interactifs, les macros après enregistrement et l'archivage PDM automatique. Le profil enregistré doit fournir assez de renseignements sur la destination pour fonctionner sans invite.

<a id="basic-command-examples"></a>
## Exemples de commandes de base

```vb
' False ouvre la commande avec le profil nommé.
Call publisher.SaveAsNew("BC", False)
Call publisher.PropertyDoctor("Default", False)

' Décommentez après avoir enregistré un profil Clone Tree correspondant.
' Call publisher.CloneTree("My clone profile", False)
```

<a id="automate-erp-sync"></a>
## Automatiser ERP Sync

```vb
Call publisher.ERPSync( _
    "ERPNext", _
    "Push", _
    "FeatureTree", _
    "", _
    "", _
    "Parts,Assemblies", _
    "Properties,CreateItems,BOM", _
    False)
```

| Paramètre | Valeur prise en charge |
| --- | --- |
| `connectorName` | Nom unique d'un connecteur installé dont les paramètres de connexion sont enregistrés. |
| `direction` | `Push`. `Pull` est réservé et retourne actuellement une erreur d'opération non prise en charge. |
| `sourceType` | `FeatureTree`, `AssemblyBOM`, `DrawingBOM` ou `CSV`. Les valeurs ne sont pas sensibles à la casse. |
| `sourcePath` | Chemin d'un document natif, ou valeur vide pour utiliser le document actif. CSV exige toujours un chemin et ne nécessite pas de document SOLIDWORKS ouvert. |
| `bomTableName` | Nom de fonction de nomenclature, libellé complet de table/configuration ou ID stable de table. Il peut être vide uniquement lorsqu'une seule table/configuration est disponible. |
| `itemTypes` | `All`, ou une liste séparée par des virgules parmi `Drawings`, `Parts`, `Assemblies`, `WeldmentCutListItems`, `SheetMetalCutListItems` et `PhantomItems`. CSV exige `All`. |
| `operations` | Liste séparée par des virgules parmi `Properties`, `CreateItems` et `BOM`. `CreateItems` synchronise aussi les propriétés; `BOM` exige une source ayant une hiérarchie valide. |
| `silent` | `False` ouvre ERP Sync pour révision. `True` synchronise directement les lignes correspondantes, sous réserve des limites de licence et des règles d'exclusion enregistrées. |

Pour les documents natifs, les fichiers ouverts par l'automatisation demeurent accessibles dans SOLIDWORKS. Les numéros de pièce produits par l'ERP peuvent laisser des documents modifiés qui doivent être enregistrés. L'exécution silencieuse utilise le connecteur nommé sans modifier la sélection globale du connecteur.

Pour connaître le comportement ERP complet, consultez [ERP Sync](pdmpublishersolidworks_erp-sync.md).

<a id="handle-errors-safely"></a>
## Gérer les erreurs en toute sécurité

Utilisez un gestionnaire d'erreurs VBA, car l'authentification, la validation des profils, les limites de licence, l'état du document et les intégrations externes peuvent interrompre une opération :

```vb
Sub main()
    On Error GoTo Failed
    ' Obtenez l'objet publisher et exécutez une ou plusieurs commandes ici.
    Exit Sub

Failed:
    MsgBox Err.Description, vbExclamation, "PDMPublisher"
End Sub
```

Testez d'abord l'automatisation sur des documents hors production. Les intégrations tierces et PDM peuvent exiger leurs propres identifiants ou autorisations.
