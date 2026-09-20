---
title: "Fórmulas Avançadas PDMPublisher para SOLIDWORKS"
description: "Crie expressões renomeadas reutilizáveis para nomes de arquivos, pastas e propriedades PDMPublisher."
ms.date: 09/16/2026
ms.topic: how-to
---

# Fórmulas Avançadas

Abra o **PDMPublisher > Settings > Advanced Formulas** para manter expressões nomeadas compartilhadas pelos menus de nomes de arquivos, pastas e propriedades suportados.

![Advanced Formulas settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)

Selecione **Add** ou **Edit** para abrir o editor de fórmulas e construir a expressão nomeada.

![Advanced Formula editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Formulas/Formulas_Formula_editor_Default_Light_100.png)

| Comando | Comportamento |
| --- | --- |
| **Add** | Cria uma fórmula nomeada. |
| **Edit** | Abre a fórmula seleccionada para as alterações. |
| **Delete** | Remove a fórmula selecionada após a confirmação. Perfis existentes que se referem a ele devem ser revistos. |

Dê a cada fórmula um nome que descreve seu resultado, como `Released filename` ou `Customer output folder`. Compilar e testar fórmulas com documentos que contenham valores, valores em falta, valores específicos de configuração e caracteres inválidos nos nomes de arquivos do Windows.

Fórmulas são definições, não resultados copiados. PDMPublisher avalia uma fórmula no contexto do documento e configuração sendo processado. Se a fórmula usar uma propriedade ou fonte externa, confirme que o recurso está disponível em cada computador que importa as configurações.

Os padrões, fontes externas e fórmulas são salvos separadamente das outras configurações de utilitário.

> [!TIP]
> Exportar todas as configurações antes de fazer uma mudança de fórmula ampla. Uma fórmula compartilhada pode afetar vários perfis e fluxos de trabalho de utilitário.
