---
title: "Use desenho-derivado BOM □ PDMPublisher Opções"
description: "Use o primeiro BOM salvo em um desenho de montagem para determinar referências, configurações e quantidades do PDMPublisher."
ms.date: 08/19/2026
ms.topic: reference
---

# Usar BOM Derivado de Desenho

![Use drawing-derived BOM setting](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-034-property-use-drawing-derived-bom.png)

Utiliza o primeiro BOM derivado (nomeado) salvo no desenho SOLIDWORKS associado em vez de calcular o BOM diretamente da montagem.

> [!IMPORTANT]
> Esta opção só está disponível no **PDMPublisher for SOLIDWORKS PDM Professional**. Não é mostrado no suplemento SOLIDWORKS.

Use esta opção quando o desenho BOM define a estrutura de montagem e as quantidades que devem impulsionar a publicação. Isso permite que uma tarefa lançada em uma montagem obtenha seu BOM a partir do desenho da montagem.

<a id="how-pdmpublisher-finds-the-drawing"></a>
## Como PDMPublisher Encontra o Desenho

PDMPublisher primeiro localiza o desenho associado à montagem:

1. Se [Use PDM Search to Locate Drawings](use-pdm-search-to-locate-drawings.md) estiver habilitado, PDMPublisher busca os pais imediatos do conjunto **Where Used** para um desenho.
2. Se a pesquisa não retornar um desenho, ou a opção de pesquisa estiver desabilitada, PDMPublisher procura na pasta de montagem por um desenho com o mesmo nome de base.

Por exemplo:

```text
Assembly: C:\PDMVault\Projects\Speaker\Speaker.sldasm
Drawing:  C:\PDMVault\Projects\Speaker\Speaker.slddrw
```

<a id="how-the-bom-is-selected"></a>
## Como o BOM é selecionado

Após localizar o desenho, PDMPublisher solicita que os BOMs derivados sejam salvos nesse desenho e usa o primeiro BOM retornado pelo SOLIDWORKS PDM. Ele carrega a visão atual desse BOM, em seguida, continua com a referência padrão, configuração, quantidade e processamento de condições.

> [!WARNING]
> Se um desenho contém vários BOMs derivados, PDMPublisher usa o primeiro retornado pelo PDM. Confirme que o BOM é o primeiro BOM disponível antes de confiar nesta opção.

<a id="requirements"></a>
## Requisitos

- A tarefa deve processar uma montagem SOLIDWORKS.
- O conjunto deve ter um desenho SOLIDWORKS associado em PDM.
- O desenho deve conter pelo menos um BOM derivado salvo.
- As linhas BOM devem identificar referências e configurações que o PDM possa resolver.
- Um BOM calculado válido [Template](template.md) deve permanecer configurado para processamento de fallback.

<a id="calculated-bom-fallback"></a>
## Recuo BOM calculado

Se o PDMPublisher não conseguir encontrar o desenho, o desenho não tem nenhum BOM utilizável, o BOM não pode ser carregado, ou o BOM não contém linhas utilizáveis, ele cai de volta para o BOM calculado configurado.

> [!IMPORTANT]
> Não deixe **Template** vazio. A tarefa ainda requer um modelo BOM calculado válido quando o processamento BOM derivado do desenho não está disponível.

O método de cálculo selecionado(calculation-method.md) aplica-se quando se utiliza este recurso BOM calculado.

<a id="logs"></a>
## Registos

Prefixo de registros de tarefas estas mensagens com `Drawing-derived BOM:`. Os registos de registo:

- Como o desenho foi localizado
- Que os BOMs foram encontrados
- Qual BOM foi selecionado
- Quantas linhas foram carregadas
- Por que o retorno calculado BOM foi utilizado, quando necessário

Reveja estas entradas quando a lista de referência ou as quantidades exportadas não corresponderem à BOM de desenho esperada.
