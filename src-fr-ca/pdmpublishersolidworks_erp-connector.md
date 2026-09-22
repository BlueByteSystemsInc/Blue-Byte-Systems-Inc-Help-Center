---
title: "Créer un connecteur ERP personnalisé | PDMPublisher pour SOLIDWORKS"
description: "Créez, installez et testez des connecteurs ERP personnalisés en C# avec PDMPublisher.ERPExtension.dll."
ms.date: 09/31/2026
ms.topic: how-to
---

# Créer un connecteur ERP personnalisé

Utilisez le contrat dans `PDMPublisher.ERPExtension.dll` pour créer un connecteur dans C#. Référencez la DLL de la même version PDMPublisher qui chargera le connecteur. Ne copiez pas les types de contrats dans votre projet, et ne distribuez pas une autre copie de `PDMPublisher.ERPExtension.dll` avec le connecteur – l'hôte la fournit.

> [!TIP]
> Pour installer le connecteur fourni par Blue Byte Systems au lieu d'en créer un, consultez [Connecteur ERPNext](pdmpublishersolidworks_erpnext-connector.md).

<a id="project-requirements"></a>
## Exigences du projet

- Créer un projet C# **Class Library (.NET Framework)** ciblant **.NET Framework 4.7.2**.
- Construire pour **Any CPU** ou **x64** et utiliser la syntaxe compatible C# 7.3.
- Ajouter une référence à `PDMPublisher.ERPExtension.dll`; définir **Copy Local** à `False`.
- Placez exactement une classe de connecteur publique et non abstraite, dotée d'un constructeur public sans paramètre, dans la DLL.
- Dérivez les nouveaux connecteurs de `ErpConnector<TSettings>`. Les implémentations directes de `IErpExtension` demeurent compatibles.
- Conservez les DLL des dépendances tierces requises à côté de la DLL du connecteur.
- Ne jamais placer les identifiants de production dans les paramètres par défaut ou inclure des secrets dans les messages de résultat.

<a id="what-you-will-build"></a>
## Ce que vous allez créer

Créez le connecteur par petites étapes faciles à tester :

1. Créez une bibliothèque de classes .NET Framework et référencez la DLL du contrat.
2. Définissez une classe de paramètres. PDMPublisher transforme ses propriétés publiques en formulaire de configuration.
3. Dérivez une seule classe de connecteur de `ErpConnector<TSettings>` et donnez-lui une identité stable.
4. Validez les paramètres et authentifiez-vous dans `ConnectAsync`.
5. Ajoutez un aperçu Push en lecture seule, puis validez uniquement le plan examiné.
6. Ajoutez un aperçu Pull en lecture seule, puis validez le même instantané avant que PDMPublisher écrive dans SOLIDWORKS.
7. Compilez la DLL, chargez-la dans **ERP connector settings**, testez la connexion et utilisez des données hors production.

L'hôte gère l'interface utilisateur, le stockage chiffré des paramètres, la sélection des lignes SOLIDWORKS, les grilles des différences et l'écriture des propriétés locales. Votre connecteur gère l'authentification ERP, les lectures et écritures ERP, les contrôles de concurrence à distance et les résultats présentés à l'utilisateur.

<a id="step-1-create-the-project"></a>
## Étape 1 : créer le projet

Dans Visual Studio, créez **Class Library (.NET Framework)**, et non une bibliothèque .NET ou .NET Standard. Ciblez **.NET Framework 4.7.2**, sélectionnez **Any CPU** ou **x64**, puis utilisez C# 7.3.

Ajoutez une référence à `PDMPublisher.ERPExtension.dll` provenant de la même version de PDMPublisher. Dans les propriétés de la référence, définissez **Copy Local** à `False` :

