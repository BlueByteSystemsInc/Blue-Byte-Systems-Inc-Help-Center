---
title: "Evaluation Rules | PDMPublisher Conditions"
description: "Como PDMPublisher avalia grupos de condição e configurações."
ms.date: 08/09/2026
ms.topic: reference
---

# Regras de avaliação

PDMPublisher verifica as condições antes de exportar um arquivo.

O suplemento SOLIDWORKS avalia propriedades a partir do documento ativo e referências resolvidas.

![Condition group in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Default_Light_100.png)

Regras gerais:

- Grupos de condição habilitados são avaliados por sua configuração AND ou OR.
- Condições desactivadas e grupos deficientes são ignorados.
- Um arquivo é processado somente quando a configuração da condição o permite.
- Se uma condição usa uma configuração específica, PDMPublisher lê o valor dessa configuração.

Para publicação de montagem, as condições são avaliadas contra os arquivos que estão sendo considerados para exportação.
