---
title: "Map Variables Between Source and Destination File | PDMPublisher Options"
description: "Mapear metadados dos arquivos de origem para os arquivos de destino gerados."
ms.date: 08/09/2026
ms.topic: reference
---

# Mapear as Variáveis entre o Ficheiro de Origem e Destino

![Map variables setting](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-021-property-map-variables-between-source-and-destination-file.png)

Mapeia as variáveis do arquivo fonte para o arquivo de destino gerado.

Use isso quando exportados PDFs ou arquivos neutros precisam de metadados para pesquisa, aprovação ou automação a jusante.

![Variable mapping dialog](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-dialog-variable-mapping.png)

Use **Add Mapping** para adicionar uma nova regra de variável fonte-destino.

Colunas:

- **Source** é a variável do arquivo original.
- **Value** mostra o valor que PDMPublisher lê do arquivo fonte.
- **Destination** é a variável escrita para o arquivo exportado.

Por exemplo, `Source Revision Number` pode ser mapeado para `Revision` para que o arquivo exportado mantenha o valor de revisão do arquivo fonte.
