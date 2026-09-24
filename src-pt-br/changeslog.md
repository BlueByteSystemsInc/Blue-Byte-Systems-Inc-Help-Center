---
title: "PDMPublisher Change Log – Atualizações de recursos, melhorias e correções"
description: "Veja o registro de alterações PDMPublisher com atualizações detalhadas de recursos, melhorias, correções de bugs e melhorias em todas as versões."
ms.date: 10/05/2026
ms.topic: conceptual
---
# Registo de Alterações do PDMPublisher

Esta página rastreia todas as alterações, correções, melhorias e novos recursos introduzidos no PDMPublisher, o SOLIDWORKS PDM Professional tarefa suplemento, e PDMPublisher para SOLIDWORKS, o SOLIDWORKS suplemento.

As versões são identificadas pela sua data de compilação, que representa a data de compilação da versão lançada. Cada entrada pode incluir atualizações como nova funcionalidade, correções de erros, melhorias de desempenho, atualizações de compatibilidade, alterações de configuração e alterações de comportamento conhecidas.

<a id="current-versions"></a>
## Versões atuais

| Produto | Versão actual |
| --- | --- |
| [PDMPublisher para SOLIDWORKS](pdmpublishersolidworks.md) | `2026.10.05` |
| [PDMPublisher PDM Task](pdmpublisher.md) | `2026.09.08` |

A tarefa SOLIDWORKS suplemento e PDM são liberadas de forma independente, então seus números de versão atuais podem diferir.

> [!TIP]
> Se você estiver usando PDMPublisher (tarefa), recomendamos que você use PDMDeploy para atualizar PDMPublisher. Por favor, veja [aqui](/src/cdpdm.html).

<a id="20261005"></a>
## 2026.10.05
*Aplica-se ao **suplemento SOLIDWORKS***

- Foram adicionadas pequenas correções da interface do usuário para o modo escuro.

<a id="202610040"></a>
## 2026.10.04.0
*Aplica-se ao **suplemento SOLIDWORKS***

- Versão do instalador: `26.10.04`.
- O layout de exportação do Excel no [BOM Manager](pdmpublishersolidworks_bom-manager.md) foi aprimorado, colocando **Browse...** ao lado do campo **Workbook template**.
- A opção de miniatura da exportação do Excel foi renomeada para **Include thumbnail**.

<a id="20261003"></a>
## 2026.10.03
*Aplica-se ao **suplemento SOLIDWORKS***

- Foi adicionado **Company Settings**, permitindo que um administrador publique grupos de configuração selecionados para usuários licenciados com o mesmo nome de empresa.
- Foram adicionadas as políticas **Off**, **Let users choose** e **Required**, edição protegida pelo administrador, cache local, proteção contra conflitos de revisão e uma opção explícita para substituir uma revisão mais recente.

<a id="20261002"></a>
## 2026.10.02
*Aplica-se ao **suplemento SOLIDWORKS***