```xml
<PropertyGroup>
  <TargetFrameworkVersion>v4.7.2</TargetFrameworkVersion>
  <LangVersion>7.3</LangVersion>
  <PlatformTarget>AnyCPU</PlatformTarget>
</PropertyGroup>
<ItemGroup>
  <Reference Include="PDMPublisher.ERPExtension">
    <HintPath>lib\PDMPublisher.ERPExtension.dll</HintPath>
    <Private>False</Private>
  </Reference>
</ItemGroup>
```

Ne copiez pas le code source du contrat dans votre projet. Une interface copiée possède une identité CLR différente, même lorsque sa définition C# semble identique.

<a id="step-2-define-editable-settings"></a>
## Étape 2 : définir les paramètres modifiables

Utilisez des propriétés publiques ordinaires avec des valeurs par défaut. Les attributs du modèle de composant contrôlent les étiquettes, l'aide, les catégories, le masquage des mots de passe et l'éditeur de mappage.

```csharp
public sealed class AcmeSettings
{
    [DisplayName("Server URL"), Category("Connection")]
    [Description("HTTPS root address of the ERP service.")]
    public string ServerUrl { get; set; } = "";

    [DisplayName("API token"), Category("Connection")]
    [PasswordPropertyText(true)]
    public string ApiToken { get; set; } = "";

    [DisplayName("Item code column"), Category("Items")]
    [ErpSourceColumn]
    public string ItemCodeProperty { get; set; } = "PartNumber";

    [DisplayName("Property mappings"), Category("Items")]
    [ErpPropertyMappings]
    public List<PropertyMapping> PropertyMappings { get; set; }
        = new List<PropertyMapping>();
}
```

`PropertyMapping.Source` désigne la propriété SOLIDWORKS ou la colonne ERP Sync. `PropertyMapping.Target` désigne le nom stable du champ d'API ERP. Conservez les noms des propriétés de paramètres après la publication afin que les configurations enregistrées puissent toujours être chargées.

<a id="step-3-implement-connection-and-capabilities"></a>
## Étape 3 : implémenter la connexion et les capacités

Utilisez un `Id` permanent qualifié par le fournisseur. `DisplayName` est le nom convivial présenté aux utilisateurs. Annoncez uniquement les capacités réellement implémentées.

```csharp
public sealed class AcmeConnector : ErpConnector<AcmeSettings>,
    IErpSyncPreview, IErpPullPreview
{
    public override string Id => "com.acme.erp";
    public override string DisplayName => "Acme ERP";

    public override ErpCapabilities Capabilities =>
        ErpCapabilities.SelectiveSync |
        ErpCapabilities.SyncPreview |
        ErpCapabilities.PullPreview;

    public override async Task<ConnectionResult> ConnectAsync(AcmeSettings settings)
    {
        if (!Uri.TryCreate(settings.ServerUrl, UriKind.Absolute, out var uri)
            || uri.Scheme != Uri.UriSchemeHttps)
            return ConnectionResult.Fail("Enter a valid HTTPS server URL.");
        if (string.IsNullOrWhiteSpace(settings.ApiToken))
            return ConnectionResult.Fail("Enter an API token.");

        // Créez et authentifiez votre client HTTP ici.
        return await Task.FromResult(ConnectionResult.Ok("Connected to Acme ERP."));
    }
}
```

PDMPublisher appelle `ConnectAsync` avant Preview, Commit ou Pull sur la même instance du connecteur. Retournez les problèmes de configuration et d'authentification prévus au moyen de `ConnectionResult.Fail(...)`. N'incluez jamais un jeton, un mot de passe, un en-tête de réponse ou un secret dans le message.

<a id="recommended-typed-connector"></a>
## Connecteur typé recommandé

La classe de base typée construit l'éditeur de paramètres à partir d'une classe de paramètres publics et adapte automatiquement les interfaces de niveau inférieur.

