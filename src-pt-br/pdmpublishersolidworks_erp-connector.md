---
title: "Criar um conector ERP personalizado | PDMPublisher para SOLIDWORKS"
description: "Crie, instale e teste conectores ERP personalizados em C# com PDMPublisher.ERPExtension.dll."
ms.date: 09/20/2026
ms.topic: how-to
---

# Criar um conector ERP personalizado

Use o contrato em `PDMPublisher.ERPExtension.dll` para criar um conector em C#. Faça referência à DLL da mesma versão do PDMPublisher que carregará o conector. Não copie os tipos do contrato para o projeto e não distribua outra cópia de `PDMPublisher.ERPExtension.dll` com o conector. O host fornece essa DLL.

<a id="project-requirements"></a>
## Requisitos do projeto

- Crie um projeto C# **Class Library (.NET Framework)** destinado ao **.NET Framework 4.7.2**.
- Compile para **Any CPU** ou **x64** e use sintaxe compatível com C# 7.3.
- Adicione uma referência a `PDMPublisher.ERPExtension.dll` e defina **Copy Local** como `False`.
- Coloque exatamente uma classe de conector pública, não abstrata e com construtor público sem parâmetros na DLL.
- Derive novos conectores de `ErpConnector<TSettings>`. Implementações diretas de `IErpExtension` continuam sendo aceitas para compatibilidade.
- Mantenha as DLLs de dependências de terceiros necessárias ao lado da DLL do conector.
- Nunca coloque credenciais de produção nas configurações padrão nem inclua segredos nas mensagens de resultado.

<a id="recommended-typed-connector"></a>
## Conector tipado recomendado

A classe base tipada cria o editor de configurações com base em uma classe pública de configurações e adapta automaticamente as interfaces de nível inferior.

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

`ConnectAsync` é chamado antes da sincronização na mesma instância do conector. Retorne `ConnectionResult.Fail(...)` para falhas esperadas de autenticação ou configuração. O host não tenta novamente nem desfaz automaticamente as operações ERP; portanto, `PushResult.Message` deve identificar claramente as alterações parciais.

<a id="contract-interface"></a>
## Interface do contrato

`ErpConnector<TSettings>` implementa a interface principal. Um conector legado pode implementá-la diretamente:

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

A classe base recomendada também oferece suporte a estes recursos opcionais:

| Recurso | Implementação |
| --- | --- |
| Descoberta de campos | Anuncie `ErpCapabilities.FieldDiscovery` e substitua `GetFieldsAsync`. Retorne nomes estáveis de campos da API ERP para o editor de mapeamento sem modificar dados no ERP. |
| Números gerados pelo ERP | Anuncie `ErpCapabilities.PartNumberGeneration`, substitua `GetGeneratedPartNumberProperty` e retorne entradas `GeneratedPartNumber` confirmadas em `PushResult`. |
| Sincronização seletiva | Anuncie `ErpCapabilities.SelectiveSync` e respeite `ErpSyncOptions.SyncProperties` e `CreateItems`. |
| Sincronização de listas de materiais | Anuncie `ErpCapabilities.BomSync` e processe somente as relações explícitas em `ModelDocData.Boms` quando `SyncBom` estiver selecionado. |
| Seletor de coluna de origem | Marque uma propriedade de configuração com `[ErpSourceColumn]`. |
| Editor de mapeamento de propriedades | Use `List<PropertyMapping>` e marque-a com `[ErpPropertyMappings]`. |
| Limpeza | Substitua `Dispose()` para liberar clientes HTTP ou outros recursos pertencentes ao conector. |

<a id="data-supplied-to-the-connector"></a>
## Dados fornecidos ao conector

`ModelDocData` é um instantâneo desconectado. Os membros importantes incluem:

- `Title`, `PathName`, `ActiveConfiguration`, `DocumentType`, `Mass` e `Material`.
- `CustomProperties`, contendo propriedades do documento mescladas com as propriedades da configuração ativa.
- `Components`, contendo somente as linhas marcadas no escopo de sincronização solicitado. Cada `ComponentData` inclui identidade de origem, caminho do arquivo, miniatura PNG opcional, número do item, nível hierárquico, nome, configuração, quantidade inteira e valores disponíveis de colunas ou propriedades.
- `Boms`, contendo montagens pai marcadas e seus filhos diretos marcados. As quantidades das linhas da lista de materiais são valores decimais e independem da quantidade agregada da linha.

As operações Push são executadas em um thread de trabalho depois que o host captura os dados do SOLIDWORKS no thread da interface. Não acesse objetos COM do SOLIDWORKS, não suponha a existência de um contexto de sincronização, não deduza filhos não marcados e não bloqueie a interface.

<a id="build-and-load-the-dll"></a>
## Compilar e carregar a DLL

1. Compile o conector na configuração **Release**.
2. Coloque as DLLs de dependências e os metadados opcionais do conector ao lado da DLL principal. Não inclua `PDMPublisher.ERPExtension.dll`.
3. No SOLIDWORKS, abra **PDMPublisher > Settings > ERP Sync > ERP connector settings**.
4. Selecione **Add new...**, escolha a DLL do conector e confirme que o nome aparece em **Custom**.
5. Insira as configurações, selecione **Test connection** e depois **Save**.
6. Abra o ERP Sync e teste um documento pequeno, fora de produção, antes de habilitar a criação de itens ou a sincronização de listas de materiais com dados de produção.

O carregamento de um conector executa código de terceiros dentro do processo do SOLIDWORKS. Instale conectores somente de fontes confiáveis.
