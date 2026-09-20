---
title: "Scheduled Items Task Page | PDMPublisher | SOLIDWORKS PDM"
description: "Saiba como usar a página de configuração de tarefas de itens agendados no PDMPublisher para definir arquivos que devem ser processados quando uma tarefa é executada sem arquivos selecionados."
ms.date: 06/21/2026
ms.topic: conceptual
---
# Página de Tarefa de Itens Agendados

A página **Scheduled Items** permite que os administradores definam os arquivos que PDMPublisher deve processar quando a tarefa for lançada.

Isso é útil para tarefas agendadas e lançamentos automatizados de tarefas onde SOLIDWORKS PDM não fornece uma seleção de arquivos para a tarefa.

![Scheduled Items setup page](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduled-items.png)

A programação em si é tratada pela própria estrutura de agendamento do SOLIDWORKS PDM. A página **Scheduling** controla quando a tarefa começa. A página **Scheduled Items** controla que salvou arquivos PDMPublisher processos quando essa tarefa agendada começa.

![SOLIDWORKS PDM Scheduling page](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduling.png)

<a id="when-to-use-this-page"></a>
## Quando usar esta página

Use **Scheduled Items** quando a tarefa é esperada para executar em um cronograma ou de uma automação que não passa arquivos selecionados para PDMPublisher.

Se os arquivos estiverem configurados nesta página, o PDMPublisher usa a lista de itens agendados como entrada de tarefa.

> [!IMPORTANT]
> Itens agendados sobrepõem-se a qualquer outra seleção de arquivos. Se esta página contém arquivos, PDMPublisher processa os arquivos listados aqui e ignora arquivos selecionados do botão direito do mouse **Tasks** menu, arquivos selecionados no lançamento da tarefa, ou arquivos passados por outro método de lançamento. Apenas configure itens agendados para tarefas que devem processar sempre a mesma lista salva de arquivos.

<a id="adding-files"></a>
## Adicionando arquivos

Clique em **Add** para escolher um ou mais arquivos SOLIDWORKS do cofre.

O PDMPublisher armazena o ID do arquivo selecionado e o ID da pasta pai. Estes IDs são usados mais tarde para reconstruir a lista de entrada de tarefas quando a tarefa agendada é executada.

A tabela exibe:

|Coluna|Designação das mercadorias|
|:---|:---|
|Nome do Ficheiro|O nome do ficheiro seleccionado.|
|Encontrado em|A pasta do cofre onde o ficheiro foi seleccionado.|

<a id="removing-files"></a>
## Removendo arquivos

Selecione uma ou mais linhas e clique em **Remove** para removê-los da lista de itens agendados.

<a id="important-notes"></a>
## Notas importantes

- Os arquivos selecionados devem permanecer disponíveis no cofre.
- A máquina de tarefas deve ter permissão para acessar os arquivos selecionados e suas pastas.
- A tarefa ainda usa as configurações das outras páginas de configuração, incluindo **Options**, **Annotations** e **Conditions**.
- Se esta página contém arquivos, esses arquivos são usados mesmo quando a tarefa é lançada a partir de um arquivo selecionado no File Explorer.
- Se esta página contém arquivos, esses arquivos também são usados quando a tarefa começa a partir de programação SOLIDWORKS PDM.
- Se nenhum arquivo estiver selecionado no lançamento e nenhum item agendado estiver configurado, a tarefa irá parar com um erro.

<a id="selecting-files-at-task-launch"></a>
## Selecionando arquivos no lançamento da tarefa

Versão **2026.06.21** adiciona um diálogo de seleção de arquivos interativo para tarefas configuradas para perguntar ao usuário quais arquivos processar no lançamento.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher_task_launch_selection.png" alt="PDMPublisher task launch file selection dialog" width="900">
</p>

A janela permite ao utilizador:

- Adicione arquivos do cofre.
- Importar nomes de arquivos de um arquivo CSV.
- Reveja as referências de montagem calculadas automaticamente.
- Ver desenhos relacionados como linhas somente para crianças.
- Escolha os formatos de arquivo específicos para a execução da tarefa.
- Reveja o local de exportação configurado antes de iniciar a tarefa.

O aviso no topo lembra aos usuários que o comportamento de exportação de tarefas é configurado por um administrador na ferramenta SOLIDWORKS PDM Administration.

<a id="csv-import"></a>
### Importação do CSV

Clique em **From CSV** para importar arquivos de uma lista de arquivos separada por vírgulas.

PDMPublisher lê nomes de arquivos de uma coluna de arquivos reconhecida como `filename`, `file`, `filepath` ou `path`. Se nenhum cabeçalho reconhecido for encontrado, PDMPublisher verifica cada linha para o primeiro nome de arquivo utilizável. Caminhos completos são suportados porque apenas o nome do arquivo é usado para a pesquisa de cofre.

Para cada linha importada, PDMPublisher pesquisa o cofre e usa o primeiro resultado correspondente. Os ficheiros duplicados já apresentados na janela são ignorados.

<a id="drawing-rows"></a>
### Linhas de desenho

Quando uma parte ou conjunto referenciado tem um desenho associado, o desenho é mostrado nesse item para revisão. As linhas de desenho marcadas **View only** não são passadas para a lista de entrada da tarefa. Eles são verificados apenas quando um formato de saída 2D, como `pdf`, `dwg` ou `dxf` é selecionado e o arquivo pai é verificado.
