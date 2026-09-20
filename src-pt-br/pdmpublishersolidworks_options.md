---
title: "Configurações de publicação □ PDMPublisher para SOLIDWORKS"
description: "Encontre a documentação focada para cada PDMPublisher para SOLIDWORKS saída e opção de processamento."
ms.date: 09/16/2026
ms.topic: how-to
---

# Configuração da Publicação

Abra **PDMPublisher > Settings > Publish** para editar as configurações de saída e processamento armazenadas em um perfil [Publicar](pdmpublishersolidworks_profiles.md). Selecione **PDMPublisher > Publish** para configurar e executar o perfil ativo.

![Current Publish settings in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

Desça para configurar PDF mesclando, colunas de tabela de conteúdo, favoritos, anotações, condições e perfis de publicação.

![Lower portion of the Publish settings page](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)

<a id="controls-on-the-publish-page"></a>
## Controles na página de publicação

| Secção | Controlo | Objecto |
| --- | --- | --- |
| Saída | **Export location** | Compila a pasta de destino a partir de texto literal e espaços. **Browse** seleciona uma pasta. |
| Saída | **Locations by file format** | Substitui o destino principal para os formatos de saída selecionados. |
| Saída | **Filename** | Compila o nome do arquivo de saída. A extensão é fornecida pelo formato selecionado. |
| Saída | **File formats** | Seleciona um ou mais formatos de saída e expõe configurações específicas de formato onde suportado. |
| Saída | **Show dialog before processing** | Mostra a janela de Publicação para que o utilizador possa rever o perfil activo antes de iniciar a tarefa. |
| Saída | **Open export location on completion** | Abre a pasta de destino após um trabalho bem sucedido. |
| Folhas de desenho | **Sheets to export** | Escolhe todas as folhas ou outro modo de seleção de folhas suportado. |
| Folhas de desenho | **Sheet name** | Filtros desenhando folhas por um padrão de nome avaliado. |
| Exportação | **Export references to file formats individually** | Publica referências de montagem suportadas como arquivos de saída separados. |
| Exportação | **Ignore sub-assembly children when condition checks fail** | Para a travessia abaixo de uma subconjunto que não satisfaz as suas condições. |
| Exportação | **Convert multiple configurations** | Publica as configurações selecionadas separadamente. **Configuration filter** controla a inclusão. |
| Exportação | **Archive all exported documents (.zip)** | Adiciona os arquivos produzidos a um arquivo ZIP. |
| Exportação | **Export sheet metal parts to 1:1 flat pattern DXF** | Produz DXFs de padrão plano pronto para fabricação. **Sheet metal settings** controla camadas e comportamento DXF. |
| Exportação | **Split bodies** | Exportações suportadas corpos sólidos separadamente. |
| PDF | **Merge exported PDFs into one master PDF** | Combina PDF exportados em ordem de processamento. |
| PDF | **Add table of content to merged PDF** | Adiciona uma página de conteúdo gerada ao PDF fundido e permite seus controles relacionados. |

Role o painel direito para alcançar o restante PDF, anotação, condição e controles de perfil. Os controles desativados dependem de outra opção; por exemplo, as configurações de tabela de conteúdo permanecem indisponível até que tanto o PDF como a geração de tabela de conteúdo estejam habilitados.

Use as páginas focadas abaixo de **Publishing** no TOC:

| Categoria | Páginas |
| --- | --- |
| Perfis e predefinições | [Publicar perfis](pdmpublishersolidworks_profiles.md), [Predefinições](pdmpublishersolidworks_presets.md), e [Compartilhar um perfil de publicação usando um PIN](pdmpublishersolidworks_profile_sharing.md) |
| Caminhos de saída e nomes | [Localização da exportação](pdmpublisher-options/export-location.md), [nome do arquivo](pdmpublisher-options/filename.md), [Formatos do arquivo](pdmpublisher-options/file-formats.md), [Localização da exportação aberta](pdmpublishersolidworks-open-export-location.md) e [Documentos Exportados do arquivo](pdmpublisher-options/archive-all-exported-documents.md) |
| Montagem e referências | [Referências de exportação individualmente](pdmpublisher-options/export-references-individually.md) e [Ignore crianças sub-Assembly](pdmpublisher-options/ignore-sub-assembly-children-when-condition-checks-fail.md) |
| Configurações | [Converter várias configurações](pdmpublisher-options/convert-multiple-configurations.md) |
| Folhas de desenho e PDFs | [Folhas para exportação](pdmpublisher-options/sheets-to-export.md), [Padrão de nomes das folhas](pdmpublisher-options/sheet-name-pattern.md), [Mesclar PDFs exportados](pdmpublisher-options/merge-exported-pdfs.md), [Tabela de conteúdo](pdmpublisher-options/add-table-of-content-to-merged-pdf.md), [Colunas de tabela](pdmpublisher-options/table-columns.md), e [PDF Bookmarks](pdmpublisher-options/pdf-bookmarks.md) |
| Produção | [Padrão plano de metal folheado DXF](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md) e [Corpos fragmentados](pdmpublisher-options/split-bodies.md) |
| Execução | [Execute um trabalho de publicação](pdmpublishersolidworks-publish.md) e [Publicar fluxo de trabalho e resultados](pdmpublishersolidworks_workflow.md) |

> [!NOTE]
> As configurações somente de tarefas são intencionalmente excluídas desta seção adicional do SOLIDWORKS. Veja [PDM Task vs SOLIDWORKS suplemento](pdmpublisher-product-differences.md) quando uma configuração mostrada na ferramenta de administração PDM não estiver presente aqui.

Use o [Placeholder Reference](pdmpublisherspecialvariable.md) ao construir caminhos de saída, nomes de arquivos, padrões de planilha, anotações ou condições.
