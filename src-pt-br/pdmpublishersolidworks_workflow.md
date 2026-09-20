---
title: "Publishing Workflow and Results - PDMPublisher for SOLIDWORKS"
description: "Siga um trabalho PDMPublisher da preparação do documento através de revisão, exportação, registro e solução de problemas."
ms.date: 09/16/2026
ms.topic: how-to
---

# Publishing Workflow e resultados

Use esta sequência para um PDMPublisher repetitivo para SOLIDWORKS trabalho.

<a id="1-prepare-the-document"></a>
## 1. Prepare o documento

1. Abra e salve a peça fonte, montagem ou desenho.
2. Resolver referências suprimidas, leves, ausentes ou desatualizadas, conforme exigido pelo fluxo de trabalho.
3. Ative as folhas de configuração e desenho que você deseja avaliar.
4. Confirme que qualquer perfil PDM-consciente usa o cofre local pretendido.

<a id="2-select-and-review-the-profile"></a>
## 2. Selecione e revise o perfil

Escolha o perfil nomeado da seta ao lado do **Publish**.

![Publish profile selection menu](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)

Revise o local de exportação, nome do arquivo, formatos, modo de folha, referências, configurações, anotações e condições. Habilite **Show dialog before processing** quando um operador deve confirmar o trabalho resolvido antes de os arquivos serem escritos.

<a id="3-review-assembly-selection"></a>
## 3. Reveja a seleção da assembleia

Para uma montagem com análise de exportação e condição de referência individual habilitada, PDMPublisher lista as referências que passaram avaliação. Limpar um arquivo para omiti-lo desta execução. Confirme para continuar ou cancele para parar antes do processamento de exportação.

![Review files to publish after condition evaluation](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-condition-review-20260916.png)

A seleção de revisão afeta apenas a execução atual. Não reescreve a árvore de perfil ou condição.

<a id="4-process-outputs"></a>
## 4. Saídas de Processo

Durante o processamento, PDMPublisher resolve placeholders para cada documento fonte e configuração, cria as pastas necessárias, invoca o exportador SOLIDWORKS correspondente, aplica anotações ou operações PDF, e cria opcionalmente um arquivo.

Não feche o SOLIDWORKS, altere o documento ativo ou modifique arquivos referenciados enquanto a tarefa estiver sendo executada.

<a id="5-interpret-the-result"></a>
## 5. Interpretar o resultado

| Resultado | Significado | Próxima ação |
| --- | --- | --- |
| Concluído | A produção solicitada foi produzida. | Inspecione o destino e localize os arquivos. |
| Atenção | O processamento continuou, mas ocorreu um retrocesso ou uma questão não fatal. | Leia os registros anteriores e verifique o arquivo afetado. |
| Saltado | Uma condição, combinação de código/formato não suportado, falta de entrada ou escolha do operador excluiu o item. | Confirme que o salto foi planejado. |
| Erro | O item não pôde ser exportado ou um pós-processamento necessário step falhou. | Salve o registro, corrija a causa e execute novamente um trabalho controlado. |
| Cancelado | O operador cancelou uma revisão ou trabalho em execução. | Verifique o destino; os arquivos preenchidos antes do cancelamento podem permanecer. |

<a id="6-review-and-preserve-the-log"></a>
## 6. Reveja e preserve o registro

Abra o **PDMPublisher > Logs**. Filtrar por **Errors**, **Warnings**, **Completed**, **Processing** ou **Skipped**, em seguida, inspecionar as mensagens imediatamente antes do resultado.

![Publishing log controls](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)

Use **Save...** para o log de sessão completo ou **Copy selected** para um excerto focado. Inclua o nome do perfil, nome do arquivo de origem, saída esperada e registro salvo ao entrar em contato com o suporte.

> [!IMPORTANT]
> Cancelar não devolve os ficheiros já exportados. Inspecione a pasta de saída antes de repetir para que um resultado parcial anterior não seja confundido com o novo trabalho.
