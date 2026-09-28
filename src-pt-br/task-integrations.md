---
title: Página de Tarefa de Integrações | PDMPublisher | SOLIDWORKS PDM
description: Execute um conector ERP configurado após uma publicação bem-sucedida da Tarefa PDM do PDMPublisher.
ms.date: 10/09/2026
ms.topic: how-to
---

# Página de Tarefa de Integrações

Use **Integrações** para enviar itens de documentos publicados e variáveis PDM selecionadas a um conector ERP após uma publicação bem-sucedida da Tarefa PDM.

> [!IMPORTANT]
> Esta página configura a integração não assistida da **Tarefa PDM**. Para Push e Pull interativos no SOLIDWORKS, consulte [ERP Sync](pdmpublishersolidworks_erp-sync.md).

![Página Integrações da Tarefa PDM do PDMPublisher](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-integrations-20261009.png)

## Configurar uma conexão

1. Instale um conector ERP compatível e as dependências `PDMPublisher.ERPExtension.dll` em uma pasta local estável em cada host de tarefa.
2. Abra a tarefa no SOLIDWORKS PDM Administration e selecione **Integrações**.
3. Selecione **Add connection...** e escolha a DLL do conector.
4. Digite um nome de conexão e configure servidor, credenciais e mapeamentos.
5. Selecione **Test connection**. O teste verifica a conectividade sem publicar dados no ERP.
6. Configure o mesmo nome de conexão na conta do Windows que executa a tarefa em cada host.
7. Ative **Sync published document items and mapped properties after successful publishing**.
8. Escolha se uma falha de integração deve marcar a tarefa como falha e salve a tarefa.

As conexões são criptografadas para o usuário atual do Windows e armazenadas em `%LOCALAPPDATA%\Blue Byte Systems Inc\PDMPublisher\TaskConnections`. As credenciais não são incluídas nos perfis exportados.

## Configurações

| Configuração | Comportamento |
| --- | --- |
| **Saved connection** | Seleciona a conexão local. O mesmo nome deve existir para a conta de execução em cada host. |
| **PDM variables to include** | Variáveis PDM separadas por vírgulas. Um valor da configuração substitui o valor `@` correspondente. |
| **Mark the task failed if integration fails** | Marca a tarefa como falha se o Push falhar. Os arquivos publicados são mantidos. |

## Comportamento e limites

- A integração é executada somente depois de uma publicação sem falhas de conversão ou cópia.
- O conector recebe itens, variáveis solicitadas e arquivos publicados na execução atual.
- Um Push com falha não é repetido automaticamente, pois o ERP pode ter sido alterado parcialmente.
- Os uploads são limitados a uma saída de cada formato por item.
- Miniaturas, geração ou gravação de números de peça e sincronização hierárquica da BOM do ERP não são compatíveis com a Tarefa PDM.

Para credenciais e mapeamentos específicos, consulte os guias dos conectores [ERPNext](pdmpublishersolidworks_erpnext-connector.md), [Odoo](https://pdmpublisher.com/help/src/pdmpublishersolidworks_odoo-connector.html) e [Business Central](https://pdmpublisher.com/help/src/pdmpublishersolidworks_business-central-connector.html).
