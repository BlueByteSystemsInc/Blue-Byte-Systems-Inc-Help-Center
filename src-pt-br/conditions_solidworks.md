---
title: "Condições de PDMPublisher para SOLIDWORKS"
description: "Encontre a documentação focada para a construção, avaliação, revisão, importação e exportação de regras de condição."
ms.date: 09/15/2026
ms.topic: how-to
---

# Condições de publicação

As condições decidem quais arquivos de montagem estão incluídos em um trabalho de publicação. O perfil selecionado (pdmpublishersolidworks_profiles.md) armazena a árvore de condições.

> [!IMPORTANT]
> Activar [Export References Individualmente](pdmpublisher-options/export-references-individually.md) quando as condições devem filtrar a montagem activa e os seus ficheiros referenciados.

Selecione **PDMPublisher > Conditions** para editar o perfil de publicação ativo, ou use a seta de comando para abrir um perfil nomeado. Use as páginas focadas sob **Publishing Conditions** no TOC:

![Escolha o perfil Publicar cujas condições deseja editar](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/conditions-profile-menu-20260908.png)
![Editor de condições e seus controles](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/conditions-editor-controls-20260908.png)
<a id="condition-editor-controls"></a>
## Controles do Editor de Condição

| Controlo | O que ele faz |
| --- | --- |
| Activar a opção | Activa a linha raiz, grupo ou condição. Os itens incapacitados permanecem no perfil, mas não são avaliados. |
| Expandir/colapsar seta | Mostra ou esconde as crianças de um grupo de condição. |
| **AND / OR** | Define se cada criança deve passar (**AND**) ou se qualquer criança pode passar (**OR**). |
| **+ (AND/OR)** | Adiciona um grupo de condições aninhadas. |
| **+ (Condition)** | Adiciona uma linha de condição ao grupo seleccionado. |
| **Variable** | Selecciona a propriedade, o valor do ficheiro ou a variável especial a avaliar. |
| **Comparison** | Selecciona o teste aplicado à variável. Uma nova linha permanece **Undefined** até que uma comparação seja escolhida. |
| **Value** | Fornece o valor de comparação. |
| **Configuration** | Limita a avaliação de propriedades à configuração SOLIDWORKS, quando aplicável. |
| Apagar (×) | Remove o grupo ou condição correspondente. |
| **OK** / **Cancel** | Salva a árvore de condições ou fecha o editor sem salvá- lo. |

Construir a partir da raiz para baixo. Use grupos aninhados quando uma parte da regra precisa de comportamento AND/OR diferente de seu pai.

| Categoria | Páginas |
| --- | --- |
| Regras de compilação | [Adicionar condições e grupos](pdmpublisher-conditions/add-conditions-and-groups.md) e [Campos de classificação](pdmpublisher-conditions/condition-fields.md) |
| Valores e comparações | [Variáveis especiais](pdmpublisher-conditions/special-variables.md) e [Tipos de Condição](pdmpublisher-conditions/condition-types.md) |
| Processamento | [Regras de avaliação](pdmpublisher-conditions/evaluation-rules.md), [Resultados da condição de revisão antes da exportação](pdmpublishersolidworks-condition-output.md), e [Condições de importação e exportação](pdmpublishersolidworks-condition-files.md) |
