---
title: "PDMPublisher para SOLIDWORKS"
description: "Use PDMPublisher dentro SOLIDWORKS para publicação, Save As New, Property Doctor, Clone Tree, perfis e configurações compartilhadas."
ms.date: 09/19/2026
ms.topic: overview
---

# PDMPublisher para SOLIDWORKS

PDMPublisher para SOLIDWORKS é um suplemento interativo SOLIDWORKS para a publicação de entregas, criação de cópias de documentos controlados, propriedades de edição e conjuntos de documentos completos de embalagem. Ele é executado dentro do SOLIDWORKS e pode usar informações SOLIDWORKS PDM Professional quando uma visão de cofre está disponível.

> [!IMPORTANT]
> Esta documentação descreve o suplemento SOLIDWORKS, não a tarefa PDMPublisher configurada na ferramenta de administração SOLIDWORKS PDM.

Veja [PDM Task vs SOLIDWORKS suplemento](pdmpublisher-product-differences.md) para uma comparação lado a lado e links para as configurações compartilhadas por ambos os produtos.

<a id="current-interface"></a>
## Interface Actual

Os comandos PDMPublisher estão localizados na guia **PDMPublisher** no SOLIDWORKS CommandManager e sob **Tools > PDMPublisher**. O painel de tarefas agora é um navegador de documentação e não contém mais os controles de publicação.

