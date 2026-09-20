---
title: "Use @ Tab to Evaluate Paths | PDMPublisher Options"
description: "Avaliar os caminhos de exportação e nomes de arquivos da guia de configuração @."
ms.date: 08/13/2026
ms.topic: reference
---

# Usar @ Tab para avaliar caminhos

![Use @ tab to evaluate paths setting](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-031-property-use-@-tab-to-evaluate-paths..png)

Avalia variáveis dinâmicas no local de exportação e nome de arquivo usando a guia `@`.

Use isto quando a informação necessária para compilar o caminho de exportação for armazenada na aba `@` do arquivo em vez de uma guia de configuração específica do modelo.

Isso é útil quando nomes de pastas, nomes de clientes, números de projeto, pastas de lançamento ou outros valores de caminho são mantidos no `@`.

Por exemplo, se o local de exportação usa uma variável de `@`:

```text
(VaultRootFolder)\Released PDFs\($ProjectNumber)
```

PDMPublisher lê `ProjectNumber` da guia `@` e usa-a para construir o caminho final de exportação.

Use isso com [Localização da exportação](export-location.md) quando a pasta de exportação depende de variáveis armazenadas no `@`.
