---
title: "Import and Export Conditions | PDMPublisher for SOLIDWORKS"
description: "Exportar uma árvore de condições de um PDMPublisher para o perfil SOLIDWORKS ou importar condições compatíveis."
ms.date: 09/16/2026
ms.topic: how-to
---

# Condições de importação e exportação

Use **Export...** e **Import...** na janela **PDMPublisher > Conditions** para mover regras de condição separadamente do perfil completo de publicação.

O formato `.edmtdf` é mantido para compatibilidade com as exportações existentes. Trate a importação de uma definição de tarefa PDM como um caminho de migração; troque novas configurações adicionais do SOLIDWORKS como perfis de publicação ou pacotes de configurações completos.

![Conditions editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/conditions-editor-controls-20260908.png)

<a id="export-conditions"></a>
## Condições de exportação

1. Selecione **Export...**.
2. Escolha um local e nome de arquivo.
3. Salve a configuração da condição como um arquivo `.edmtdf`.

O arquivo exportado preserva os grupos de condição, comportamento AND/OR, campos, tipos de comparação, valores, configurações e estados habilitados.

<a id="import-conditions"></a>
## Condições de importação

O item selecionado nos controles de árvore de condição onde as regras importadas são colocadas:

| Selecção antes da importação | Resultado |
| --- | --- |
| Nenhum grupo selecionado | A árvore de condição raiz importada substitui a árvore raiz atual. |
| Um grupo de condições seleccionado | Os itens de raiz importados são adicionados como filhos do grupo selecionado. |
| Uma linha de condições seleccionada | A importação foi interrompida. Selecione um grupo ou limpe a seleção primeiro. |

Após a importação, reveja as relações de grupo e teste as regras antes da publicação.

> [!IMPORTANT]
> Exportar as condições atuais ou o perfil completo antes de substituir a árvore de raiz quando as regras existentes podem ser necessárias mais tarde.

Para um backup que também inclui Opções e Anotações, use [Mover perfis entre computadores](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
