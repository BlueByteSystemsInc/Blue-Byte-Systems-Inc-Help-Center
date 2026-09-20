---
title: "Anotações de importação e exportação de PDMPublisher para SOLIDWORKS"
description: "Exportar anotações de um PDMPublisher para o perfil SOLIDWORKS ou importar configurações de anotações compatíveis."
ms.date: 09/16/2026
ms.topic: how-to
---

# Importar e exportar anotações

A janela Anotações pode salvar sua coleção de anotações separadamente do perfil completo Publicar. Isso é útil quando o mesmo layout de anotação deve ser reutilizado em outro perfil.

O formato `.edmtdf` é mantido para compatibilidade com as exportações existentes. Trate a importação de uma definição de tarefa PDM como um caminho de migração; troque novas configurações adicionais do SOLIDWORKS como perfis de publicação ou pacotes de configurações completos.

![Annotations editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/annotations-editor-controls-20260908.png)

<a id="export-annotations"></a>
## Exportar anotações

1. Abra **PDMPublisher > Annotations** e selecione **Export...**.
2. Escolha um local e nome de arquivo.
3. Salve as configurações como um arquivo `.edmtdf`.

O arquivo contém a coleção de anotações atual, incluindo texto de anotação, formatação, colocação, seleção de folhas e estado ativo.

<a id="import-annotations"></a>
## Importar anotações

1. Selecione o perfil que deve receber as anotações.
2. Selecione **Import...** na janela Anotações.
3. Escolha o arquivo `.edmtdf`.
4. Reveja as anotações importadas antes de publicar.

> [!WARNING]
> A importação de anotações substitui a coleção de anotações atualmente mostrada para o perfil selecionado. Exportar as anotações atuais ou o perfil completo primeiro quando elas podem ser necessárias mais tarde.

Para um backup que inclui Opções e Condições também, use [Mover perfis entre computadores](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