```csharp
using System.Collections.Generic;
using System.ComponentModel;
using System.Threading.Tasks;
using PDMPublisher.ERPExtension;

public sealed class AcmeErpSettings
{
    [DisplayName("Server URL"), Category("Connection")]
    public string ServerUrl { get; set; } = "";

    [DisplayName("API token"), Category("Connection"), PasswordPropertyText(true)]
    public string ApiToken { get; set; } = "";

    [DisplayName("Timeout (seconds)"), Category("Connection")]
    public int TimeoutSeconds { get; set; } = 60;

    [DisplayName("Property mappings"), Category("Items"), ErpPropertyMappings]
    public List<PropertyMapping> PropertyMappings { get; set; }
        = new List<PropertyMapping>();
}

public sealed class AcmeErpConnector : ErpConnector<AcmeErpSettings>
{
    public override string Id => "com.acme.erp";
    public override string DisplayName => "Acme ERP";

    public override ErpCapabilities Capabilities =>
        ErpCapabilities.SelectiveSync | ErpCapabilities.BomSync;

    public override async Task<ConnectionResult> ConnectAsync(
        AcmeErpSettings settings)
    {
        bool connected = await ConnectToServerAsync(settings);
        return connected
            ? ConnectionResult.Ok()
            : ConnectionResult.Fail("The ERP connection could not be established.");
    }

    public override async Task<PushResult> SyncAsync(
        ModelDocData data, ErpSyncOptions options)
    {
        // Operate only on data.Components and data.Boms supplied by the host.
        // Respect options.SyncProperties, options.CreateItems, and options.SyncBom.
        await SendSelectedRowsAsync(data, options);
        return PushResult.Ok();
    }

    private Task<bool> ConnectToServerAsync(AcmeErpSettings settings)
        => Task.FromResult(true); // Replace with the ERP API call.

    private Task SendSelectedRowsAsync(ModelDocData data, ErpSyncOptions options)
        => Task.CompletedTask; // Replace with item, property, and BOM API calls.
}
```

`ConnectAsync` est appelée avant la synchronisation sur la même instance du connecteur. Retournez `ConnectionResult.Fail(...)` pour les erreurs d'authentification ou de configuration prévues. L'hôte ne réessaie pas automatiquement et n'annule pas les opérations ERP; `PushResult.Message` doit donc indiquer clairement tout changement partiel.

<a id="contract-interface"></a>
## Interface contractuelle

`ErpConnector<TSettings>` implémente l'interface de base pour vous. Un connecteur ancien peut le mettre en œuvre directement :

```csharp
public interface IErpExtension
{
    string Id { get; }
    string DisplayName { get; }
    Dictionary<string, object> GetDefaultSettings();
    Task<ConnectionResult> ConnectAsync(Dictionary<string, object> settings);
    Task<PushResult> PushToErpAsync(ModelDocData modelData);
}
```

La classe de base recommandée prend également en charge ces capacités optionnelles:

| Capacité | Mise en œuvre |
| --- | --- |
| Découverte des champs | Annoncez `ErpCapabilities.FieldDiscovery` et remplacez `GetFieldsAsync`. Retournez des noms de champs d'API ERP stables pour l'éditeur de mappage, sans modifier les données ERP. |
| Numéros générés par l'ERP | Annoncez `ErpCapabilities.PartNumberGeneration`, remplacez `GetGeneratedPartNumberProperty` et retournez les entrées `GeneratedPartNumber` confirmées dans `PushResult`. |
| Synchronisation sélective | Annoncez `ErpCapabilities.SelectiveSync` et respectez `ErpSyncOptions.SyncProperties` et `CreateItems`. |
| Synchronisation BOM | Annoncez `ErpCapabilities.BomSync` et ne traitez que les relations explicites dans `ModelDocData.Boms` lorsque `SyncBom` est sélectionné. |
| Aperçu et validation Push | Implémentez `IErpSyncPreview` et annoncez `ErpCapabilities.SyncPreview`. L'aperçu doit être en lecture seule; Commit accepte une seule fois le même plan examiné. |
| Pull avec aperçu | Implémentez `IErpPullPreview` et annoncez `ErpCapabilities.PullPreview`. Retournez un plan en lecture seule, puis validez de nouveau ce plan exact avant que l'hôte écrive localement. |
| Sélecteur de colonne source | Marquez une propriété de paramètres avec `[ErpSourceColumn]`. |
| Éditeur de mappage des propriétés | Utilisez `List<PropertyMapping>` et marquez-la avec `[ErpPropertyMappings]`. |
| Nettoyage | Remplacez `Dispose()` pour libérer les clients HTTP ou les autres ressources appartenant au connecteur. |

