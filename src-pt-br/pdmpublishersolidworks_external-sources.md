---
title: "Fontes externas: PDMPublisher para SOLIDWORKS"
description: "Crie e valide fontes de dados SQL Server reutilizáveis para campos PDMPublisher suportados."
ms.date: 09/16/2026
ms.topic: how-to
---

# Fontes Externas

Abra o **PDMPublisher > Settings > External Sources** para manter definições de fonte reutilizáveis do SQL Server.

![External SQL Server sources](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Sources_Default_Light_100.png)

Selecione **Add** ou **Edit / Test** para abrir o editor de código fonte.

![External SQL Server source editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/ExternalSources/ExternalSources_Source_editor_Default_Light_100.png)

| Comando | Comportamento |
| --- | --- |
| **Add** | Cria uma definição de fonte e consulta nomeada. |
| **Edit / Test** | Atualiza a definição selecionada e a testa com um nome de configuração, nome de arquivo ou valor de propriedade. |
| **Delete** | Remove a definição selecionada após a confirmação. |

Use um nome descritivo que explique o valor retornado. Teste a fonte com dados representativos antes de inseri-la em uma propriedade, fórmula, nome do arquivo ou fluxo de trabalho de anotações. Uma conexão bem sucedida não garante que cada documento retorne uma linha, então defina o comportamento esperado de resultado vazio no fluxo de trabalho consumidor.

Os padrões, fontes externas e fórmulas são salvos separadamente das outras configurações de utilitário.

> [!IMPORTANT]
> As credenciais do banco de dados permanecem locais e não estão incluídas nas configurações exportadas ou nas ações do PIN. Reentrar credenciais no computador de destino após importar uma configuração.

Use uma conta de banco de dados com apenas as permissões necessárias para executar a consulta. Não coloque senhas em texto de consulta, nomes de perfil, fórmulas ou anotações.
