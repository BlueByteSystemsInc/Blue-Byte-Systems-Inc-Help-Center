---
title: Roteiro do produto PDMPublisher | Direção atual e recursos planejados
description: Consulte o estado atual do PDMPublisher, os marcos já lançados e o trabalho planejado para a tarefa PDM e o suplemento do SOLIDWORKS.
ms.date: 09/19/2026
ms.topic: conceptual
---

# Roteiro do produto PDMPublisher

O PDMPublisher é fornecido como dois produtos com versões independentes: **PDMPublisher for SOLIDWORKS**, o suplemento interativo do SOLIDWORKS, e **PDMPublisher PDM Task**, a tarefa de automação configurada no SOLIDWORKS PDM Professional.

Esta página separa os recursos disponíveis atualmente do trabalho que ainda está planejado. Datas e prioridades podem mudar de acordo com o desenvolvimento, os testes, o feedback dos clientes e os requisitos de compatibilidade do SOLIDWORKS.

> [!NOTE]
> Um recurso planejado não é garantido até ser lançado. O [Registro de alterações do PDMPublisher](changeslog.md) é a referência oficial para versões e alterações publicadas.

## Estado atual do produto

### PDMPublisher for SOLIDWORKS

O suplemento atual usa a guia **PDMPublisher** do CommandManager e o menu **Tools > PDMPublisher**. O painel de tarefas do SOLIDWORKS agora exibe a documentação e não contém mais os controles de publicação.

Os fluxos de trabalho disponíveis incluem:

- [Save As New](pdmpublishersolidworks_save-as-new.md), [Property Doctor](pdmpublishersolidworks_property-doctor.md) e [Clone Tree](pdmpublishersolidworks_smart-pack.md).
- [BOM Manager](pdmpublishersolidworks_bom-manager.md) para colunas, estrutura, agrupamento e exclusões de componentes da lista de materiais.
- [Publish](pdmpublishersolidworks-publish.md) com anotações, condições, controle de folhas de desenho, processamento de configurações e registros.
- Perfis específicos de cada comando e transferência completa das configurações por arquivo ou PIN de seis dígitos.
- Configurações compartilhadas de PDM, idiomas, locais de pesquisa de desenhos, fontes SQL externas e fórmulas avançadas.
- Uma janela unificada e pesquisável de [Configurações](pdmpublishersolidworks_settings.md) e um [painel de Ajuda](pdmpublishersolidworks_help-pane.md) integrado.

Consulte [PDMPublisher for SOLIDWORKS](pdmpublishersolidworks.md) para ver o conjunto completo de recursos atuais.

### PDMPublisher PDM Task

A tarefa PDM atual oferece:

- Publicação automatizada por ações de tarefa do SOLIDWORKS PDM Professional e execuções agendadas.
- Seleção interativa de arquivos na inicialização e [Itens agendados](scheduleditems.md) configurados.
- Saída em vários formatos, anotações, condições, filtragem de configurações, seleção de folhas, mesclagem de PDF e saídas de fabricação.
- Processamento da lista de materiais derivada do desenho, com retorno à lista de materiais calculada configurada.
- Publicação da revisão PDM registrada mais recente e de suas referências salvas.
- Configurações explícitas de exportação do eDrawings para medição e propriedades de documentos ou componentes.
- Registros de atividade, detalhes da tarefa, mapeamento de variáveis PDM, referências de saída e tratamento de duplicatas.

Consulte [PDMPublisher para PDM Professional](pdmpublisher.md) para ver o conjunto completo de recursos atuais.

## Marcos do roteiro já lançados

Os itens a seguir eram apresentados anteriormente como planejados e agora estão disponíveis. Eles permanecem aqui como histórico do roteiro, não como compromissos futuros.

### 2026 T2

- `2026.06.21` - [Seleção de arquivos ao iniciar a tarefa](scheduleditems.md) para a tarefa PDM.
- `2026.06.20` - [Página Itens agendados](scheduleditems.md) para a tarefa PDM.
- `2026.06.20` - Exportação binária Parasolid (`x_b`) para a tarefa PDM e o suplemento do SOLIDWORKS.
- `2026.05.30` - [Detalhes da tarefa e registro de saída](pdmpublisher_task_details.md) para a tarefa PDM.
- `2026.05.30` - Processamento de peças multicorpos para a tarefa PDM e o suplemento do SOLIDWORKS.

### 2026 T3

- `2026.09.08` - [Obter somente a revisão mais recente](pdmpublisher-options/get-latest-revision-only.md) para a tarefa PDM.
- `2026.08.10` - [Compartilhamento de perfis por PIN](pdmpublishersolidworks_profile_sharing.md) para o suplemento do SOLIDWORKS.
- `2026.08.09` - [Lista de materiais derivada do desenho](pdmpublisher-options/use-drawing-derived-bom.md) para a tarefa PDM.
- `2026.08.08` - [Perfis Publish reutilizáveis](pdmpublishersolidworks_profiles.md) e [predefinições](pdmpublishersolidworks_presets.md) para o suplemento do SOLIDWORKS.

## Trabalho planejado

### 2026 T4: novas fontes para tarefas agendadas

**Aplica-se a: Tarefa PDM**

Fontes planejadas:

- Um diretório selecionado.
- Uma Pesquisa Favorita salva.

### 2027 T1: Drawing Creator

**Aplica-se a: Suplemento do SOLIDWORKS**

O Drawing Creator pretende automatizar a criação repetitiva de desenhos a partir de peças e montagens do SOLIDWORKS. A meta atual é o final do primeiro trimestre de 2027.

Áreas de foco planejadas:

- Criar desenhos a partir dos modelos selecionados.
- Aplicar modelos de desenho predefinidos.
- Inserir vistas padrão do modelo.
- Definir a escala e as margens da folha de desenho.
- Adicionar ou atualizar notas da tabela de anotações.
- Aplicar regras reutilizáveis de formatação e posicionamento de notas.
- Preparar os desenhos gerados para os fluxos de trabalho posteriores do PDMPublisher.

## Áreas planejadas sem cronograma confirmado

O suplemento atual do SOLIDWORKS reserva locais da interface para os recursos a seguir. Seus comandos ou páginas de configurações são apenas espaços reservados e não estão disponíveis para fluxos de trabalho de produção.

- [Translate](pdmpublishersolidworks_translate.md) pretende traduzir propriedades, nomes de recursos e outros textos dos documentos do SOLIDWORKS.
- [ERP Sync](pdmpublishersolidworks_erp-sync.md) agora está disponível no suplemento SOLIDWORKS para sincronização de itens, propriedades, números de peça e listas de materiais por meio de conectores.
- [Publisher Macros](pdmpublishersolidworks_publisher-macros.md) pretende agendar tarefas de publicação do PDMPublisher. Este recurso é diferente da execução de macro disponível no Save As New.
