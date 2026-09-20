---
title: "Folhas para exportar Opções PDMPublisher"
description: "Escolha quais folhas de desenho são exportadas e entenda o retorno de todas as folhas quando nenhum nome corresponder."
ms.date: 08/19/2026
ms.topic: reference
---

# Folhas para exportar

![Pasta para exportar a configuração em PDMPublisher para SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)
Controla se desenho PDF exportações incluem todas as folhas ou apenas folhas cujos nomes correspondem a um padrão.

> [!NOTE]
> Esta configuração está disponível tanto no **PDM task** quanto no **SOLIDWORKS add-in**.

![Patos para exportar a lista no PDMPublisher para SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Dropdown14_Light_100.png)
Opções:

- `All sheets` exporta todas as folhas do desenho.
- `Sheets matching name` exporta folhas que correspondem [Padrão de Nome de Folha](sheet-name-pattern.md). Se nenhuma folha corresponder, PDMPublisher exporta todas as folhas.

<a id="matching-fallback"></a>
## Corresponder ao Retalho

- Um desenho com uma folha sempre exporta sua única folha sem avaliar o padrão.
- Um desenho com duas ou mais folhas exporta apenas as folhas correspondentes quando um ou mais nomes correspondem.
- Se um desenho com duas ou mais folhas não tem nomes de folhas correspondentes, PDMPublisher exporta todas as folhas e registra o retorno no registro.

> [!IMPORTANT]
> Um padrão que não corresponde a nada já não produz uma selecção de folhas vazia. Reveja a guia Logs ou suplemento se todas as folhas foram exportadas inesperadamente.

Use `Sheets matching name` quando desenhos contêm fabricação, referência ou folhas internas que não devem ser exportadas.