- A exclusão de colunas no [Property Doctor](pdmpublishersolidworks_property-doctor.md#edit-properties) foi corrigida para permitir que várias colunas de propriedades selecionadas sejam marcadas para exclusão ou restauradas em conjunto. Usar o comando em uma coluna não selecionada continua afetando somente essa coluna.

<a id="20261001"></a>
## 2026.10.01
*Aplica-se ao **suplemento SOLIDWORKS***

- Foi corrigido um problema em que a exclusão de uma propriedade personalizada no [Property Doctor](pdmpublishersolidworks_property-doctor.md#edit-properties) não marcava o documento do SOLIDWORKS como modificado. A exclusão agora é mantida quando o documento é salvo.

<a id="20260928"></a>
## 2026.09.28
*Aplica-se ao **suplemento SOLIDWORKS***

- Foi adicionado um seletor de fonte do ERP Sync para a [árvore de recursos do SOLIDWORKS, tabelas de BOM do SOLIDWORKS e arquivos CSV UTF-8](pdmpublishersolidworks_erp-sync.md#choose-the-synchronization-source).
- As fontes de tabela de BOM do SOLIDWORKS usam linhas e colunas visíveis, quantidades exibidas e a configuração selecionada da tabela. Tabelas recuadas válidas também podem fornecer a hierarquia da lista de materiais.
- As fontes CSV expõem todas as colunas ao conector e podem fornecer a hierarquia da lista de materiais por meio de colunas reconhecidas de código do item e item pai.

<a id="20260927"></a>
## 2026.09.27
*Aplica-se ao **suplemento SOLIDWORKS***

- O [relatório do ERP Sync](pdmpublishersolidworks_erpnext-connector.md#monitorar-a-sincronização-e-revisar-o-relatório) foi corrigido para que cada Item marcado receba um resultado claro: **Success**, **No sync needed** ou **Failure**.
- Conectores bem-sucedidos que não retornam resultados individuais agora marcam as linhas afetadas como **Success** com uma mensagem explicativa, em vez de **Not reported**.
- Foram adicionadas cores por estado, detalhes de falha mais claros, pesquisa por estado e uma grade de relatório mais limpa.

<a id="20260926"></a>
## 2026.09.26
*Aplica-se ao **suplemento SOLIDWORKS***

- O [ERP Sync](pdmpublishersolidworks_erp-sync.md) foi habilitado para sincronizar itens selecionados do SOLIDWORKS, propriedades mapeadas, números de peça gerados pelo ERP e relações marcadas da lista de materiais por meio de um conector ERP instalado.
- Foi adicionada a janela de revisão do ERP Sync com seleção de linhas, tipos de exibição da lista de materiais, modelos de colunas, agrupamento, filtragem, regras para ignorar componentes, inclusão de itens de lista de corte e operações Push selecionáveis.
- Foram adicionados o catálogo oficial de conectores e o carregamento de conectores personalizados por meio de **ERP connector settings**.
- Foram adicionados o contrato `PDMPublisher.ERPExtension.dll` e a API tipada `ErpConnector<TSettings>` para [criar conectores ERP personalizados em C#](pdmpublishersolidworks_erp-connector.md) no .NET Framework 4.7.2.
- Foram adicionados a configuração do [conector ERPNext](pdmpublishersolidworks_erpnext-connector.md), o teste de conexão e a sincronização de itens, propriedades e listas de materiais. A opção Pull permanece visível, mas desabilitada nesta versão.

<a id="20260925"></a>
## 2026.09.25
*Aplica-se ao **suplemento SOLIDWORKS***

- O PDMPublisher foi reorganizado em torno do CommandManager do SOLIDWORKS e do menu **Tools > PDMPublisher**. O painel de tarefas agora exibe a ajuda online em vez de hospedar os controles de publicação. Consulte [Comandos PDMPublisher](pdmpublishersolidworks_commands.md) e [Painel de tarefas de ajuda](pdmpublishersolidworks_help-pane.md).
- Foram adicionados os fluxos de trabalho de utilitários atuais: [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md), [Clone Tree](pdmpublishersolidworks_smart-pack.md) e [BOM Manager](pdmpublishersolidworks_bom-manager.md).
- Foi adicionada uma caixa de diálogo [Settings](pdmpublishersolidworks_settings.md) unificada e pesquisável, com perfis específicos por comando, recursos compartilhados e transferência completa da configuração por arquivo ou PIN de seis dígitos. Consulte [Importar, exportar e redefinir configurações](pdmpublishersolidworks_settings-transfer.md).
- Os modelos de publicação e a avaliação de propriedades foram ampliados com valores PDM, valores de data e hora, números de série, fórmulas salvas e fontes SQL externas.
- Foram adicionados ajuda contextual para condições, seleção de nomes de propriedades com curingas e atribuição de material a partir de uma propriedade no Property Doctor.
- Foram adicionados a localização da interface e instaladores localizados. Consulte [Idiomas](pdmpublishersolidworks_languages.md).
- Foram adicionadas estatísticas opcionais de instalação e licença, com desativação imediata por usuário. Consulte [Sobre, atualizações e licença](pdmpublishersolidworks_About.md).

<a id="20260908"></a>
## 2026.09.08
*Aplica-se ao **PDM Task** *

- Adicionado [Get latest revision only](/src/pdmpublisher-options/get-latest-revision-only.html). A tarefa pode publicar a revisão mais recente gravada do PDM e as referências salvas com essa revisão em vez de versões não revisadas mais recentes.
- Tratamento de erro de saída-cópia alterado. Se um ou mais arquivos gerados não podem ser copiados para o seu destino, a tarefa agora é marcada como falhada em vez de concluída com sucesso.
- Adicionado mensagens de log de falha de cópia mais claras com o caminho de origem temporário, caminho de destino e detalhes de erro disponíveis.

<a id="20260812"></a>
## 2026.08.12
*Aplica-se ao **PDM Task** *

- Corrigido as preferências de exportação SOLIDWORKS usadas quando a tarefa cria eDrawings Part (`.eprt`), eDrawings Assembly (`.easm`) e arquivos eDrawings Drawing (`.edrw`).
- A tarefa agora permite explicitamente medir e salva propriedades de arquivo e propriedades de arquivo por componente em saídas eDrawings suportadas em vez de depender das preferências armazenadas anteriormente no host de tarefas.
- Nenhum comportamento adicional PDMPublisher para SOLIDWORKS mudou nesta versão. Ver [eDrawings Export Settings](/src/pdmpublisher-options/edrawings-export-settings.html).

<a id="20260811"></a>
## 2026.08.11
*Aplica-se ao **SOLIDWORKS Add-in** *

- PDMPublisher registrado para SOLIDWORKS como um suplemento SOLIDWORKS Partner Solution. Agora aparece em **Partner Solution Add-Ins** no diálogo SOLIDWORKS **Add-Ins**. Nenhuma outra funcionalidade do produto mudou nesta versão.

<a id="20260810"></a>
## 2026.08.10
*Aplica-se ao **SOLIDWORKS Add-in** *

- Compartilhamento de perfil adicionado por PIN de seis dígitos. Um usuário pode compartilhar as seções Opções, Anotações e Condições selecionadas, e o PIN permanece disponível por 30 dias.
- Adicionado **Load using PIN...** para baixar um perfil compartilhado, selecione quais seções incluídas para aplicar, salvar o resultado localmente, e torná-lo o perfil ativo. As configurações existentes nas seções não selecionadas permanecem inalteradas.
- Adicionado tratamento de conflito de nome de perfil para que um perfil baixado possa substituir o perfil local, ser salvo sob outro nome ou ser cancelado. Veja [Compartilhar perfis usando um PIN](/src/pdmpublishersolidworks_profile_sharing.html).

<a id="20260809"></a>
## 2026.08.09
* Aplica-se a **PDM Task** e **SOLIDWORKS Add-in***

**PDM Task**:
- Adicionado **Use drawing-derived BOM**. A tarefa pode usar o primeiro BOM salvo no desenho associado de um conjunto para determinar referências, configurações e quantidades. Se o desenho ou um BOM derivado utilizável não estiver disponível, o PDMPublisher retorna ao BOM calculado configurado. Ver [Utilizar BOM derivado do desenho](/src/pdmpublisher-options/use-drawing-derived-bom.html).

**PDM Task and SOLIDWORKS Add-in**:
- Folha de desenho alterada combinando de modo que um desenho de várias folhas sem folhas correspondentes ao padrão avaliado exporta todas as folhas em vez de produzir nenhuma saída de folha.
- Os desenhos de uma folha continuam a exportar sua única folha sem avaliar o padrão de nome da folha. Ver [Padrão do nome das folhas](/src/pdmpublisher-options/sheet-name-pattern.html).

<a id="20260808"></a>
## 2026.08.08
* Aplica-se a **PDM Task** e **SOLIDWORKS Add-in***

**SOLIDWORKS Add-in**:
- Adicionado perfis reutilizáveis com controles para criar, renomear, salvar, exportar, carregar e excluir configurações de publicação.
- Adicionado modelos de perfil inicial para DXF, PDF e STEP, e fluxos de trabalho STEP.
- Adicionado desmontável painel de tarefas navegação para fornecer mais espaço para configurações.
- Adicionado suporte opcional ao tema leve/escuro do Windows. As mudanças de tema se aplicam após o reinício do SOLIDWORKS.
- Adicionada seleção de folha de desenho com padrão de nome de folha e correspondência `(ConfigurationName)`.
- Atualizado o seletor multi-formato com nomes descritivos e ícones de tipo de arquivo.
- Atualizado as Opções, Anotações, Condições e Sobre interfaces. Ver [PDMPublisher para SOLIDWORKS](/src/pdmpublishersolidworks.html).

**PDM Task**:
- Adicionado **File Number** placeholders que retornam os primeiros 3, 4, 5, ou 6 dígitos da primeira sequência numérica em um nome de arquivo.
- Adicionado **File Number Range** placeholders que agrupam esses valores de 3, 4, 5 ou 6 dígitos em intervalos numéricos.
- Organizou os novos placeholders em **File Number** e **File Number Range** grupos no menu `>...` placeholder. Ver [Número de ficheiro Placeholders](/src/pdmpublisherspecialvariable.html#file-number-placeholders).

<a id="20260807"></a>
## 2026.08.07
*Aplica-se ao **PDM Task** *
- Adicionado opcional sincronização tema claro e escuro do Windows para PDMPublisher páginas de configuração de tarefa. Os administradores podem ligar ou desligar a sincronização do **Add-ins > PDMPublisher > Theme settings...**. Ver [Configurações do tema](/src/pdmpublisher-theme-settings.html).
- Adicionado o placeholder `(FileNameNumberRange)` para organizar nomes de arquivos numéricos em intervalos de 1.000. Ver [Range do número do nome do ficheiro](/src/pdmpublisherspecialvariable.html#file-name-number-range).
- Selecção de folha de desenho atualizada para um desenho com apenas uma folha exporta essa folha sem aplicar o padrão de correspondência do nome da folha. A correspondência de nome de folha continua a aplicar-se a desenhos com duas ou mais folhas.

<a id="20260806"></a>
## 2026.08.06
*Aplica-se ao **PDM Task** *
- Corrigido um problema de foco do teclado na página Condições para que os usuários possam digitar as colunas Valor e Configuração após adicionar uma condição.
- Tornou a janela de configuração SOLIDWORKS PDM redimensionável. As páginas de configuração PDMPublisher agora se expandem com o diálogo.

<a id="20260805"></a>
## 2026.08.05
* Aplica-se a **PDM Task** e **SOLIDWORKS Add-in***
- Adicionado ACIS, 3D XML, VRML, VDAFS, CATIA Graphics, HCG, HOOPS HSF, Microsoft XAML, JPEG, TIF, Adobe Illustrator e formatos de exportação Adobe Photoshop. Ver [Formatos de ficheiro](/src/pdmpublisher-options/file-formats.html).
- Adicionado nomes de formato descritivo e ícones do tipo de arquivo do Windows para o seletor Formatos de Arquivo e locais de exportação específicos da extensão.
- Adicionados ícones visuais ao modelo BOM e seletores de versão SOLIDWORKS.

<a id="20260804"></a>
## 2026.08.04
*Aplica-se ao **PDM Task** *
- Adicionado um seletor de modo folha de desenho para controlar quais folhas são exportadas.
- Adicionado um campo de padrão de nome de folha para modos de exportação que filtram folhas de desenho pelo nome.

<a id="20260803"></a>
## 2026.08.03
*Aplica-se ao **PDM Task** *
- Melhorar a normalização do caminho, limpar a pasta de temperatura.
- É melhor lidar com o caminho da UNC.
- Adicione lógica para excluir pasta temporária após execução de tarefa bem-sucedida, com manipulação de erros e mensagem de aviso na falha.


<a id="20260802"></a>
## 2026.08.02
<a id="20260801"></a>
## 2026.08.01
*Aplica-se ao **PDM Task** *
- Erro corrigido ao criar novas tarefas (diálogo de erro do framework .net vazio)

<a id="20260727"></a>
## 2026.07.27
*Aplica-se ao **PDM Task** *
- Adicionado (Nome do pasta) como condição.
<a id="20260718"></a>
## 2026.07.18
*Aplica-se ao **PDM Task** *
- Problema corrigido relacionado ao PDM não conseguir adicionar arquivos durante o check-in (E EDM FILE SHARE ERROR: HREresult 0x8004020B)
- Problema corrigido relacionado à criação de tabela TOC quando o caractere '#' é usado.

<a id="20260621"></a>
## 2026.06.21
*Aplica-se ao **PDM Task** *
- Adicionado um diálogo de seleção de arquivos interativo para tarefas que pedem aos usuários para especificar arquivos no lançamento.
- Adicionado a importação do CSV para a janela de lançamento da tarefa. PDMPublisher lê nomes de arquivos ou caminhos do CSV, pesquisa o cofre, e usa o primeiro resultado correspondente ao pular duplicatas.
- Adicionado cálculo de referência de montagem automática na janela de lançamento.
- Adicionadas linhas de desenho somente de visualização sob partes e conjuntos. Estas linhas são mostradas para revisão, mas não são passadas para a lista de entrada da tarefa.
- Adicionado seleção de formato de arquivo em tempo de lançamento, visibilidade de localização de exportação e um aviso de administração que explica configurações de exportação de tarefa são controlados a partir da ferramenta SOLIDWORKS PDM Administration. Ver [Página de tarefas dos itens programados](/src/scheduleditems.html).

<a id="20260620"></a>
## 2026.06.20
*Aplica-se ao **PDM Task** *
- Adicionado a página de configuração **Scheduled Items**. Esta página permite aos administradores escolher arquivos que PDMPublisher deve processar quando uma tarefa agendada é executada sem arquivos selecionados. Ver [aqui](/src/scheduleditems.html).
- Adicionado suporte para exportar arquivos binários Parasolid com a extensão `x_b`.
- Actualizado Agendado Tratamento de tarefas de itens e detalhes da tarefa log lookup behavior.

<a id="20260531"></a>
## 2026.05.31
* Aplica-se a **PDM Task** e **SOLIDWORKS Add-in***
- Correção quente: PDF não imprimir devido a corpos divididos.

<a id="20260530"></a>
## 2026.05.30
**PDM Task**:
- Adicionamos uma página de log na aba detalhes. Ver [aqui](/src/pdmpublisher_task_details.html).
- Adicionado suporte para dividir parte multi-corpo. Ver [aqui](/src/options.html).
- Limitada extensão `u3d` para a exportação de conjuntos apenas.
- Corrigido um erro ao clicar em Adicionar tarefa na ferramenta de administração na Lista de tarefas. A tarefa agora pede ao usuário para selecionar quais arquivos processar:
![Addtask](https://pdmpublisher.com/help/images/add_task.png)

**SOLIDWORKS Add-in**:
- Problema de transparência de ícones fixo na área de tarefas e na janela de gerenciadores adicionais no SOLIDWORKS
- Adicionado suporte para dividir parte multi-corpo. Ver [aqui](/src/pdmpublishersolidworks_options.html).
- Limitada extensão `u3d` para a exportação de conjuntos apenas.


<a id="20260501"></a>
## 2026.05.01
*Aplica-se ao **PDM Task** *
- Melhorou a contagem de repetição e o tempo de espera entre repetições durante o checkin de arquivos e adicionar arquivos.

<a id="20260421"></a>
## 2026.04.21
*Aplica-se ao **PDM Task** *
- Adicionado recurso para suprimir comandos de tarefa no menu de tarefas com o botão direito do mouse no File Explorer. A configuração está nas opções.

<a id="20260417"></a>
## 2026.04.17
*Aplica-se ao **PDM Task** *
- Emissão fixa relacionada com as exportações de chapas metálicas (vistas)

<a id="20260412"></a>
## 2026.04.12
*Aplica-se ao **PDM Task** *
- Correcções de erros pequenas

<a id="20260411"></a>
## 2026.04.11
*Aplica-se ao **PDM Task** *
- Corrigir erro quando o local de exportação começa com `//`

<a id="20260410"></a>
## 2026.04.10
*Aplica-se ao **PDM Task** *
- Adicionado repetir ao adicionar arquivos e verificar os arquivos de volta para o cofre.


<a id="20260401"></a>
## 2026.04.01
*Aplica-se ao **PDM Task** *
- Adicionado suporte para exportar visualizações de peças de chapa de metal
- Adicionado check-in retry
- Adicionado registro extra para encontrar quando os arquivos exportados são bloqueados por outras aplicações

<a id="20260327"></a>
## 2026.03.27
*Aplica-se ao **SOLIDWORKS add-in** *
- Falha fixa relacionada com o alcance do GDI +9999
- Pequenas alterações na janela de progresso

<a id="20260326"></a>
## 2026.03.26
*Aplica-se ao **PDM Task** *
- Adicionar multiplicador de quantidade personalizado quando o usuário é perguntado a configuração na inicialização.
- Adicionado Download Center item de menu na ferramenta Administração sob o suplemento para quando PDMDeploy é bloqueado. Isso vai levá-lo para o centro de download PDMPublisher.

<a id="20260322"></a>
## 2026.03.22
* Aplica-se a **PDM Task** e **SOLIDWORKS Add-in***
- Mesclar e corrigir erros TOC.
- Adicionado suporte para exportação para `bmp`

<a id="20260316"></a>
## 2026.03.16
*Aplica-se ao **PDM Task** *
- Adicionado suporte para o processamento de excel e arquivos de palavras para pdf
- Adicionado suporte para mapeamento de variáveis entre o arquivo de destino e o arquivo fonte
- Adicionado suporte para criar uma referência personalizada entre o arquivo de destino e o arquivo fonte
- Adicionado suporte para excluir duplicatas fora do destino alvo
- Adicionado suporte para as seguintes extensões: `ifc`,`3mf`, `3dpdf` (pdf mas para as peças e conjuntos)
- Correcções de erros menores


<a id="20260223"></a>
## 2026.02.23
* Aplica-se tanto à **PDM Task** como à **SOLIDWORKS Add-in***
- Erro fixo ao exportar o padrão plano quando o `Convert Multiple Configurations` estiver habilitado
- Adicionada nova opção em configurações de padrão plano para remover ou adicionar `-FlatPattern` ao dxf padrão plano nome do arquivo.

<a id="20260222"></a>
## 2026.02.22
* Aplica-se tanto à **PDM Task** como à **SOLIDWORKS Add-in***
- Adicionado suporte para filtragem de configurações à tarefa habilitada através do `Convert Multiple Configurations`
- Adicionado suporte para a extensão `3mf` para peças

<a id="20260221"></a>
## 2026.02.21
*Aplica-se ao **SOLIDWORKS Add-in** *
- Corrigir bug relacionado a desenhos não fechando ao imprimir para PDF.

<a id="20260220"></a>
## 2026.02.20
*Aplica-se ao **SOLIDWORKS Add-in** *
- Adicionada capacidade de escolher quais configurações (incluir e excluir padrões) processar sob a opção `Convert Multiple Configurations`

<a id="20260219"></a>
## 2026.02.19
<a id="20260218"></a>
## 2026.02.18
*Aplica-se ao **SOLIDWORKS Add-in** *
- Reconstruir fantasmas


<a id="20260217"></a>
## 2026.02.17
*Aplica-se ao **SOLIDWORKS Add-in** *
- Corrigir a questão do cálculo BOM
<a id="20260216"></a>
## 2026.02.16
<a id="20260215"></a>
## 2026.02.15
<a id="20260214"></a>
## 2026.02.14
<a id="20260213"></a>
## 2026.02.13
*Aplica-se ao **SOLIDWORKS Add-in** *
- Reconstruir fantasmas

<a id="20260213"></a>
## 2026.02.13
*Aplica-se ao **SOLIDWORKS Add-in** *
- Corrigir: Se a taskpane falhar, o suplemento tentará se auto-registrar. Você deve estar executando SW como administrador para este trabalho.


<a id="2026-02-12"></a>
## 2026-02-12
*Aplica-se ao **SOLIDWORKS Add-in** *
- Velocidade de carga das referências melhorada

<a id="2026-02-11"></a>
## 2026-02-11
*Aplica-se ao **SOLIDWORKS Add-in** *
- Erro corrigido: Dados incompletos da janela de referências quando a montagem de nível superior é aberta em leve.
- Diminuição do tempo necessário para compilar a árvore de referência na janela de progresso
- Alterações menores da interface de usuário na página (títulos de botões renomeados e endereço de e-mail de suporte adicionado)

<a id="2026-02-10"></a>
## 2026-02-10
- Compilação de fantasmas

<a id="2026-02-09"></a>
## 2026-02-09
* Aplica-se tanto à **PDM Task** como à **SOLIDWORKS Add-in***
- Iniciado separador usado | em vez de # (Questões Causadas com nomes de arquivos contendo #)
- Perguntas frequentes atualizadas sobre o erro do PDFs.
- Adicionado `ConfigurationName` alias às condições.

<a id="2026-01-17"></a>
## 2026-01-17
* Aplica-se tanto à **PDM Task** como à **SOLIDWORKS Add-in***
- Corrigido **outside diameter of countersink holes** ao exportar o bug **DXF flat patterns**.

<a id="2026-01-16"></a>
## 2026-01-16
*Aplica-se ao **SOLIDWORKS Add-in** *
- Erro de conflito de montagem fixo

<a id="2026-01-15"></a>
## 2026-01-15
* Aplica-se tanto à **PDM Task** como à **SOLIDWORKS Add-in***

- Adicionado um novo **Flat Pattern export setting** que remove o **outside diameter of countersink holes** ao exportar **DXF flat patterns**: Isso ajuda a produzir DXFs mais limpos para a fabricação a jusante, excluindo a geometria externa do contador ao preservar perfis de corte necessários.