<a id="add-pull-preview-support"></a>
## Ajouter la prise en charge de Pull avec aperçu

Les connecteurs Pull implémentent l'interface facultative ci-dessous. `PreviewPullAsync` lit les valeurs ERP, mais ne doit pas écrire dans l'ERP, réserver des numéros ni modifier SOLIDWORKS. `ValidatePullAsync` doit relire ou valider le plan exact qui a été produit, immédiatement avant l'application des changements locaux.

```csharp
public interface IErpPullPreview
{
    Task<ErpPullPlan> PreviewPullAsync(ModelDocData data);
    Task<bool> ValidatePullAsync(ErpPullPlan plan);
}
```

Retournez un `ErpPullProperty` pour chaque champ mappé et chaque ligne d'entrée. Conservez les valeurs `ItemNumber` sur base un et `SourceIdentity` fournies par l'hôte. Définissez `IdentityProperty` comme la propriété SOLIDWORKS ou la colonne intégrée prise en charge qui sert à associer l'article ERP. Chaque résultat indique la `Property` de destination, le champ source `ErpField`, la `Value` sous forme de texte invariant et une raison facultative `SkipReason`.

Une valeur ERP absente ou nulle doit être ignorée. Une chaîne vide explicite peut vider une propriété personnalisée, sauf si les paramètres du connecteur demandent d'ignorer les valeurs vides. L'hôte refuse indépendamment les destinations intégrées ou calculées et toute modification de la propriété servant à associer l'article. La validation doit refuser les plans périmés, étrangers ou déjà consommés et ne doit jamais écrire dans l'ERP. L'hôte gère la grille des différences, les dernières vérifications locales, l'écriture des propriétés SOLIDWORKS et les indicateurs d'enregistrement des documents.

<a id="data-supplied-to-the-connector"></a>
## Données fournies au connecteur

`ModelDocData` est un instantané détaché. Les membres importants sont les suivants :

- `Title`, `PathName`, `ActiveConfiguration`, `DocumentType`, `Mass` et `Material`.
- `CustomProperties`, contenant des propriétés de document fusionnées avec des propriétés de configuration active.
- `Components`, contenant uniquement des lignes cochées dans le champ de synchronisation demandé. Chaque `ComponentData` comprend son identité source, son chemin de fichier, sa vignette PNG optionnelle, son numéro d'article, son niveau hiérarchique, son nom, sa configuration, sa quantité entière et ses valeurs de colonne/propriété disponibles.
- `Boms`, contenant des ensembles parent vérifiés et leurs enfants directs vérifiés. Les quantités de lignes BOM sont des valeurs décimales et sont indépendantes de la quantité de lignes agrégée.

Les opérations Push s'exécutent sur un thread de travail après que l'hôte a capturé les données SOLIDWORKS sur le thread d'interface utilisateur. N'accédez pas aux objets COM de SOLIDWORKS, ne supposez pas qu'un contexte de synchronisation est présent, n'inférez pas des enfants non cochés et ne bloquez pas l'interface utilisateur.

<a id="build-and-load-the-dll"></a>
## Étape 6 : compiler et charger la DLL

