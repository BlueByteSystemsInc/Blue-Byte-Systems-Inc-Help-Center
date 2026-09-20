---
title: "BOM Manager | PDMPublisher for SOLIDWORKS"
description: "Configurar colunas BOM, tipo de exibição, agrupamento e condições de exclusão de componentes em PDMPublisher para SOLIDWORKS."
ms.date: 09/19/2026
ms.topic: how-to
---

# BOM Manager

Abra a **PDMPublisher > BOM Manager** para revisar e trabalhar com a conta de materiais para a montagem ativa.

![BOM Manager main window showing an indented assembly BOM](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Main_window_Default_Light_100.png)

A janela principal fornece os seletores tipo BOM e coluna-template, colunas de propriedade, controles de busca e filtragem, agrupamento, exclusões de componentes, importação e exportação do Excel e **Apply**. Selecione o botão de engrenagem para abrir as configurações BOM Manager persistentes descritas abaixo.

Abra **PDMPublisher > Settings > BOM Manager** sob **Bill Of Materials**.

![BOM Manager settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_BOM_Manager_Default_Light_100.png)

BOM Manager define a estrutura padrão usada quando o PDMPublisher produz ou exibe informações de conta do material.

| Configuração | O que controla |
| --- | --- |
| **Default column template** | Selecciona o conjunto e a ordem salvos das colunas BOM. |
| **Default BOM display type** | Seleciona a estrutura SOLIDWORKS BOM, como uma hierarquia indentada. |
| **Group by** | Grupos linhas por texto, propriedades ou espaços. Deixe- o vazio para um resultado plano não agrupado. |
| **Ignore Components** | Abre o editor de condições usado para omitir componentes correspondentes do BOM. |

<a id="configure-the-defaults"></a>
## Configurar os padrões

1. Selecione um **Default column template**.
2. Selecione o **Default BOM display type** apropriado para a estrutura de montagem.
3. Se as linhas devem ser agrupadas, digite uma expressão **Group by** e use seu menu de placeholder para inserir valores de documento.
4. Selecione **Ignore Components** para definir exclusões. Escolha se qualquer condição ou todas as condições devem corresponder e, em seguida, adicione as regras de propriedade necessárias.
5. Selecione **OK** para salvar as configurações.

![Ignore Components condition editor for BOM Manager](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Ignore_components_Default_Light_100.png)

As condições de exclusão afetam a adesão à BOM; elas não suprimem ou deletam componentes na montagem SOLIDWORKS.
