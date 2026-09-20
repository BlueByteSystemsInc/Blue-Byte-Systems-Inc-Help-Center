---
title: "Export References to File Formats Individually | PDMPublisher Options"
description: "Exportar documentos referenciados como arquivos de saída autônomos."
ms.date: 08/09/2026
ms.topic: reference
---

# Exportar Referências para Formatos de Arquivo Individualmente

![As referências à exportação são definidas individualmente em PDMPublisher para SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox3_Export_references_to_file_formats_individually_Light_100.png)
Exporta componentes referenciados como seus próprios arquivos nos formatos selecionados.

> [!NOTE]
> Esta configuração é compartilhada pelo **PDM task** e **SOLIDWORKS add-in**, mas os dois produtos obtêm suas referências de montagem de forma diferente.

Na prática, isto é usado quando uma publicação de montagem deve também criar saída para os componentes dessa montagem. É mais útil para conjuntos com componentes repetidos, múltiplas configurações ou referências aninhadas.

<a id="requirements-by-product"></a>
## Requisitos por produto

| Produto | Requisitos |
| --- | --- |
| **PDM task** | Execute a tarefa em uma montagem e selecione uma coluna BOM [Template](template.md) com o nome, configuração e quantidade necessários. |
| **SOLIDWORKS add-in** | Abra o conjunto em SOLIDWORKS. O suplemento lê as referências de montagem resolvidas diretamente e não requer a configuração do Modelo BOM tarefa PDM. |

Em ambos os produtos, os componentes suprimidos, não resolvidos, excluídos ou filtrados por condições podem alterar o conjunto de referências processadas.

<a id="bom-template"></a>
## Modelo BOM

> [!IMPORTANT]
> Para o **PDM task**, é fundamental configurar a opção PDMPublisher [Template](template.md) antes de habilitar esta configuração. Se o modelo não estiver selecionado, ou se não incluir o nome, configuração e colunas de quantidade requeridas, o PDMPublisher pode exportar arquivos de referência ausentes ou incorretos. Este requisito não se aplica ao suplemento SOLIDWORKS.

A tarefa PDM pode opcionalmente usar o primeiro BOM salvo no desenho de montagem associado. Ver [Utilizar BOM derivado do desenho](use-drawing-derived-bom.md). O Modelo configurado continua a ser necessário como um recurso.

Para os requisitos de configuração do modelo, ver [Template](template.md).

> [!NOTE]
> Esta configuração é independente da fusão PDF e do arquivamento ZIP.
