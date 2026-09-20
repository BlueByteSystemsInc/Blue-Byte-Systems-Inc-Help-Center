---
title: "Padrão do nome da folha □ PDMPublisher Opções"
description: "Filtrar folhas de desenho pelo nome e entender o retorno quando um padrão avaliado não corresponde a nenhuma folha."
ms.date: 08/19/2026
ms.topic: reference
---

# Padrão de Nome da Folha

![Sheet name pattern setting in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

Padrão Wildcard usado quando **Sheets to export** é definido para nomes de folhas correspondentes.

> [!NOTE]
> Esta configuração está disponível tanto no **PDM task** quanto no **SOLIDWORKS add-in**.

<a id="selection-rules"></a>
## Regras de Seleção

- Para um desenho de uma folha, PDMPublisher ignora o padrão e exporta a única folha.
- Para um desenho com duas ou mais folhas, PDMPublisher exporta as folhas correspondentes.
- Se o padrão avaliado não corresponde a nenhuma folha, PDMPublisher cai de volta para exportar todas as folhas.

> [!WARNING]
> Um erro ortográfico, o valor da propriedade em falta ou o nome de configuração inesperado podem fazer com que o padrão não corresponda a nada. Na versão `2026.08.09` e posterior, esse resultado exporta cada folha de desenho e escreve uma mensagem de retorno para o log.

Use `*` para corresponder a qualquer texto e `?` para corresponder a um caractere.

Exemplos:

- `*` corresponde a cada folha.
- `Sheet*` corresponde a `Sheet1`, `Sheet2` e `Sheet-Main`.
- `REV?` corresponde `REV1` ou `REVA`.
- `DXF*` corresponde a folhas cujos nomes começam com `DXF`.

<a id="match-the-configuration-name"></a>
## Coincidir com o Nome da Configuração

Use `(ConfigurationName)` quando uma folha de desenho é nomeada após a configuração ser exportada. PDMPublisher avalia o placeholder antes de combinar o nome da folha.

Por exemplo, se a configuração selecionada for `Machined`:

| Padrão do nome da folha | Padrão avaliado | Correspondência | Não corresponde |
| --- | --- | --- | --- |
| `(ConfigurationName)` | `Machined` | `Machined` | `Default`, `Machined-DXF` |
| `(ConfigurationName)*` | `Machined*` | `Machined`, `Machined-DXF` | `Default` |
| `*(ConfigurationName)*` | `*Machined*` | `Machined`, `DXF-Machined`, `Machined-REV-A` | `Default` |

Como outro exemplo, suponha que um desenho contenha folhas chamadas `Default`, `Machined` e `Welded`. Quando a configuração selecionada é `Welded` e o padrão é `(ConfigurationName)`, apenas a folha `Welded` é exportada.

Se a configuração selecionada é `Painted` e nenhuma dessas folhas é chamada `Painted`, todas as três folhas são exportadas porque o padrão avaliado não tem correspondências.

Esta configuração é usada por [Sheets to Export](sheets-to-export.md) quando essa opção é definida como `Sheets matching name`.