1. Sélectionnez **Release** et compilez le projet. Corrigez les avertissements qui touchent les valeurs nulles, les appels asynchrones ou les ressources réseau non libérées.
2. Confirmez que le dossier de sortie contient la DLL du connecteur et les DLL tierces requises.
3. Retirez `PDMPublisher.ERPExtension.dll` du paquet. L'hôte fournit la bonne version du contrat.
4. Fermez et rouvrez SOLIDWORKS avant de remplacer une DLL de connecteur déjà chargée.
5. Ouvrez **PDMPublisher > Settings > ERP Sync > ERP connector settings**.
6. Sélectionnez **Add new...**, choisissez la DLL principale et confirmez que son nom apparaît sous **Custom**.
7. Saisissez les paramètres et sélectionnez **Test connection**. Corrigez toute erreur de connexion.
8. Sélectionnez **Save**, ouvrez ERP Sync et choisissez un petit document hors production.
9. Testez d'abord l'aperçu et **Cancel**. Confirmez que ni l'ERP ni SOLIDWORKS n'ont changé.
10. Testez Commit ou **Apply to SOLIDWORKS**, vérifiez chaque résultat dans les deux systèmes et enregistrez les documents modifiés au besoin.

<a id="production-readiness-checklist"></a>
## Étape 7 : liste de vérification avant la production

- La DLL contient exactement une classe de connecteur publique et non abstraite dotée d'un constructeur public sans paramètre.
- Chaque capacité annoncée possède des tests automatisés et un flux utilisateur fonctionnel.
- Les méthodes d'aperçu n'effectuent aucune écriture et ne réservent aucun numéro.
- Les plans appartiennent à une seule instance connectée, sont à usage unique et sont refusés s'ils sont périmés ou étrangers.
- Commit valide les conditions ERP avant la première écriture et n'élargit jamais silencieusement la portée examinée.
- Le connecteur traite uniquement `data.Components`, `data.Boms` et les `ErpSyncOptions` demandées; il n'infère jamais des lignes non cochées.
- Les délais d'attente, échecs d'authentification, limites de débit, doublons, champs absents et échecs partiels produisent des messages utiles sans secrets.
- Une écriture incertaine n'est jamais réessayée automatiquement.
- `Dispose()` libère les clients HTTP, flux et autres ressources appartenant au connecteur.
- Le connecteur fonctionne sur un ordinateur de test propre avec uniquement les DLL de dépendance emballées à côté de lui.

<a id="troubleshooting"></a>
## Dépannage

| Symptôme | Cause probable et correction |
| --- | --- |
| Le connecteur n'apparaît pas sous **Custom** | Confirmez .NET Framework 4.7.2, Any CPU/x64, une seule classe de connecteur publique, un constructeur public sans paramètre et toutes les DLL de dépendance. |
| Erreur de chargement de type ou de contrat | Retirez tout code d'interface copié et toute copie emballée de `PDMPublisher.ERPExtension.dll`; recompilez avec le contrat de la version hôte installée. |
| Échec de **Test connection** | Vérifiez l'URL, les identifiants, le certificat TLS, le proxy, le pare-feu, les autorisations et le délai d'attente. Retournez un message précis et sécuritaire. |
| L'éditeur de mappage est absent | Utilisez `List<PropertyMapping>` et appliquez `[ErpPropertyMappings]` à cette propriété publique de paramètres. |
| Push ou Pull n'est pas disponible | Implémentez l'interface d'aperçu correspondante et annoncez l'indicateur de capacité approprié. |
| Commit signale un plan périmé | Les données ERP, l'instance du connecteur ou l'état d'utilisation du plan ont changé. Produisez un nouvel aperçu. |
| Pull ignore une propriété | Consultez la raison. Les cibles d'identité, intégrées, calculées, en lecture seule, absentes, nulles, agrégées, fantômes ou non chargées sont protégées. |
| La DLL mise à jour demeure verrouillée | Fermez SOLIDWORKS avant de remplacer le connecteur et ses dépendances. |

Le chargement d'un connecteur exécute du code tiers dans le processus SOLIDWORKS. Installez uniquement des connecteurs provenant d'une source fiable.
