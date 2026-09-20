---
title: "Localidades do arquivo PDMPublisher para SOLIDWORKS"
description: "Configurar pastas pesquisadas por desenhos associados do SOLIDWORKS."
ms.date: 09/16/2026
ms.topic: how-to
---

# Locais dos Ficheiros

Abra **PDMPublisher > Settings > File Locations** para definir onde PDMPublisher busca desenhos associados a peças e conjuntos.

![Drawing file-location settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)

<a id="search-order-and-controls"></a>
## Buscar Ordem e Controles

| Controlo | Comportamento |
| --- | --- |
| **Add** | Adiciona uma pasta à lista de pesquisa. |
| **Remove** | Remove a pasta selecionada desta lista sem excluir a pasta. |
| **Include subfolders** | Procura por baixo de todas as pastas listadas. Active- o apenas onde a estrutura da pasta é controlada; as árvores largas podem atrasar as pesquisas. |
| **Include SOLIDWORKS File Locations > Referenced Documents folders** | Adiciona as pastas de documentos referenciados configuradas no SOLIDWORKS à pesquisa. |

PDMPublisher busca a pasta do modelo ativo primeiro, depois as pastas configuradas em ordem de lista. Um desenho é incluído somente quando seu nome de arquivo corresponde à parte ou arquivo de montagem. Mantenha a lista estreita e coloque os locais mais prováveis primeiro.

Estes locais ajudam a localizar um mesmo nome ou desenho associado; eles não mudam os caminhos de referência do SOLIDWORKS e não são destinos de exportação. Configurar pastas de saída em [Localização da exportação](pdmpublisher-options/export-location.md).