![PDMPublisher CommandManager comandos e painel de ajuda incorporado em SOLIDWORKS 2026](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
O CommandManager está organizado em três grupos:

| Grupo | Comandos | Objecto |
| --- | --- | --- |
| Ferramentas para documentos | Save As New, Property Doctor, Traduzir, Clone Tree | Crie cópias, gerencie propriedades e conjuntos de documentos de pacotes. Traduzir é reservado para uma versão futura. |
| Conta de materiais | BOM Manager | Configurar colunas BOM, estrutura, agrupamento e exclusões de componentes. |
| Integrações planeadas | ERP Sync, Publisher Macros | Mostrar os locais planejados de ERP synchronization e publicação agendada. Estas integrações ainda não estão disponíveis. |
| Publicação | Publicar, Anotações, Condições, Registos | Configure e execute exportações, controle anotações e regras de processamento e reveja resultados. |
| Configurações e atualizações | Configurações, chave de licença, status de atualização, informações de versão | Configure o suplemento, as configurações de transferência, gerencie o licenciamento e verifique a versão instalada. |

Veja [PDMPublisher Commands](pdmpublishersolidworks_commands.md) para disponibilidade de comandos, drop-downs de perfil e comandos de menu de contexto de montagem.

<a id="start-a-workflow"></a>
## Iniciar um fluxo de trabalho

1. Abra ou ative uma peça salva, montagem ou desenho em SOLIDWORKS.
2. Abra a aba **PDMPublisher** CommandManager.
3. Selecione um comando para usar suas configurações padrão, ou selecione a seta abaixo de um comando suportado para escolher um perfil salvo.
4. Reveja a janela de comando ou pré-visualização antes de escrever arquivos ou propriedades do documento.
5. Complete a operação e reveja quaisquer avisos ou erros relatados.

**Save As New**, **Property Doctor**, **Clone Tree** e **Publish** suportam perfis reutilizáveis. Um componente selecionado em um conjunto também tem comandos PDMPublisher em seu menu com o botão direito do mouse.

<a id="save-as-new"></a>
## Save As New

[Save As New](pdmpublishersolidworks_save-as-new.md) cria um documento nativo separado SOLIDWORKS sem renomear o documento fonte ou alterar as referências de montagem fonte.

![Save As New settings and profile controls](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)

Use-o para:

- Crie nomes de arquivos e pastas de destino a partir de valores de documento, propriedades, valores de pastas, variáveis PDM, fórmulas, números de série e texto solicitado.
- Mostra a janela normal para Gravar Como quando o destino necessitar de confirmação do utilizador.
- Reconstruir o modelo antes de salvar e abrir a nova cópia depois.
- Copie e reinicie um desenho associado.
- Escrever as dimensões da caixa delimitadora calculadas para a nova peça ou montagem.
- Execute uma macro SOLIDWORKS após a cópia ser criada.
- Adicione e verifique os novos arquivos no cofre PDM selecionado automaticamente.

Save As New valida a extensão, destino, arquivos duplicados, arquivos existentes e conflitos de cofre antes de escrever a cópia.

<a id="property-doctor"></a>
## Property Doctor

[Property Doctor](pdmpublishersolidworks_property-doctor.md) exibe o documento ativo, configurações, listas de cortes, desenhos e documentos referenciados em uma grade de propriedades editável.

![Property Doctor document and property grid](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/PropertyDoctor/PropertyDoctor_Main_window_Default_Light_100.png)

Use-o para:

- Adicionar, editar, limpar, reiniciar ou excluir propriedades personalizadas e específicas de configuração.
- Procurar, filtrar, encontrar e substituir e preencher valores em linhas visíveis.
- Use valores de documentos, valores vinculados, fórmulas, informações PDM e fontes externas configuradas.
- Adicione e organize colunas de propriedades ou carregue um modelo de coluna reutilizável.
- Importar valores de propriedade de CSV e exportar a grade atual para CSV.
- Visualize um perfil Property Doctor antes de aplicar suas ações de propriedade ordenadas.
- Verifique arquivos PDM dentro ou fora, obter as últimas referências, resolver e abrir documentos descarregados quando permitido.

As alterações pendentes permanecem na grade até que **Apply changes** seja selecionado. O **Discard changes** restaura os valores que foram carregados quando a janela foi aberta.

<a id="clone-tree"></a>
## Clone Tree

[Clone Tree](pdmpublishersolidworks_smart-pack.md) cria um plano de cópia para um documento ativo e suas referências. Cada arquivo incluído pode ter seu próprio nome de saída e destino, enquanto as referências SOLIDWORKS são atualizadas para os arquivos copiados.

![Clone Tree document copy plan](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/CloneTree/CloneTree_Main_window_Default_Light_100.png)

Use-o para:

- Incluir ou excluir modelos e desenhos individuais da embalagem.
- Crie nomes de arquivos e destinos de propriedades, pastas, variáveis PDM, números de série e fórmulas.
- Ignorar componentes do Toolbox quando eles devem continuar a referenciar seus locais originais.
- Inclui arquivos de companheiros STEP, PDF ou DXF com o mesmo nome.
- Copie a última revisão PDM atribuída diretamente para o destino sem alterar o cache de cofre local.
- Salve documentos suportados na versão atual do SOLIDWORKS ou uma versão anterior suportada.
- Criar um arquivo ZIP após o conjunto de documentos ser copiado.
- Aplicar regras de perfil ordenadas e, opcionalmente, executar um perfil Property Doctor em arquivos copiados.

A cópia é bloqueada quando os alvos são duplicados, sobrescrever um arquivo fonte ou existente, alterar uma extensão SOLIDWORKS, ou depender de informações de destino ou revisão não resolvidas.

<a id="bom-manager"></a>
## BOM Manager

[BOM Manager](pdmpublishersolidworks_bom-manager.md) define o modelo de coluna padrão, tipo de exibição SOLIDWORKS BOM, expressão de agrupamento de linhas e exclusões de componentes baseados em condições usadas pelos fluxos de trabalho BOM.

![BOM Manager main window](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Main_window_Default_Light_100.png)

A janela BOM Manager exibe a hierarquia de montagem, configuração, quantidade e colunas de propriedade selecionadas. Ele pode encontrar e filtrar linhas, alterar o tipo BOM ou modelo de coluna, entradas de grupo, ignorar componentes, importar ou exportar dados do Excel, e aplicar alterações suportadas.

![BOM Manager defaults](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_BOM_Manager_Default_Light_100.png)

Selecione **Ignore Components** para criar condições que removam componentes correspondentes do BOM sem suprimi-los ou excluí-los no conjunto SOLIDWORKS.

![BOM Manager Ignore Components conditions](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Ignore_components_Default_Light_100.png)

<a id="publishing"></a>
## Publicação

O comando [Publicar](pdmpublishersolidworks-publish.md) abre a publicação para o documento ativo. Um perfil Publish combina as configurações de saída, anotações e condições necessárias para uma exportação repetitiva.

![Publish output, drawing sheet, reference, and manufacturing settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

Publishing can:

- Exportar peças, conjuntos, desenhos e referências para PDF suportados, DXF, DWG, STEP, eDrawings, e outros formatos.
- Crie caminhos de saída e nomes de arquivos de placeholders e documentos ou valores PDM.
- Processe referências individualmente, converta configurações e configurações de filtro.
- Selecione desenhar folhas, combinar nomes de folhas, mesclar PDFs, adicionar uma tabela de conteúdo e criar favoritos.
- Exportar padrões planos chapa-metal e corpos divididos.
- Adicionar texto, valores de propriedade, marcas de água e códigos QR através de [Annotações](pdmpublishersolidworks_annotations.md).
- Incluir ou excluir documentos e referências através de [Condições](conditions_solidworks.md).
- Registre detalhes, avisos e erros de processamento em [Logs](pdmpublishersolidworks_logs.md).

Veja [Publicar configurações](pdmpublishersolidworks_options.md) para a referência completa da opção de publicação.

<a id="annotations"></a>
### Anotações

[Anotações](pdmpublishersolidworks_annotations.md) coloca o texto formatado, propriedades SOLIDWORKS, marcas d'água e outras marcas nas páginas PDF publicadas. Cada anotação pode ter sua própria posição e seleção de folhas.

![Annotations editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Annotations_Default_Light_100.png)

<a id="conditions"></a>
### Condições

[Condições](conditions_solidworks.md) usam regras aninhadas para incluir ou excluir documentos e referências antes da exportação. A revisão da publicação mostra o resultado antes da escrita dos arquivos.

![Conditions editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Default_Light_100.png)

<a id="logs-and-publish-review"></a>
### Registra e publica revisão

[Logs](pdmpublishersolidworks_logs.md) grava arquivos de saída, avisos, itens ignorados e erros. Quando o **Show dialog before processing** está habilitado, a janela de revisão lista os arquivos e configurações que serão processados.

![Review files before publishing](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-condition-review-20260916.png)

![Publishing logs filtered to errors](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)

<a id="settings-and-profiles"></a>
## Configurações e perfis

O comando [Configurações](pdmpublishersolidworks_settings.md) abre uma janela pesquisável para todas as configurações adicionais.

![Searchable PDMPublisher for SOLIDWORKS Settings dialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)

A janela contém:

- Configurações de utilitário e perfis para Save As New, Property Doctor e Clone Tree.
- BOM Manager padrão para colunas, tipo de exibição, agrupamento e componentes ignorados.
- Lugares claramente marcados para as características planejadas Traduzir, ERP Sync e Publisher Macros.
- Complete os perfis de publicação, incluindo opções de publicação, anotações e condições.
- Seleção compartilhada de PDM, idiomas, pastas de pesquisa de desenho, fontes externas e fórmulas avançadas.
- Suporte, atualização, versão, informações legais e de licença.

Os perfis pertencem ao comando que os utiliza. Por exemplo, um perfil Property Doctor armazena ações de propriedade, enquanto um perfil Publish armazena comportamento de exportação. Selecionar a seta abaixo de um comando CommandManager lista os perfis disponíveis para esse comando.

Os menus Configurações **Import** e **Export** podem transferir a configuração completa através de um arquivo ou PIN de seis dígitos. A transferência completa inclui cada família de perfil e os recursos compartilhados. As credenciais SQL Server são intencionalmente excluídas e devem ser inseridas no computador de destino.

<a id="shared-resources"></a>
### Recursos partilhados

Recursos compartilhados fornecem configuração reutilizável para utilitários suportados e perfis de publicação.

- [Línguas](pdmpublishersolidworks_languages.md) seleciona a linguagem de visualização suplemento e formatação regional.
- [Localizações do arquivo](pdmpublishersolidworks_file-locations.md) define pastas adicionais usadas para localizar desenhos associados.
- [Fontes externas](pdmpublishersolidworks_external-sources.md) define conexões e consultas reutilizáveis do SQL Server.
- [Formulas avançadas](pdmpublishersolidworks_advanced-formulas.md) define expressões nomeadas para nomes de arquivos, pastas e propriedades.

![Language and regional-format settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Languages_Default_Light_100.png)

![Drawing file-location settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)

![External SQL Server sources](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Sources_Default_Light_100.png)

![Advanced Formulas settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)

<a id="planned-features"></a>
## Características Planejadas

A interface atual reserva páginas para [Traduzir](pdmpublishersolidworks_translate.md), [ERP Sync](pdmpublishersolidworks_erp-sync.md) e [Publisher Macros](pdmpublishersolidworks_publisher-macros.md). Essas páginas mostram as áreas de produto planejadas, mas as características ainda não estão disponíveis para uso de produção.

![Planned Translate settings page](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Translate_Default_Light_100.png)
![Planned ERP Sync settings page](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_ERP_Sync_Default_Light_100.png)

![Planned Publisher Macros settings page](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publisher_Macros_Default_Light_100.png)

<a id="help-task-pane"></a>
## Painel de Tarefas de Ajuda

O painel de tarefas PDMPublisher exibe a página de boas-vindas de documentação compacta no `https://pdmpublisher.com/help/addinwelcome.html`. Ele não hospeda ou controla os comandos PDMPublisher nativos.

A página incorporada requer Microsoft Edge WebView2 Runtime. Se a página não puder carregar, todos os comandos CommandManager permanecem disponíveis. Veja [Ajuda painel de tarefas](pdmpublishersolidworks_help-pane.md) para requisitos e solução de problemas.

<a id="solidworks-pdm-professional-integration"></a>
## Integração com o SOLIDWORKS PDM Professional

Quando o computador tem uma visão de cofre PDM local, PDMPublisher pode usar a sessão ativa PDM para resolver pastas de cofre e variáveis, reservar números de série, verificar arquivos dentro ou fora, obter revisões e validar destinos de cofre. As ações disponíveis ainda seguem as permissões de cofre e o estado de fluxo de trabalho do usuário.

![PDM vault connection used by add-in utilities](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)

O suplemento SOLIDWORKS não inclui agendamento de tarefas PDM, prompts de lançamento de tarefas, configuração de método de execução ou seleção SOLIDWORKS. Estes pertencem a [PDMPublisher para PDM Professional](pdmpublisher.md).

<a id="install-and-enable-the-add-in"></a>
## Instalar e Activar o Suplemento

Fechar SOLIDWORKS antes de executar o instalador MSI. Após a instalação, abra **Tools > Add-Ins**, localize **PDMPublisher (SOLIDWORKS)** em **Partner Solution Add-Ins** e selecione as caixas de seleção de sessão atual e inicialização.

![PDMPublisher para SOLIDWORKS ativado como um parceiro Solução suplemento](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)
Veja [Instalar e ativar o suplemento](pdmpublishersolidworks_installation.md) para o procedimento completo e solução de problemas.

<a id="download-and-licensing"></a>
## Download e licenciamento

- [Guia de instalação](pdmpublishersolidworks_installation.md)
- [Baixar PDMPublisher para SOLIDWORKS](https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher)
- [Comprar um PDMPublisher para a licença SOLIDWORKS](https://bluebyte.biz/product/pdmpublisher-solidworks)
- [Gestão da licença](pdmpublishersolidworks_license.md)

PDMPublisher para SOLIDWORKS pode ser executado como a edição comunitária sem uma chave paga ou de teste. O julgamento separado de 7 dias oferecido em outro lugar neste site de ajuda é para o **PDM Professional Task version**.

![PDMPublisher para a página chave da licença SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_License_Key_Default_Light_100.png)
<a id="updates-and-about"></a>
## Atualizações e Sobre

[Versão e Atualizações](pdmpublishersolidworks-updates.md) relata as versões instaladas e disponíveis e fornece o comando de atualização. [Sobre](pdmpublishersolidworks_About.md) fornece produto, suporte, documentação e informações legais.

![Support and Updates settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Support_Updates_Default_Light_100.png)

![About settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_About_Default_Light_100.png)

Para suporte, contate `support@bluebytesystemsinc.zohodesk.com`.
