---
title: "ERP Sync | PDMPublisher para SOLIDWORKS"
description: "Configure o ERP Sync e envie itens, propriedades e listas de materiais do SOLIDWORKS por meio de um conector ERP instalado."
ms.date: 09/28/2026
ms.topic: conceptual
---

# ERP Sync

O ERP Sync está habilitado no PDMPublisher para SOLIDWORKS. Ele envia dados selecionados de documentos, componentes, propriedades e listas de materiais do SOLIDWORKS para um sistema ERP por meio de um conector ERP instalado.

Abra **PDMPublisher > ERP Sync** para revisar e enviar o documento ativo. Abra **PDMPublisher > Settings > ERP Sync** para escolher o conector e configurar a exibição padrão da lista de materiais.

> [!NOTE]
> Atualmente, o ERP Sync oferece suporte a **Push**. A opção **Pull** aparece na janela, mas permanece desabilitada até que um contrato de recebimento seja implementado.

<a id="configure-erp-sync"></a>
## Configurar o ERP Sync

![Configurações do ERP Sync no PDMPublisher para SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-settings-20260920.png)

A página de configurações contém:

| Configuração | Descrição |
| --- | --- |
| ERP connector | Seleciona o conector usado pelo ERP Sync. Abra as configurações do conector pelo comando adjacente. |
| Default column template | Seleciona o modelo de colunas do BOM Manager usado quando a janela ERP Sync é aberta. As colunas selecionadas também fornecem valores disponíveis ao conector. |
| Default BOM display type | Seleciona a exibição inicial **Parts only**, **Top-level only** ou a lista de materiais recuada. |
| Group by | Agrupa as linhas exibidas por texto, propriedade ou espaço reservado compatível. Deixe o campo vazio para usar uma lista simples. |
| Ignore Components | Abre condições que excluem componentes correspondentes da exibição ERP Sync. |
| Find text | Filtra as linhas exibidas por texto. |
| Item types | Limita os tipos de linha incluídos na exibição. |

Selecione **OK** para salvar os padrões. Essas configurações são independentes das configurações do BOM Manager.

<a id="install-and-configure-a-connector"></a>
## Instalar e configurar um conector

![Catálogo e configurações de conectores ERP](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-connector-settings-20260920.png)

1. Abra **Settings > ERP Sync** e depois **ERP connector settings**.
2. Selecione um conector oficial e escolha **Download**, ou escolha **Add new...** para procurar uma DLL de conector personalizado.
3. Selecione o conector instalado. Suas configurações aparecem na grade de propriedades inferior.
4. Insira a URL do servidor, credenciais, mapeamentos e outros valores específicos do conector.
5. Escolha **Test connection**. Corrija qualquer problema relatado de autenticação, URL ou mapeamento.
6. Escolha **Save** para tornar esse conector ativo.

As configurações são salvas separadamente para cada conector e criptografadas para o usuário atual do Windows. Reinicie o SOLIDWORKS antes de substituir uma DLL de conector que já tenha sido carregada.

Para o conector fornecido pela Blue Byte Systems, consulte [Conector ERPNext](pdmpublishersolidworks_erpnext-connector.md).

<a id="choose-the-synchronization-source"></a>
## Escolher a fonte de sincronização

Use o seletor de fonte no canto superior esquerdo do ERP Sync para escolher a origem das linhas, colunas, quantidades e da hierarquia da lista de materiais.

![Seletor de fonte do ERP Sync com árvore de recursos, tabela de BOM do SOLIDWORKS e arquivo CSV](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-source-selector-20260928.png)

| Fonte | Dados usados pelo ERP Sync | Comportamento importante |
| --- | --- | --- |
| Feature tree | O documento ativo do SOLIDWORKS e sua árvore de componentes resolvida. | Essa é a fonte padrão. O tipo de lista de materiais, os modelos de colunas, o agrupamento, os filtros de componentes, os itens de lista de corte e as linhas fantasma continuam disponíveis. O envio de uma lista de materiais exige a exibição **Indented** sem agrupamento. |
| Tabela de BOM do SOLIDWORKS | Uma tabela de lista de materiais encontrada em uma montagem ou desenho, incluindo a configuração selecionada da tabela. | São usadas as linhas e colunas visíveis e as quantidades exibidas. O envio de itens e propriedades fica disponível para toda tabela válida. O envio da lista de materiais também exige uma tabela recuada com numeração numérica detalhada, como `1`, `1.1` e `1.2`, linhas pai visíveis e uma hierarquia sem ambiguidade. |
| Arquivo CSV | Um arquivo CSV UTF-8 selecionado no disco. | Cada coluna CSV se torna uma propriedade de origem para o conector. O envio de itens e propriedades fica disponível após a validação do arquivo. O envio da lista de materiais é ativado quando as colunas de item e pai definem uma hierarquia válida. |

