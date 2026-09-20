---
title: "Roteiro do produto PDMPublisher □ Próximos recursos e melhorias planejadas"
description: "Veja o roteiro do produto PDMPublisher com recursos planejados, melhorias futuras e futuras prioridades de desenvolvimento por trimestre."
ms.date: 08/23/2026
ms.topic: conceptual
---

# Roteiro do produto PDMPublisher

Esta página descreve as características e melhorias planejadas para PDMPublisher, o SOLIDWORKS PDM Professional tarefa suplemento, e PDMPublisher para SOLIDWORKS, o SOLIDWORKS suplemento.

O roteiro é organizado por trimestre e dá visibilidade aos recursos atualmente planejados para lançamentos futuros. As linhas de tempo são estimativas e podem mudar com base em prioridades de desenvolvimento, feedback do cliente, resultados de testes e requisitos de compatibilidade SOLIDWORKS ou SOLIDWORKS PDM.

> [!NOTE]
> Este roteiro destina-se a comunicar a direcção do produto. As características listadas aqui são planejadas, mas não são garantidas até que sejam oficialmente lançadas e incluídas no PDMPublisher Changes Log.

> [!TIP]
> Para ver a lista de alterações implementadas, clique em [aqui](/src/changeslog.html).

<a id="2026"></a>
## 2026
---
<a id="2026-q2"></a>
### 2026 Q2
<a id="task-launch-file-selection-dialog"></a>
#### Janela de Seleção de Arquivos de Lançamento de Tarefas
□ Aplicado

**Applies to: PDM Task**

- Adicionado uma janela de lançamento interativa para tarefas que pedem aos usuários para especificar arquivos em tempo de execução.
- Adicionado importação CSV, cálculo automático de referência, linhas de desenho somente de visualização, seleção de formato de arquivo específico de lançamento e visibilidade de localização de exportação.

<a id="scheduled-items-task-page"></a>
#### Página de Tarefa de Itens Agendados
□ Aplicado

**Applies to: PDM Task**

- Adicionado uma página de configuração de Itens Agendados para tarefas agendadas que precisam processar arquivos configurados quando nenhum arquivo é passado pelo gatilho de tarefa PDM. Ver detalhes [aqui](/src/scheduleditems.html).

<a id="parasolid-binary-export"></a>
#### Exportação binária Parasolid
□ Aplicado

**Applies to: SOLIDWORKS add-in / PDM Task**

- Adicionado suporte para exportar arquivos binários Parasolid com a extensão `x_b`.

<a id="details-page"></a>
#### Página de Detalhes
□ Aplicado

**Applies to: PDM Task**

- Adicionamos uma aba à página de detalhes da tarefa que delineia arquivos bem sucedidos. Ver detalhes [aqui](/src/pdmpublisher_task_details.html).

<a id="multi-body-support"></a>
#### Suporte a Multicorpos
□ Aplicado

**Applies to: SOLIDWORKS add-in / PDM Task**

- Suporte planejado para exportação e processamento de peças multicorpos, excluindo padrões planos de chapa de metal.

Alvo: Fim do Q2 2026
---
<a id="2026-q3"></a>
### 2026 Q3
---
<a id="presets-profiles"></a>
#### Predefinições / Perfis
Em 2026.08.08

**Applies to: SOLIDWORKS add-in**

Adicionado perfis reutilizáveis e predefinições de arranque incorporadas para PDMPublisher para SOLIDWORKS.

Os perfis salvam as Opções, Anotações e Condições para um fluxo de trabalho de publicação. Os usuários podem criar, renomear, salvar, exportar, carregar e excluir perfis ou criar um perfil a partir de uma predefinição incorporada.

O recurso lançado inclui:

- Salvando configurações de exportação como perfis reutilizáveis
- Exportar e carregar perfis para fluxos de trabalho de exportação comuns
- Criação de perfis para diferentes departamentos, clientes, projetos ou pacotes de saída
- Criação de perfis a partir das predefinições `DXF`, `PDF And Step` e `STEP` integradas
- Reutilizando configurações de publicação consistentes entre usuários e estações de trabalho

Ver [Perfils](/src/pdmpublishersolidworks_profiles.html) e [Predefinições](/src/pdmpublishersolidworks_presets.html) para instruções de configuração.
---
<a id="profile-sharing-by-pin-code"></a>
#### Partilha de Perfis pelo Código PIN
Implementação em 2026.08.10

**Applies to: SOLIDWORKS add-in**

Adicionado compartilhamento de perfil de curta duração por seis dígitos PIN.

O recurso lançado inclui:

- Compartilhando as seções Opções, Anotações e Condições selecionadas
- Gerando um PIN de seis dígitos que permanece disponível por 30 dias
- Carregando um perfil compartilhado pelo PIN e selecionando quais seções incluídas para aplicar
- Salvando o perfil baixado localmente e manipulando nomes de perfis duplicados

Veja [Share Profiles Using a PIN](/src/pdmpublishersolidworks_profile_sharing.html) para instruções e orientação de segurança.
---
<a id="2026-q4"></a>
### 2026 Q4
**Applies to: PDM Task**
- Adicionar suporte para agendar para processar:
  - Directório seleccionado
  - Pesquisa Favorita
---
<a id="2027"></a>
## 2027
---
<a id="2027-q1"></a>
### 2027 Q1
---
<a id="drawing-creator"></a>
#### Criador de Desenho
**Applies to: SOLIDWORKS Add-in**

O apoio planejado para uma característica do Criador de Desenho.

Este recurso destina-se a ajudar a automatizar os fluxos de trabalho de criação de desenho dos modelos SOLIDWORKS, reduzindo o trabalho manual repetitivo ao gerar desenhos para peças ou conjuntos.

As áreas de foco planejadas incluem:

- Criando desenhos de modelos selecionados
- Aplicando modelos de desenho predefinidos
- Inserindo visões de modelo padrão
- Configuração da escala da folha de desenho
- Definição das margens das folhas de desenho
- Adicionando notas à tabela de anotações
- Atualizando as notas da tabela de anotações existentes
- Aplicando regras padrão de formatação e colocação de notas
- Suportando regras de configuração de desenho reutilizáveis
- Preparação de desenhos para exportação a jusante através do PDMPublisher

Alvo: Fim do Q1 2027
