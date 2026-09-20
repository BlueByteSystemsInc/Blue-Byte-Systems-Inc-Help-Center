---
title: "Anotações PDMPublisher para SOLIDWORKS"
description: "Encontre a documentação focada para anotação de conteúdo, aparência, colocação e transferência de configurações."
ms.date: 09/15/2026
ms.topic: how-to
---

# Anotações de Publicação

Anotações colocar texto, valores de propriedade SOLIDWORKS, marcas d'água ou códigos QR em folhas de desenho exportadas e PDFs. O perfil selecionado (pdmpublishersolidworks_profiles.md) armazena a coleção de anotações.

Selecione **PDMPublisher > Annotations** para editar o perfil de publicação ativo, ou use a seta de comando para abrir um perfil nomeado. Use as páginas focadas sob **Publishing Annotations** no TOC:

![Escolha o perfil de publicação cujas anotações você deseja editar](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/annotations-profile-menu-20260908.png)
![Editor de anotações e seus controles](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/annotations-editor-controls-20260908.png)
<a id="annotation-editor-controls"></a>
## Controles do Editor de Anotações

| Controlo | O que ele faz |
| --- | --- |
| **Add annotation** | Adiciona uma nova linha de anotações ao perfil seleccionado. |
| Texto da anotação | Define texto literal e placeholders avaliados durante a publicação. |
| Fonte e tamanho | Selecciona o tipo de letra e o tamanho do ponto. |
| **Bold** / **Italic** | Aplica ênfase ao texto de anotação. |
| **Watermark** | Muda a anotação como marca d'água. |
| **Show annotation** | Inclui a anotação durante a exportação. Limpar para manter a definição sem publicá-la. |
| **QR code** | Muda o valor de anotação avaliado como um código QR. |
| **Width (mm)** | Define o código QR ou a largura da anotação em milímetros. |
| **Drawing background** | Controla o fundo de desenho usado pela visualização do posicionamento. |
| **Show placeholders** | Mostra os nomes dos placeholders na antevisão em vez dos valores avaliados. |
| **Copy X,Y** | Copia a posição da nota de desenho SOLIDWORKS selecionada nos campos X e Y da anotação. |
| **Position X / Y (%)** | Posiciona a anotação em percentagem da largura e da altura da folha. |
| **Sheets** | Escolhe quais folhas de desenho recebem a anotação. |
| Nomes separados por vírgula | Limita uma seleção de folha com nome para os nomes de folha separados por vírgula. |
| **OK** / **Cancel** | Salva as alterações de perfil ou fecha o editor sem salvá- las. |

A área de desenho é uma pré-visualização de posicionamento. Adicionar ou mover um item não adiciona uma nota SOLIDWORKS ao desenho de origem.

| Categoria | Páginas |
| --- | --- |
| Conteúdo | [Adicionar nota](pdmpublisher-annotations/add-annotation.md), [Texto de anotação](pdmpublisher-annotations/annotation-text.md), e [SQL Consultar Placeholders](pdmpublisher-annotations/sql-query-placeholders.md) |
| Aparência | [Formatação de texto](pdmpublisher-annotations/text-formatting.md), [Marca de água](pdmpublisher-annotations/watermark.md), e [Ativa](pdmpublisher-annotations/active.md) |
| Colocação | [Posição](pdmpublisher-annotations/position.md) e (pdmpublisher-annotations/sheets.md) |
| Configurações transferência | [Notas de importação e exportação](pdmpublishersolidworks-annotation-files.md) |

> [!NOTE]
> Os controles de anotação são compartilhados com a tarefa PDM, mas o suplemento SOLIDWORKS obtém propriedades do documento ativo e salva anotações no perfil de publicação selecionado.
