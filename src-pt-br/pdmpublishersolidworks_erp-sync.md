---
title: "ERP Sync | PDMPublisher para SOLIDWORKS"
description: "Configure o ERP Sync e envie itens, propriedades e listas de materiais do SOLIDWORKS por meio de um conector ERP instalado."
ms.date: 09/20/2026
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

<a id="push-document-data"></a>
## Enviar dados do documento

![Janela ERP Sync com linhas de montagem selecionadas](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-window-20260920.png)

1. Abra ou ative uma peça, montagem ou desenho salvo do SOLIDWORKS.
2. Selecione **PDMPublisher > ERP Sync**.
3. Selecione um tipo de lista de materiais e um modelo de colunas. Use **Columns**, **Group by**, **Find**, **Ignore Components** e **Refresh** para preparar a exibição.
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
