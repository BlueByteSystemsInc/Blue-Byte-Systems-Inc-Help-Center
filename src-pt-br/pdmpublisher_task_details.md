---
title: "Task Details Log tab | PDMPublisher | SOLIDWORKS PDM"
description: "Explica a guia de Log de Detalhes da Tarefa no PDMPublisher e como ele lê informações de arquivos bem-sucedidas de registros de tarefas."
ms.date: 06/19/2026
ms.topic: conceptual
---

# Página de detalhes da tarefa


A guia **Task Details Log** no PDMPublisher fornece um rápido resumo de arquivos que foram convertidos e salvos com sucesso de volta em SOLIDWORKS PDM.

Esta janela pretende facilitar a confirmação dos ficheiros de saída criados pela tarefa sem abrir manualmente o ficheiro de registo de tarefas.

![PDMPublisher Task Details tab](https://pdmpublisher.com/help/images/detailstab.png)

<a id="what-the-details-tab-shows"></a>
## O que mostra a aba Detalhes

A aba Detalhes exibe uma tabela de arquivos de sucesso encontrados no registro de tarefas PDMPublisher.

O quadro pode incluir:

| Coluna | Designação das mercadorias |
|---|---|
| Timetamp | A hora em que o ficheiro foi gravado ou registado. |
| Ficheiro de Destino | O arquivo de saída criado pelo PDMPublisher. |
| Ver | A versão PDM do arquivo de saída salvo. |
| Ficheiro Original | O ficheiro de código usado para criar a saída. |
| Encontrado em | A pasta PDM onde o arquivo de destino foi salvo. |

<a id="important-requirements"></a>
## Requisitos importantes

A página Detalhes Log depende do arquivo de registro de tarefas.

Para que a guia de Registro de Detalhes funcione corretamente:

1. **Logging must be enabled in the PDMPublisher task.**
2. O usuário que abre os detalhes deve ter permissão para ler o arquivo de log.
3. O usuário deve ter acesso ao estado do fluxo de trabalho e pasta onde o arquivo de log é armazenado.

Se o arquivo de log não puder ser acessado, a aba Detalhes Log pode não ser capaz de exibir os arquivos bem-sucedidos.

> [!IMPORTANT]
> Arquivos salvos fora do cofre PDM são **not tracked** na guia Detalhes Log. A aba Detalhes Log somente reporta arquivos que foram salvos ou registrados no SOLIDWORKS PDM e registrados no registro de tarefas.




<a id="log-file-permissions"></a>
## Permissões do ficheiro de registo

PDMPublisher lê o arquivo de registro de tarefas para compilar a guia Detalhes.

Se o usuário não tiver permissão para acessar o arquivo de log, a aba Detalhes pode mostrar um resultado vazio ou exibir um aviso.

Causas comuns incluem:

- O usuário não tem permissão de leitura para o arquivo de log.
- O usuário não tem permissão de leitura para a pasta de registro.
- A pasta é restrita por permissões de fluxo de trabalho.
- O arquivo está em um estado de fluxo de trabalho que o usuário não pode acessar.
- O arquivo de log foi movido ou excluído.
- A referência do registo de tarefas não é mais válida.

<a id="open-log-file"></a>
## Abrir arquivo de registro

O botão **Open Log File** abre o arquivo de registro de tarefas original.

Usar esta opção quando:

- A aba Detalhes não mostra os arquivos esperados.
- Você deseja rever o resultado completo da tarefa.
- Você precisa solucionar uma tarefa falhada ou parcialmente concluída.
- Você deseja confirmar se os arquivos de saída foram salvos dentro ou fora do PDM.

<a id="help"></a>
## Ajuda

O botão **Help** abre esta página de documentação.

<a id="troubleshooting"></a>
## Resolução de Problemas

<a id="the-details-tab-is-empty"></a>
### A página Detalhes está vazia

Verifique o seguinte:

- Confirme que o registro está ativado na tarefa PDMPublisher.
- Confirme que a tarefa criou arquivos dentro do cofre PDM.
- Abra o arquivo de log e verifique se existem mensagens de check-in bem-sucedidas.
- Confirme que o usuário leu o acesso ao arquivo de log e à pasta de log.
- Confirme que os arquivos de saída não foram salvos fora do PDM.

<a id="the-log-file-cannot-be-opened"></a>
### O ficheiro de registo não pode ser aberto

Isso geralmente significa que o arquivo não pode ser encontrado ou o usuário não tem permissões suficientes para acessá-lo.

Peça ao seu administrador de PDM para verificar:

- Permissões de pastas
- Permissões de estado de fluxo de trabalho
- Permissões de leitura do arquivo
- Localização do ficheiro de registo
- Se o ficheiro de registo ainda existe no cofre

<a id="notes"></a>
## Notas

A aba Detalhes é uma apresentação do registro de tarefas do PDMPublisher. Ele não cria registros de rastreamento separados. Se a informação necessária não estiver disponível no ficheiro de registo, não poderá ser mostrada na página Detalhes.
