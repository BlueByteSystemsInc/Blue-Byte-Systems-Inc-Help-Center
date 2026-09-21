---
title: "Créer un connecteur ERP personnalisé | PDMPublisher pour SOLIDWORKS"
description: "Créez, installez et testez des connecteurs ERP personnalisés en C# avec PDMPublisher.ERPExtension.dll."
ms.date: 09/20/2026
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
| Sélecteur de colonne source | Marquez une propriété de paramètres avec `[ErpSourceColumn]`. |
| Éditeur de mappage des propriétés | Utilisez `List<PropertyMapping>` et marquez-la avec `[ErpPropertyMappings]`. |
| Nettoyage | Remplacez `Dispose()` pour libérer les clients HTTP ou les autres ressources appartenant au connecteur. |

<a id="data-supplied-to-the-connector"></a>
## Données fournies au connecteur

`ModelDocData` est un instantané détaché. Les membres importants sont les suivants :

- `Title`, `PathName`, `ActiveConfiguration`, `DocumentType`, `Mass` et `Material`.
- `CustomProperties`, contenant des propriétés de document fusionnées avec des propriétés de configuration active.
- `Components`, contenant uniquement des lignes cochées dans le champ de synchronisation demandé. Chaque `ComponentData` comprend son identité source, son chemin de fichier, sa vignette PNG optionnelle, son numéro d'article, son niveau hiérarchique, son nom, sa configuration, sa quantité entière et ses valeurs de colonne/propriété disponibles.
- `Boms`, contenant des ensembles parent vérifiés et leurs enfants directs vérifiés. Les quantités de lignes BOM sont des valeurs décimales et sont indépendantes de la quantité de lignes agrégée.

Les opérations Push s'exécutent sur un thread de travail après que l'hôte a capturé les données SOLIDWORKS sur le thread d'interface utilisateur. N'accédez pas aux objets COM de SOLIDWORKS, ne supposez pas qu'un contexte de synchronisation est présent, n'inférez pas des enfants non cochés et ne bloquez pas l'interface utilisateur.

<a id="build-and-load-the-dll"></a>
## Construire et charger la DLL

1. Construisez le connecteur en configuration **Release**.
2. Placez les DLL de dépendance et les métadonnées facultatives à côté de la DLL principale du connecteur. N'incluez pas `PDMPublisher.ERPExtension.dll`.
3. Dans SOLIDWORKS, ouvrez **PDMPublisher > Settings > ERP Sync > ERP connector settings**.
4. Sélectionnez **Add new...**, choisissez le connecteur DLL, et confirmez que son nom apparaît sous **Custom**.
5. Entrez ses paramètres, sélectionnez **Test connection**, puis sélectionnez **Save**.
6. Ouvrez ERP Sync et testez un petit document non-production avant de permettre la création d'éléments ou la synchronisation BOM sur les données de production.

Le chargement d'un connecteur exécute du code tiers dans le processus SOLIDWORKS. Installez uniquement des connecteurs provenant d'une source fiable.
