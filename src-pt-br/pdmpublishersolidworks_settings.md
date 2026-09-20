---
title: "Configurações □ PDMPublisher para SOLIDWORKS"
description: "Configurar publicação, utilitários, integrações, BOM Manager, recursos compartilhados, licenciamento e transferência completa de configurações em PDMPublisher para SOLIDWORKS."
ms.date: 09/19/2026
ms.topic: how-to
---

# Configurações

Abra o **PDMPublisher > Settings** para configurar o suplemento SOLIDWORKS. Opções de pesquisa encontra configurações pelo nome da página, etiqueta e palavra-chave relacionada.

![Current Publish page in the unified PDMPublisher for SOLIDWORKS Settings dialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

A navegação esquerda divide o diálogo em **Publishing**, **Utilities**, **Integration**, **Bill Of Materials**, **Shared Resources** e páginas de informação de produto. **Search Options** encontra um controle por sua etiqueta ou uma palavra-chave relacionada sem exigir que o usuário saiba qual página a contém.

<a id="settings-pages"></a>
## Configurações Páginas

| Categoria | Página | O que controla |
| --- | --- | --- |
| Utilitários | [Save As New](pdmpublishersolidworks_save-as-new.md) | Modelos de nome de arquivo e destino, números de série PDM, desenhos associados, propriedades da caixa limite, macros e perfis de comandos. |
| Utilitários | [Clone Tree](pdmpublishersolidworks_smart-pack.md) | Perfis de clone, fonte de número de série PDM, comportamento de última revisão, arquivos companheiros, saída ZIP e processamento opcional Property Doctor. |
| Utilitários | [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Colunas padrão, carregamento de miniaturas e perfis de propriedade- ação. |
| Utilitários | [Traduzir](pdmpublishersolidworks_translate.md) | Fluxo de trabalho de tradução planejado; ainda não está disponível. |
| Integração | [ERP Sync](pdmpublishersolidworks_erp-sync.md) | Conector ativo, modelo de colunas e tipo de lista de materiais padrão, agrupamento, componentes ignorados e filtros. |
| Integração | [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) | Agendador de publicação planejado; ainda não disponível. |
| Conta de Materiais | [BOM Manager](pdmpublishersolidworks_bom-manager.md) | Colunas BOM padrão, tipo de exibição, expressão de agrupamento e exclusões de componentes. |
| Recursos Compartilhados | [PDM](pdmpublishersolidworks_pdm-settings.md) | O cofre usado pelas configurações de utilitário PDM-consciente. |
| Recursos Compartilhados | [Línguas](pdmpublishersolidworks_languages.md) | A linguagem de interface PDMPublisher. |
| Recursos Compartilhados | [Localizações dos ficheiros](pdmpublishersolidworks_file-locations.md) | Pastas de desenho adicionais, subpastas opcionais e pastas de documentos referenciados SOLIDWORKS. |
| Recursos Compartilhados | [Fontes externas](pdmpublishersolidworks_external-sources.md) | Fontes reutilizáveis de SQL Server usadas por menus de propriedades e fórmulas suportados. |
| Recursos Compartilhados | [Formulas avançadas](pdmpublishersolidworks_advanced-formulas.md) | Fórmulas nomeadas compartilhadas por nomes de arquivos, pastas e propriedades. |
| Publicação | [Publicar](pdmpublishersolidworks_options.md) | Publique perfis, saída, formatos, referências, folhas de desenho, PDFs e produção de saída. |
| Suporte | [Sobre](pdmpublishersolidworks_About.md) | Suporte, documentação, produto e links legais. |
| Informação do produto | [Chave licenca](pdmpublishersolidworks_license.md) | SOLIDWORKS suplemento ativação, desativação e status Community Edition. |

Selecione **OK** para salvar as alterações. O **Cancel** fecha a janela sem gravar as edições actuais. **Reset** restaura padrões para a página selecionada; selecione **OK** para manter os valores de reset.

<a id="utility-settings"></a>
## Configuração do Utilitário

<a id="save-as-new"></a>
### Save As New

![Current Save As New settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)

A página controla os placeholders do nome do arquivo, um destino opcional, números de série PDM, se deve mostrar o diálogo SOLIDWORKS Save As, check-in automático, reconstruir o comportamento, abrir a nova cópia, propriedades da caixa limite calculadas, desenhos associados, limpeza Property Doctor, macros pós-salva e perfis reutilizáveis. As opções que dependem de outra caixa de seleção permanecem desabilitadas até que sua opção pai esteja habilitada.

<a id="clone-tree"></a>
### Clone Tree

![Current Clone Tree settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Clone_Tree_Default_Light_100.png)

**Use this serial number** seleciona a definição de número de série PDM usada por linhas que solicitam um novo número. O seletor de perfil escolhe as configurações editadas pelo comando. Os botões ao lado criam, renomeiam/editam e deletam perfis. Os números de série são gerados quando o **Copy** é selecionado no fluxo de trabalho, e volta a reutilizar o mesmo número enquanto o diálogo permanece aberto.

<a id="property-doctor"></a>
### Property Doctor

![Current Property Doctor settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Property_Doctor_Default_Light_100.png)

**Hide thumbnail column** melhora o desempenho de carga. O seletor coluna-template determina quais propriedades aparecem quando o Property Doctor abre. **Edit columns** altera esse modelo e **Save default** armazena-o como padrão. O seletor de perfil e botões adjacentes selecionar, criar, editar ou excluir perfis de ação Property Doctor.

<a id="shared-resources"></a>
## Recursos Compartilhados

<a id="pdm"></a>
### PDM

![PDM vault connection settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)

Habilite **Use vault** e selecione o cofre local SOLIDWORKS PDM Professional compartilhado por números de série, check-in automático, placeholders de pasta raiz Vault e outras ferramentas conscientes de PDM.

<a id="languages"></a>
### Línguas

![Language and regional-format selection](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Languages_Default_Light_100.png)

Selecione o idioma de exibição e formatação regional usado pelo PDMPublisher neste computador. Reabrir as janelas PDMPublisher existentes após alterá-lo.

<a id="file-locations"></a>
### Locais dos Ficheiros

![Drawing file-location settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)

Use **Add** e **Remove** para manter pastas de pesquisa de desenho adicionais. O **Include subfolders** procura por baixo de cada pasta listada. **Include SOLIDWORKS File Locations > Referenced Documents folders** também pesquisa as pastas configuradas no SOLIDWORKS. A pasta do modelo ativo é sempre pesquisada primeiro, seguida das pastas listadas em ordem.

<a id="external-sources"></a>
### Fontes Externas

![External SQL Server source settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_External_Sources_Default_Light_100.png)

Fontes externas são reutilizáveis conexões e consultas SQL Server. **Add** cria uma fonte, **Edit / Test** a altera e valida a consulta usando um nome de configuração, nome de arquivo ou valor de propriedade, e **Delete** remove a definição selecionada. As credenciais permanecem locais e não estão incluídas nas configurações exportadas.

<a id="advanced-formulas"></a>
### Fórmulas Avançadas

![Advanced formula settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)

Fórmulas avançadas são chamadas expressões compartilhadas por nomes de arquivos, pastas e menus de propriedades suportados. **Add** cria uma fórmula, **Edit** muda a fórmula selecionada, e **Delete** remove-a. Os nomes das fórmulas devem descrever seu resultado para que permaneçam compreensíveis quando inseridos de outro fluxo de trabalho.

<a id="dialog-commands"></a>
## Comandos de diálogo

| Comando | Comportamento |
| --- | --- |
| **Reset** | Restaura os padrões da página de configurações selecionada. O reset é salvo somente após selecionar **OK**. |
| **Import** | Importa todas as configurações de um arquivo ou um PIN de compartilhamento de seis dígitos. |
| **Export** | Exporta todas as configurações para um arquivo ou envia-os e retorna um PIN de compartilhamento. |
| **OK** | Valida e salva as alterações atuais. |
| **Cancel** | Fecha a janela sem gravar as edições feitas desde que foi aberta. |

<a id="transfer-all-settings"></a>
## Transferir todas as configurações

Os menus **Import** e **Export** na parte inferior transferem uma configuração completa do PDMPublisher.

- **Export all settings to File...** cria um pacote completo de configurações.
- **Share complete settings using PIN...** carrega o pacote e retorna um PIN de seis dígitos.
- **Import all settings from File...** valida e aplica um pacote do disco.
- **Import complete settings using PIN...** baixa, valida e aplica um pacote compartilhado.

Um pacote completo contém configurações de utilitário, perfis Save As New, perfis Property Doctor, perfis Clone Tree, fórmulas e fontes compartilhadas e perfis completos de publicação.

As configurações do ERP Sync são incluídas no pacote completo de configurações. As credenciais do conector e outros valores salvos permanecem protegidos para o usuário atual do Windows e não se tornam portáteis pela exportação das configurações. Páginas planejadas sem controles configuráveis, como Publisher Macros e Translate, não adicionam comportamento ativo a um pacote exportado.

> [!IMPORTANT]
> Os segredos de conexão SQL Server não são exportados ou enviados. Após uma importação, reenter credenciais para fontes externas que já não têm credenciais locais correspondentes.

Antes de substituir as configurações, o PDMPublisher valida cada seção e cria um backup local cronometrado. Se escrever uma seção falhar, ela tenta restaurar as configurações anteriores.

Para transferir apenas um perfil Publish, use [Perfils](pdmpublishersolidworks_profiles.md) em vez de um pacote completo de configurações.

Para o procedimento completo e comportamento de conflito, consulte [Importar, Exportar e Restaurar Configurações](pdmpublishersolidworks_settings-transfer.md).
