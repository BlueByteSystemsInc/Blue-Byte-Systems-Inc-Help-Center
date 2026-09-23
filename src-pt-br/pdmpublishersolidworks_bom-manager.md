---
title: "BOM Manager | PDMPublisher for SOLIDWORKS"
description: "Configure colunas BOM, tipo de exibição, agrupamento, exclusões de componentes e exportação do Excel no PDMPublisher para SOLIDWORKS."
ms.date: 10/04/2026
ms.topic: how-to
---

# BOM Manager

Abra a **PDMPublisher > BOM Manager** para revisar e trabalhar com a conta de materiais para a montagem ativa.

![BOM Manager main window showing an indented assembly BOM](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Main_window_Default_Light_100.png)

A janela principal fornece os seletores tipo BOM e coluna-template, colunas de propriedade, controles de busca e filtragem, agrupamento, exclusões de componentes, importação e exportação do Excel e **Apply**. Selecione o botão de engrenagem para abrir as configurações BOM Manager persistentes descritas abaixo.

Abra **PDMPublisher > Settings > BOM Manager** sob **Bill Of Materials**.

![Configurações do BOM Manager com modelo de pasta de trabalho do Excel e opção de miniatura](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/bom-manager-settings-20261004.png)

BOM Manager define a estrutura padrão usada quando o PDMPublisher produz ou exibe informações de conta do material.

| Configuração | O que controla |
| --- | --- |
| **Default column template** | Selecciona o conjunto e a ordem salvos das colunas BOM. |
| **Default BOM display type** | Seleciona a estrutura SOLIDWORKS BOM, como uma hierarquia indentada. |
| **Group by** | Grupos linhas por texto, propriedades ou espaços. Deixe- o vazio para um resultado plano não agrupado. |
| **Ignore Components** | Abre o editor de condições usado para omitir componentes correspondentes do BOM. |
| **Workbook template** | Seleciona um modelo `.xlsx` ou `.xltx` opcional para exportações do Excel. Digite o caminho ou selecione **Browse...** ao lado do campo. |
| **Include thumbnail** | Inclui a miniatura disponível do modelo na pasta de trabalho exportada. |

<a id="configure-the-defaults"></a>
## Configurar os padrões

1. Selecione um **Default column template**.
2. Selecione o **Default BOM display type** apropriado para a estrutura de montagem.
3. Se as linhas devem ser agrupadas, digite uma expressão **Group by** e use seu menu de placeholder para inserir valores de documento.
4. Selecione **Ignore Components** para definir exclusões. Escolha se qualquer condição ou todas as condições devem corresponder e, em seguida, adicione as regras de propriedade necessárias.
5. Para exportações do Excel, insira um **Workbook template** opcional ou selecione **Browse...** para escolher um arquivo.
6. Ative **Include thumbnail** quando as linhas BOM exportadas precisarem incluir visualizações dos modelos.
7. Selecione **OK** para salvar as configurações.

![Ignore Components condition editor for BOM Manager](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/BOM/BOM_Ignore_components_Default_Light_100.png)

As condições de exclusão afetam a adesão à BOM; elas não suprimem ou deletam componentes na montagem SOLIDWORKS.
