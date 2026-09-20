---
title: "Resultados da condição de revisão antes da exportação □ PDMPublisher para SOLIDWORKS"
description: "Use o diálogo de saída das condições para revisar e ajustar os arquivos de montagem selecionados para exportação."
ms.date: 09/16/2026
ms.topic: how-to
---

# Resultados da revisão da condição antes da exportação

Active o **Show conditions output dialog** quando quiser rever as referências de montagem após a árvore de condições ser avaliada e antes de iniciar a exportação.

![Review files to publish after condition evaluation](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-condition-review-20260916.png)

Esta opção está activa por omissão. Aplica-se quando o documento ativo é um conjunto, referências estão disponíveis, e **Export references to file formats individually** está habilitado.

<a id="what-the-dialog-shows"></a>
## O que a Janela Mostra

O diálogo lista os arquivos que passaram o processamento de condição, incluindo informações disponíveis, como:

- Nome e pasta do arquivo
- Configuração referenciada
- Quantidade calculada
- Se foi encontrado um desenho do mesmo nome
- A razão de exclusão para os arquivos que não passaram

Os relatórios sumários incluíram arquivos, arquivos excluídos e o número que passou as condições.

| Controlo | O que ele faz |
| --- | --- |
| **Select all** | Inclui todos os arquivos listados nesta execução. |
| **Exclude all** | Limpa cada caixa de seleção **Use**. |
| **Use** | Inclui ou exclui um arquivo individual sem alterar a árvore de condições salvas. |
| **Output formats for this run** | Sobrepõe os formatos de saída selecionados para esta execução apenas. |
| **Export sheet metal parts to 1:1 flat pattern DXF** | Activa o padrão plano da saída do DXF para esta execução. |
| **Edit profile** | Retorna às configurações do perfil antes de publicar. |
| **Cancel** | Para a revisão sem iniciar a operação de publicação. |
| **Publish** | Inicia o processamento dos arquivos e formatos atualmente selecionados. |

O banner da edição comunitária informa o seu formato e os limites de contagem de referência e as ligações às limitações completas.

Os arquivos são selecionados por padrão. Limpar um arquivo quando ele não deve ser processado nesta tarefa, então confirme a janela para continuar.

Cancelar a janela cancela a tarefa de publicação antes de iniciar o processamento de arquivos.

Se uma tarefa for cancelada após o processamento já ter começado, os arquivos concluídos antes do cancelamento podem permanecer na pasta de saída. Ver [Publicação do fluxo de trabalho e resultados](pdmpublishersolidworks_workflow.md#5-interpret-the-result).

> [!NOTE]
> Esta janela é uma revisão final do trabalho. Ele não reescreve a árvore de condições ou muda permanentemente o perfil selecionado.

Veja [Regras de Avaliação](pdmpublisher-conditions/evaluation-rules.md) para saber como as referências passam ou falham nas condições configuradas.
