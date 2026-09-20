---
title: "Pesquise e leia os logs PDMPublisher para SOLIDWORKS"
description: "Filtrar registros de trabalho PDMPublisher e interpretar processamento, sucesso, aviso e entradas de erro."
ms.date: 08/23/2026
ms.topic: how-to
---

# Procurar e Ler os Registos

A janela **PDMPublisher > Logs** recolhe mensagens da sessão actual. As inscrições podem incluir processamento de arquivos, avaliação de condições, quantidades, folhas de desenho, exportações, avisos e falhas.

![PDMPublisher Janela de logs filtrada em erros](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)
<a id="search-logs"></a>
## Registros de Pesquisa

Digite o texto em **Find** para filtrar os itens exibidos conforme você digita. A correspondência não é sensível a maiúsculas. Use o filtro de tipo adjacente para mostrar mensagens **All entries**, **Errors**, **Warnings**, **Completed**, **Processing** ou **Skipped**.

A pesquisa muda apenas o que é exibido. Ele não remove entradas de log, e [Salvar...](pdmpublishersolidworks-log-files.md) ainda escreve a coleção completa.

Pesquisas úteis incluem um nome de arquivo, extensão de saída, configuração, `warning`, `failed` ou `saved`.

Activar o **Follow newest** enquanto monitora um trabalho activo. Os contadores mostrados, totais e selecionados deixam claro se um filtro de pesquisa ou tipo está escondendo entradas.

<a id="entry-colors"></a>
## Cores de Entrada

| Cor | Mensagem típica |
| --- | --- |
| Amarelo | Início de trabalho, processamento ou progresso geral. |
| Verde | Salvo, completado, adicionado ou passado steps. |
| Vermelho claro | Aviso, erro ou erros. |

Leia as entradas em torno de um aviso ou falha, não apenas a linha destacada. Mensagens anteriores frequentemente identificam o arquivo fonte, configuração ou valor avaliado que levou ao resultado.
