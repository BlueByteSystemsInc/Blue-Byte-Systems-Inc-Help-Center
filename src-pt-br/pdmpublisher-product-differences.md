---
title: "PDM Task vs SOLIDWORKS Add-in | PDMPublisher"
description: "Compare PDMPublisher para SOLIDWORKS PDM Professional com PDMPublisher para SOLIDWORKS e escolha a documentação correta."
ms.date: 09/16/2026
ms.topic: overview
---

# Tarefa PDM vs Suplemento SOLIDWORKS

PDMPublisher está disponível em dois fluxos de trabalho. Eles compartilham o mesmo motor de publicação e muitas configurações de exportação, mas eles começam trabalhos e obter informações de arquivo de forma diferente.

![PDMPublisher para os comandos SOLIDWORKS nos comandos SOLIDWORKS CommandManager](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
| | PDMPublisher para PDM Professional | PDMPublisher para SOLIDWORKS |
| --- | --- | --- |
| Executa de | Uma tarefa configurada na ferramenta de administração SOLIDWORKS PDM | O menu PDMPublisher CommandManager e Ferramentas dentro de SOLIDWORKS |
| Inicia de | Arquivos de cofre selecionados, uma ação de fluxo de trabalho ou um cronograma PDM | O documento atualmente aberto em SOLIDWORKS |
| Grava as configurações como | Uma definição de tarefa PDM | Perfis reutilizáveis |
| Versão do SOLIDWORKS | Selecionado na configuração da tarefa | A versão atualmente em execução do SOLIDWORKS |
| Informação do ficheiro | Variáveis PDM, cartões, modelos BOM e propriedades SOLIDWORKS | SOLIDWORKS propriedades personalizadas e o documento ativo ou referências de montagem |
| Interacção do utilizador | Pode mostrar o ficheiro de lançamento da tarefa e as instruções de configuração | Usa o documento ativo e o perfil selecionado diretamente |
| Registos | Registros de tarefas opcionais sincronizados com servidores | Uma página dedicada do **Logs** para cada tarefa de publicação |

<a id="shared-documentation"></a>
## Documentação Partilhada

Ambos os produtos usam as mesmas páginas de documentação para configurações cujo comportamento é compartilhado:

- Exportar os formatos de localização, nome do ficheiro e ficheiro
- Exportação de referência de montagem e filtragem de condições
- Várias configurações e filtros de configuração
- Seleção da folha de desenho e padrões de nome da folha
- Junção PDF, índice, colunas de tabelas e favoritos
- Padrão plano DXF e saída de corpo dividido
- Formatação e colocação de anotações
- Grupos de condições, campos, comparações e regras de avaliação
- Referência do lugar

Cada página compartilhada identifica qualquer diferença entre a tarefa PDM e o suplemento SOLIDWORKS.

<a id="pdm-task-only"></a>
## Apenas Tarefa PDM

Use a documentação de tarefa [PDM](pdmpublisher.md) para itens agendados, prompts de lançamento de tarefas, modelos BOM, BOMs derivados de desenho, métodos de cálculo, selecionando uma versão SOLIDWORKS host, pesquisa PDM, registros de atividade de cofre, mapeamento variável, referências PDM e visibilidade de tarefas File Explorer.

<a id="solidworks-add-in-only"></a>
## SOLIDWORKS Apenas Suplemento

Use o [SOLIDWORKS suplemento documentation](pdmpublishersolidworks.md) para publicar perfis, [configurações completas](pdmpublishersolidworks_settings.md), [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md), [Clone Tree](pdmpublishersolidworks_smart-pack.md), publicação interativa, registros, atualizações e licenciamento.

> [!TIP]
> Se você está configurando uma tarefa na ferramenta de administração PDM, siga a seção **PDM Professional** do TOC. Se você estiver usando os comandos PDMPublisher CommandManager dentro do SOLIDWORKS, siga a seção **SOLIDWORKS add-in**.
