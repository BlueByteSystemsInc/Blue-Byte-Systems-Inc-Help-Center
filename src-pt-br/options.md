---
title: "Options | PDMPublisher | SOLIDWORKS PDM"
description: "Breve referência para cada opção de configuração de tarefas PDMPublisher disponível em SOLIDWORKS PDM Professional."
ms.date: 08/09/2026
ms.topic: conceptual
---

# Página de Tarefa Opções

A página de tarefas **Options** controla onde PDMPublisher escreve arquivos exportados, quais formatos são criados, como PDFs são fundidos, e como a tarefa PDM se comporta quando é executada.

> [!IMPORTANT]
> Esta é a página de Opções **PDM task**. Configurações compartilhadas com o suplemento SOLIDWORKS usam as mesmas páginas de detalhes e identificam seu comportamento específico do produto. Ver [Tarefa PDM vs. Suplemento SOLIDWORKS](pdmpublisher-product-differences.md).

![PDMPublisher Página de tarefas de opções](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/page-options.png)
Use esta página como um mapa rápido. Cada configuração links para sua própria página de recursos com a imagem correspondente, explicação e notas.

<a id="recommended-first-setup"></a>
## Primeira Configuração Recomendada

Reveja estas configurações antes de salvar uma nova tarefa:

- [Localização da exportação](pdmpublisher-options/export-location.md)
- [Nome do ficheiro](pdmpublisher-options/filename.md)
- [Formatos de arquivo](pdmpublisher-options/file-formats.md)
- [Use esta versão do SOLIDWORKS](pdmpublisher-options/use-this-version-of-solidworks.md)
- [Template](pdmpublisher-options/template.md), no processamento de conjuntos ou quantidades
- [Registros de Actividade do Vault](pdmpublisher-options/turn-on-activity-tracking.md), ao testar uma nova tarefa

<a id="output"></a>
## Saída

| Configuração | Resumo | Detalhes |
|---|---|---|
| Exportar Localização | Pasta de destino ou padrão de caminho dinâmico para arquivos gerados. | [Abrir](pdmpublisher-options/export-location.md) |
| Nome do arquivo | Padrão de arquivo de saída. Use variáveis para manter os arquivos exportados únicos. | [Abrir](pdmpublisher-options/filename.md) |
| Formatos de Ficheiros | Selecione um ou mais formatos de exportação, como PDF, DXF, DWG, STEP, eDrawings, 3MF, IFC, e outros. | [Abrir](pdmpublisher-options/file-formats.md) |
| Usar @ Tab para avaliar caminhos | Permite que a guia de configuração `@` resolva as variáveis usadas no caminho de exportação ou nome de arquivo. | [Abrir](pdmpublisher-options/use-at-tab-to-evaluate-paths.md) |
| Criar Referência do Ficheiro de Destino para o Ficheiro de Origem | Cria uma referência PDM do arquivo exportado de volta para o arquivo fonte. | [Abrir](pdmpublisher-options/create-reference-from-destination-file-to-source-file.md) |
| Apagar os Duplicados Fora da Pasta de Destino | Remove arquivos de saída duplicados fora da pasta de destino. | [Abrir](pdmpublisher-options/delete-duplicates-outside-destination-folder.md) |
| Mapear as Variáveis entre o Ficheiro de Origem e Destino | Copia metadados mapeados do arquivo fonte para o arquivo de saída gerado. | [Abrir](pdmpublisher-options/map-variables-between-source-and-destination-file.md) |

<a id="export-behavior"></a>
## Comportamento de Exportação

| Configuração | Resumo | Detalhes |
|---|---|---|
| Exportar documento afectado | Exporta o arquivo de nível superior que acionou a tarefa. | [Abrir](pdmpublisher-options/export-active-document.md) |
| Exportar referências para formatos de arquivo individualmente | Exporta documentos referenciados como arquivos de saída separados. | [Abrir](pdmpublisher-options/export-references-individually.md) |
| Converter várias configurações | Processa cada peça e configuração de montagem em vez de apenas uma configuração. | [Abrir](pdmpublisher-options/convert-multiple-configurations.md) |
| Pedir ao usuário para selecionar a configuração na inicialização | Pede ao utilizador a configuração quando a tarefa começar. | [Abrir](pdmpublisher-options/ask-user-to-select-configuration-on-startup.md) |
| Pedir ao utilizador para indicar os ficheiros no lançamento da tarefa | Pede ao usuário para escolher arquivos, referências e formatos no lançamento. | [Abrir](pdmpublisher-options/ask-user-to-specify-files-on-task-launch.md) |
| Arquivar todos os documentos exportados (.zip) | Cria um pacote ZIP contendo os arquivos exportados. | [Abrir](pdmpublisher-options/archive-all-exported-documents.md) |
| Exportar peças de chapa de metal para 1:1 padrão plano DXF | Exporta padrões planos de metal folha como 1:1 DXF arquivos. | [Abrir](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md) |
| Dividir os Corpos | Salva partes de vários corpos como arquivos de corpo separados. | [Abrir](pdmpublisher-options/split-bodies.md) |
| Usar Microsoft Print To PDF para salvar PDFs | Utiliza o caminho de impressora PDF do Windows para a criação PDF. | [Abrir](pdmpublisher-options/use-microsoft-print-to-pdf.md) |

