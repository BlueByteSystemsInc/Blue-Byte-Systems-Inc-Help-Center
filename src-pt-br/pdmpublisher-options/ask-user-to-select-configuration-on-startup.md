---
title: "Ask User to Select Configuration on Task Launch | PDMPublisher Options"
description: "Peça aos usuários para escolher uma configuração antes de publicar."
ms.date: 08/09/2026
ms.topic: reference
---

# Pedir ao usuário para selecionar a configuração no lançamento da tarefa

![Pergunte ao usuário para selecionar a configuração](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-006-property-ask-user-to-select-configuration-on-startup.png)
Pede ao usuário para escolher uma configuração no lançamento da tarefa.

![Ask user to select configuration dialog](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/ask-user-specify-configuration-dialog.png)

Use isso para casos simples em que o usuário só precisa escolher uma configuração e multiplicador de quantidade na máquina que lançou a tarefa.

- **Configuration** seleciona qual configuração do modelo exportar.
- A configuração selecionada é usada para exportação, valores variáveis e nomeação de arquivos.
- **Custom Quantity Multiplier** multiplica o substituto `(BOMQuantity)`.
- Exemplo: se `(BOMQuantity)` é `2` e o multiplicador é `3`, a tarefa usa `6`.
- Quando o rastreamento de atividade é ativado, o registro observa que um multiplicador de quantidade personalizado foi usado.
- Selecione `OK` para continuar ou `Cancel` para parar antes de publicar.

> [!NOTE]
> [Pergunte ao usuário para especificar arquivos no lançamento da tarefa](ask-user-to-specify-files-on-task-launch.md) substitui esta opção porque ele controla arquivos, configurações, formatos e localização da exportação.
