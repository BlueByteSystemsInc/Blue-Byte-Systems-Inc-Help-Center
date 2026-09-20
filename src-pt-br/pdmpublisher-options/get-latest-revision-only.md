---
title: "Get Latest Revision Only | PDMPublisher PDM Task"
description: "Publique a revisão mais recente gravada do PDM e as referências salvas com essa revisão em vez de versões de trabalho em andamento não revisadas."
ms.date: 09/08/2026
ms.topic: reference
---

# Obter apenas a revisão mais recente

![Get latest revision only setting](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-property-get-latest-revision-only.png)

Use **Get latest revision only** quando uma tarefa deve publicar a mais nova revisão gravada do PDM em vez da versão mais recente verificada.

Quando ativado, PDMPublisher:

- Encontra a revisão mais recente criada no histórico PDM do arquivo.
- Recupera a versão exata do arquivo associada a essa revisão.
- Recupera as referências como elas foram salvas com essa versão.
- Escreve o nome de revisão seleccionado e o número de versão PDM no registo de tarefas.

<a id="example"></a>
## Exemplo

Suponha que uma montagem tenha revisão `B` na versão PDM `12`, mas as versões `13` através do `15` contêm trabalho não revisto em andamento.

| Configuração | Versão usada pela tarefa |
| --- | --- |
| **Get latest revision only** activado | Versão `12`, incluindo as referências salvas com revisão `B` |
| [Trabalhar com a versão mais recente](work-with-latest-version.md) activado | Versão `15` |

> [!IMPORTANT]
> **Get latest revision only** substitui **Work with latest version**. Um arquivo sem uma revisão PDM gravada não pode ser exportado enquanto esta opção estiver habilitada, e a tarefa relata uma falha em vez de publicar uma versão não revisada.

Esta opção aplica-se apenas ao **PDMPublisher PDM Task**.
