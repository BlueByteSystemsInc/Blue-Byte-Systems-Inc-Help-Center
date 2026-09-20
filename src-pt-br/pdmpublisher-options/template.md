---
title: "Modelo de Opções PDMPublisher"
description: "Selecione o modelo BOM usado para publicação consciente de quantidade."
ms.date: 08/10/2026
ms.topic: reference
---

# Modelo

![Template setting](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-030-property-template.png)

Seleciona o modelo ou layout BOM usado para publicação consciente de quantidade.

![Template dropdown](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-dropdown-002-template.png)

O ícone de layout BOM é um identificador visual. O nome do modelo selecionado determina qual o layout do PDM BOM que o PDMPublisher usa.

O modelo BOM selecionado é usado quando PDMPublisher precisa calcular referências de montagem, configurações e quantidades.

Quando [Use Drawing-Derived BOM](use-drawing-derived-bom.md) estiver habilitado, PDMPublisher tenta primeiramente ler o primeiro BOM chamado salvo no desenho associado. Este modelo permanece necessário porque PDMPublisher o usa para calcular o BOM quando o desenho ou um BOM derivado utilizável não está disponível.

Isso importa mais quando [Exportar Referências para Formatos de Arquivo Individualmente](export-references-individually.md) é ativado.

Use [Método de cálculo](calculation-method.md) para controlar se o cálculo de referência e quantidade utiliza como referências construídas ou as referências mais recentes.

<a id="required-bom-columns"></a>
## Colunas BOM necessárias

O modelo BOM deve incluir os valores que PDMPublisher precisa para identificar cada arquivo referenciado e calcular a quantidade.

![BOM template setting](https://pdmpublisher.com/help/images/bomsetting.png)

| Valor exigido | Por que é necessário |
|---|---|
| `<Name>` | Identifica o arquivo ou componente referenciado. |
| `<Configuration>` / nome da configuração | Identifica a configuração referenciada. |
| Quantidade / `<RefCount>` | Indica a quantidade utilizada para as exportações com conhecimento de referência. |

![BOM layout columns](https://pdmpublisher.com/help/images/bom.png)

> [!IMPORTANT]
> Se o modelo BOM selecionado estiver faltando o nome, configuração ou coluna de quantidade, PDMPublisher pode não ser capaz de calcular corretamente as referências de montagem.
