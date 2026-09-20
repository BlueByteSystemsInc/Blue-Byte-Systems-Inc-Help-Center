---
title: "Ask User to Specify Files on Task Launch | PDMPublisher Options"
description: "Peça aos usuários para selecionar arquivos e formatos ao iniciar a publicação."
ms.date: 08/09/2026
ms.topic: reference
---

# Perguntar ao Usuário para Especificar Arquivos no Lançamento de Tarefas

![Ask user to specify files setting](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-007-property-ask-user-to-specify-files-on-task-launch.png)

Quando esta opção estiver habilitada, o PDMPublisher mostra uma janela de seleção de arquivos no lançamento da tarefa. O usuário pode escolher quais arquivos exportar, quais configurações processar, quais formatos criar, e onde a saída deve ir na máquina que lançou a tarefa.

![Ask user to specify files dialog](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/ask-user-specify-files-dialog.png)

Use esta opção quando a pessoa que lança a tarefa deve ser capaz de escolher os arquivos, configurações, formatos e local de exportação em vez de usar apenas a configuração de tarefa fixa da ferramenta de administração SOLIDWORKS PDM.

<a id="add-files"></a>
## Adicionar arquivos

Selecione **Add** para adicionar manualmente arquivos no lançamento da tarefa. Isso é útil quando o usuário sabe exatamente qual montagem, peça, desenho ou documento precisa ser exportado.

Depois que um arquivo é adicionado, ele aparece na lista de arquivos com uma caixa de seleção. Os arquivos verificados são incluídos quando a publicação começa. Os ficheiros não assinalados permanecem visíveis na janela mas são ignorados quando o utilizador selecciona o **OK**.

<a id="import-from-csv"></a>
## Importação do CSV

Selecione **From CSV** para adicionar vários arquivos de uma lista CSV. Isso é útil para lotes repetiveis, pacotes de lançamento ou listas geradas de outro sistema.

Os arquivos no CSV devem resolver os arquivos que o usuário pode acessar no cofre ou cache local. Após a importação, o usuário ainda pode revisar a lista, limpar caixas de seleção para arquivos que devem ser ignorados e ajustar as opções de configuração ou formato antes de publicar.

<a id="file-list"></a>
## Lista de Ficheiros

O lado esquerdo da janela mostra os ficheiros que serão considerados para exportação.

| Coluna | O Que Significa |
| --- | --- |
| **File Name** | O arquivo selecionado para exportação. As assembleias podem se expandir para mostrar peças e desenhos referenciados. |
| **Configuration** | A configuração que será processada para essa linha. Desenhos comumente mostram somente visualização porque a folha de desenho está sendo exportada em vez de uma configuração de modelo. |
| **Found In** | O cofre ou pasta de cache local onde PDMPublisher encontrou o arquivo. |

As assembleias podem ser expandidas para que os usuários possam incluir ou excluir componentes referenciados. Ao desenhar a pesquisa está habilitada, desenhos relacionados podem aparecer sob o arquivo do modelo para que o usuário possa decidir se o desenho deve ser exportado também.

<a id="selected-file-details"></a>
## Detalhes do Arquivo Seleccionado

O lado direito da janela muda com base na linha seleccionada.

O nome e o local do arquivo no topo confirmam qual arquivo está atualmente selecionado. Isso ajuda os usuários a verificar que eles estão editando o arquivo correto, especialmente quando vários arquivos têm nomes semelhantes.

A lista **Configuration** controla qual configuração é usada para o arquivo selecionado. Os usuários podem escolher uma configuração diferente por arquivo quando a tarefa precisa publicar várias variantes.

A lista de verificação **File Formats** controla os formatos de saída do arquivo selecionado. Por exemplo, um desenho pode ser exportado para PDF, DWG ou DXF, enquanto uma peça ou montagem pode ser exportada para STEP, STL, eDrawings ou outro formato de modelo suportado. Ver [Formatos de arquivo](file-formats.md) para o comportamento específico do formato.

<a id="export-location"></a>
## Exportar Localização

O local de exportação na parte inferior mostra o padrão de saída selecionado no lançamento da tarefa. Ele pode incluir placeholders como `(FileFolder)` assim que os arquivos exportados são colocados em relação ao arquivo fonte.

Por exemplo:

```text
(FileFolder)\Sheet\Export
```

Isso coloca arquivos exportados em uma pasta `Sheet\Export` sob a pasta do arquivo selecionado.

O caminho de exportação pode usar as mesmas regras de placeholder que a opção principal da tarefa. Veja [Export Location](export-location.md) para exemplos de placeholder, caminhos de cofre, caminhos de rede e sobreposições específicas de extensão.

<a id="administration-message"></a>
## Mensagem de Administração

A mensagem amarela explica que o administrador ainda pode controlar como criar STEP, PDF e exportações eDrawings são configuradas a partir da ferramenta de administração SOLIDWORKS PDM.

Esta janela não substitui a configuração do administrador. Ele dá ao usuário uma maneira controlada de escolher arquivos, configurações, formatos e localização de saída na máquina que lançou a tarefa.

<a id="start-or-cancel"></a>
## Iniciar ou Cancelar

Selecione **OK** para começar a publicar com os arquivos, configurações, formatos e local de exportação selecionados.

Selecione **Cancel** para fechar a janela sem executar a tarefa.

Para fluxos de trabalho totalmente automatizados, deixe esta opção desabilitada e configure as configurações de tarefa diretamente na ferramenta de administração.
