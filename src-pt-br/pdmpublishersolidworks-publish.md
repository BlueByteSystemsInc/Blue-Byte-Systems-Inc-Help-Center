---
title: "Execute um trabalho de publicação PDMPublisher para SOLIDWORKS"
description: "Publique o documento SOLIDWORKS ativo com o perfil PDMPublisher selecionado e reveja o registro de trabalho resultante."
ms.date: 09/16/2026
ms.topic: how-to
---

# Executar uma tarefa de publicação

O comando **Publish** processa o documento atualmente aberto no SOLIDWORKS usando o perfil de publicação selecionado.

<a id="before-publishing"></a>
## Antes de publicar

1. Abra a peça, montagem ou desenho para processar.
2. Selecione o perfil correto (pdmpublishersolidworks_profiles.md).
3. Reveja o local de saída, o nome do arquivo e os formatos de arquivo.
4. Para uma montagem, confirme se arquivos, condições, múltiplas configurações ou PDFs devem ser processados.

> [!IMPORTANT]
> Salve o documento SOLIDWORKS ativo e resolva suas referências antes de publicar. Referências em falta ou não resolvidas não podem ser processadas de forma confiável.

<a id="start-the-job"></a>
## Iniciar a tarefa

Selecione **PDMPublisher > Publish** no CommandManager. Use a seta de comando para publicar imediatamente com um perfil nomeado, ou abra o comando para revisar as configurações primeiro.

![Publish profile selection menu](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)

A seta ao lado do **Publish** seleciona o perfil Publicar usado para o trabalho. Ele não seleciona ou associa um cofre PDM. Quando um fluxo de trabalho usa valores PDM, números de série, check-in automático ou placeholders de pasta raiz Vault, configure o cofre compartilhado sob **PDMPublisher > Settings > PDM**. Ver [Configurações do PDM](pdmpublishersolidworks_pdm-settings.md).

Quando o [Mostrar a janela de saída das condições](pdmpublishersolidworks-condition-output.md) estiver habilitado para um conjunto, o PDMPublisher exibe as referências que passaram antes do início da exportação. Confirme os arquivos para continuar ou cancelar o trabalho.

<a id="review-the-result"></a>
## Reveja o resultado

Selecione **PDMPublisher > Logs** para rever o processamento steps, arquivos exportados, avisos e falhas. Use [Save and Clear Logs](pdmpublishersolidworks-log-files.md) para anexar o registro completo de trabalho a uma solicitação de suporte.

Veja [Publicar fluxo de trabalho e resultados](pdmpublishersolidworks_workflow.md) para a sequência completa, incluindo revisão, arquivos ignorados, cancelamento e resultados de solução de problemas.