A fonte selecionada é lembrada para o documento salvo do SOLIDWORKS.

### Feature tree

Escolha **Feature tree** para criar linhas a partir da peça, montagem ou desenho ativo. Use **BOM type**, **Column template**, **Group by**, **Ignore Components** e os filtros de itens para preparar a exibição. As linhas podem incluir componentes resolvidos, itens de lista de corte e linhas fantasma de acordo com as configurações selecionadas.

### Tabela de BOM do SOLIDWORKS

Abra o submenu do documento no seletor de fonte e escolha uma tabela de lista de materiais e uma configuração específicas. O ERP Sync lê a tabela como ela é exibida:

- Linhas e colunas ocultas são omitidas.
- Títulos de colunas e colunas de propriedades personalizadas se tornam propriedades de origem que o conector pode mapear.
- A quantidade exibida deve ser numérica.
- Uma tabela simples pode ser usada para sincronizar itens e propriedades. A sincronização da lista de materiais exige uma hierarquia recuada com numeração numérica detalhada e linhas pai visíveis.

Se não for possível criar uma hierarquia sem ambiguidade, o ERP Sync mantém as operações de itens e propriedades disponíveis e desabilita a operação de lista de materiais.

### Arquivo CSV

Escolha **CSV file...** para usar dados independentes da árvore de componentes do SOLIDWORKS. O arquivo deve atender a estes requisitos:

- Texto UTF-8, com ou sem marca de ordem de bytes (BOM).
- Tamanho máximo de 20 MB e no máximo 50.000 linhas de dados não vazias.
- Cabeçalhos não vazios e exclusivos, com o mesmo número de campos em todas as linhas de dados.
- Quantidades inteiras positivas. Se não houver uma coluna de quantidade, o ERP Sync usa `1`.

O ERP Sync reconhece estes cabeçalhos convencionais:

| Finalidade | Cabeçalhos reconhecidos |
| --- | --- |
| Código do item | `Item code`, `item_code`, `PartNumber`, `Part Number` ou `Item` |
| Quantidade | `Quantity` ou `Qty` |
| Item pai | `Parent`, `Parent item` ou `parent_item` |
| Descrição | `Description` |
| Material | `Material` |

Para habilitar o envio da lista de materiais a partir de CSV, forneça colunas reconhecidas de código do item e item pai. Cada código de item deve aparecer uma única vez, todo item pai referenciado deve existir e as relações não podem conter ciclos. Uma hierarquia válida deve ter pelo menos um pai com filhos.

<a id="push-document-data"></a>
## Enviar dados do documento

1. Abra ou ative uma peça, montagem ou desenho salvo do SOLIDWORKS.
2. Selecione **PDMPublisher > ERP Sync**.
3. Selecione **Feature tree**, uma tabela de BOM do SOLIDWORKS ou **CSV file...** como fonte. Use os controles disponíveis para essa fonte a fim de preparar a exibição.
4. Marque a caixa de seleção ao lado de cada linha que deseja incluir. Somente as linhas marcadas e exibidas no momento são enviadas. Expanda os ramos recolhidos antes de enviar uma lista de materiais recuada.
5. Selecione o conector ativo na parte inferior da janela.
6. Abra a seta ao lado de **Push** e selecione as operações necessárias.
7. Selecione **Push**, revise o resultado e corrija qualquer item ou lista de materiais com falha informada pelo conector.

![Opções da operação Push do ERP Sync](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-options-20260920.png)

| Operação | Resultado |
| --- | --- |
| Properties | Atualiza as propriedades mapeadas dos itens ERP existentes. |
| Create items + properties | Cria os itens ERP ausentes e envia suas propriedades mapeadas. A criação de itens inclui a sincronização de propriedades. |
| BOM | Envia as relações de lista de materiais entre pai e filhos diretos que foram explicitamente selecionadas. O conector deve anunciar suporte a listas de materiais. |
| Include cut-list items | Inclui linhas compatíveis da lista de corte no instantâneo. |

O instantâneo contém dados simples capturados do SOLIDWORKS; o conector não recebe objetos COM do SOLIDWORKS. As propriedades personalizadas do documento raiz são mescladas com as propriedades da configuração ativa, e os valores da configuração têm precedência. A massa é fornecida em quilogramas.

## Desenvolvimento de conectores

Para criar e carregar sua própria integração em C#, consulte [Criar um conector ERP personalizado](pdmpublishersolidworks_erp-connector.md).