<a id="pdf"></a>
## PDF

| Configuração | Resumo | Detalhes |
|---|---|---|
| Junção exportada PDFs para um único mestre PDF | Combina saídas PDF em um mestre PDF. | [Abrir](pdmpublisher-options/merge-exported-pdfs.md) |
| Adicionar uma tabela de conteúdo ao PDF | Insere um índice gerado no PDF fundido. | [Abrir](pdmpublisher-options/add-table-of-content-to-merged-pdf.md) |
| Colunas de tabela | Controla as colunas mostradas no índice de conteúdo gerado do PDF. | [Abrir](pdmpublisher-options/table-columns.md) |
| Marcadores PDF | Define texto de favoritos para PDFs mesclados. | [Abrir](pdmpublisher-options/pdf-bookmarks.md) |

<a id="drawing-sheets"></a>
## Folhas de desenho

| Configuração | Resumo | Detalhes |
|---|---|---|
| Folhas para exportar | Escolha todas as folhas de desenho ou apenas folhas correspondentes a um padrão. | [Abrir](pdmpublisher-options/sheets-to-export.md) |
| Padrão do nome da folha | Padrão Wildcard usado ao exportar apenas folhas correspondentes. | [Abrir](pdmpublisher-options/sheet-name-pattern.md) |

<a id="pdm-and-solidworks"></a>
## PDM e SOLIDWORKS

| Configuração | Resumo | Detalhes |
|---|---|---|
| Trabalhar com a versão mais recente | Força o PDM a obter a versão mais recente do arquivo antes de publicar. | [Abrir](pdmpublisher-options/work-with-latest-version.md) |
| Modo de visualização rápida (Apenas Desenhos) | Abre desenhos em modo de visualização rápida onde é suportado. | [Abrir](pdmpublisher-options/quick-view-mode.md) |
| Usar a pesquisa para localizar desenhos | Usa o comportamento de busca do PDM quando os desenhos não estão ao lado do modelo. | [Abrir](pdmpublisher-options/use-pdm-search-to-locate-drawings.md) |
| Usar esta versão do SOLIDWORKS | Selecciona qual a versão instalada do SOLIDWORKS deve executar a tarefa. | [Abrir](pdmpublisher-options/use-this-version-of-solidworks.md) |
| Ocultar Tarefa no Explorador de Arquivos | Oculta o comando de tarefa do menu do PDM File Explorer com o botão direito do mouse. | [Abrir](pdmpublisher-options/hide-task-in-file-explorer.md) |

<a id="bom-activity-logs-and-advanced"></a>
## BOM, Registros de Atividades e Avançados

| Configuração | Resumo | Detalhes |
|---|---|---|
| Modelo | Seleciona o modelo BOM/layout utilizado para a saída consciente da quantidade. | [Abrir](pdmpublisher-options/template.md) |
| Método de cálculo | Escolhe como as referências são calculadas para avaliação de BOM e quantidade. | [Abrir](pdmpublisher-options/calculation-method.md) |
| Usar BOM derivado do desenho | Utiliza o primeiro chamado BOM salvo no desenho de montagem associado, com o BOM calculado configurado como um retrocesso. | [Abrir](pdmpublisher-options/use-drawing-derived-bom.md) |
| Registos de Actividade do Vault | Cria registros detalhados na pasta de cofre configurada quando a publicação começa. | [Abrir](pdmpublisher-options/turn-on-activity-tracking.md) |
| Registos de Actividade com Sincronização do Servidor | Envia registros de atividade para o servidor para futuras análises de suporte. | [Abrir](pdmpublisher-options/server-synced-activity-logs.md) |
| Pasta de Registos (Somente por Valor) | Pasta de cofre PDM onde os logs são armazenados. | [Abrir](pdmpublisher-options/log-folder-vault-only.md) |
| Ignorar subconjuntos de crianças quando as verificações da condição falharem | Evita que crianças de subconjuntos falho sejam processadas. | [Abrir](pdmpublisher-options/ignore-sub-assembly-children-when-condition-checks-fail.md) |

<a id="related-pages"></a>
## Páginas Relacionadas

- [Página de Tarefa de Anotações](annotations.md)
- [Página de Tarefa das Condições](conditions.md)
- [Página de Tarefa de Itens agendados](scheduleditems.md)
