---
title: "Use PDM Search to Locate Drawings | PDMPublisher Options"
description: "Encontre desenhos através da pesquisa PDM quando eles não estão ao lado do modelo."
ms.date: 08/09/2026
ms.topic: reference
---

# Usar a pesquisa PDM para localizar desenhos

![Use PDM search to locate drawings setting](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-033-property-use-search-to-locate-drawings.png)

Usa o comportamento de pesquisa PDM ou Onde Usado quando um desenho não pode ser encontrado na mesma pasta que o modelo.

Esta opção também é usada por [Use BOM De Desenho Derivado](use-drawing-derived-bom.md). Quando ambas as configurações estão habilitadas, PDMPublisher busca os pais imediatos do conjunto **Where Used** para o desenho que contém o BOM chamado. Se nenhum desenho é devolvido, ele verifica um desenho do mesmo nome na pasta de montagem.

> [!NOTE]
> Desenho e nomes de modelos devem corresponder para que esta pesquisa seja confiável.
