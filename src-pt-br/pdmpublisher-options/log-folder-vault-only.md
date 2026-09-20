---
title: "Log Folder (Vault Only) | PDMPublisher Options"
description: "Armazene registros PDMPublisher em uma pasta de cofre PDM."
ms.date: 08/09/2026
ms.topic: reference
---

# Pasta de Registos (Somente por Valor)

! [Configuração da pasta de registo](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-020-property-log-folder-(vault-only). png)

Define a pasta de cofre PDM onde os arquivos de log são depositados.

Esta configuração está relacionada com [Registros de Atividade de Vault](turn-on-activity-tracking.md). Ele controla onde os arquivos de registro de atividade são armazenados no cofre.

Localização recomendada:

```text
(VaultRootFolder)\Logs\PDMPublisher
```

Crie esta pasta manualmente antes de usar a tarefa.

> [!IMPORTANT]
> A pasta deve estar dentro do cofre e não deve terminar com um retrocesso.
>
> O usuário executando a tarefa, ou a conta host da tarefa usada para executar a tarefa, deve ter permissão para adicionar arquivos de log a esta pasta.
