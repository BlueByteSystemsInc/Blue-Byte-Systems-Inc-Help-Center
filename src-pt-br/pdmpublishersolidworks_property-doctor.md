---
title: "Property Doctor | PDMPublisher for SOLIDWORKS"
description: "Reveja, edite, valide, importe, exporte e automatize as propriedades personalizadas do SOLIDWORKS em um documento e suas referências."
ms.date: 09/25/2026
ms.topic: how-to
---

# Property Doctor

Property Doctor apresenta o documento ativo, configurações, listas de corte, desenhos e referências em uma grade de propriedade editável.

![Property Doctor mostrando propriedades do documento em um conjunto e suas referências](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/PropertyDoctor/PropertyDoctor_Main_window_Default_Light_100.png)
Abra o **PDMPublisher > Settings > Property Doctor** para configurar as colunas padrão, carregamento de miniaturas e perfis de ação reutilizáveis.

![Property Doctor settings and profile controls](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Property_Doctor_Default_Light_100.png)

<a id="edit-properties"></a>
## Editar Propriedades

1. Abra uma parte salva, montagem ou desenho.
2. Selecione **PDMPublisher > Property Doctor**.
3. Adicionar ou mostrar as colunas de propriedade que você precisa.
4. Edite os valores diretamente, use um menu de valor ou abra uma fórmula avançada.
5. Reveja os indicadores **Added**, **Changed** e **Removed**.
6. Selecione **Apply changes** para escrever as alterações pendentes, ou **Discard changes** para restaurar os valores originais.

Células cinzentas faltam propriedades. **Clear** mantém o nome da propriedade e escreve um valor vazio; **Delete Property** remove a propriedade. As células de fórmula e de valor ligado são avaliadas para a linha do documento onde são aplicadas.

<a id="find-filter-and-fill"></a>
## Procurar, Filtrar e Preencher

- Procure nomes de documentos, configurações, nomes de propriedades e valores.
- Abrir Procurar e Substituir para substituições de texto simples, sensíveis a maiúsculas ou expressões regulares.
- Filtrar peças, conjuntos, desenhos, propriedades personalizadas, propriedades de configuração, listas de cortes e valores vazios.
- Arraste o cabo da célula verde verticalmente para preencher linhas ou horizontalmente para copiar em colunas visíveis.
- Use **Columns** para mostrar, ocultar, adicionar e organizar colunas de propriedades.
- Importar um Property Doctor CSV exportado, rever os valores pendentes, em seguida, aplicá-los.

<a id="document-commands"></a>
## Comandos de Documentos

O menu do documento pode carregar um documento no SOLIDWORKS, reabrir referências para edição, resolver referências leves, verificar arquivos dentro ou fora, obter o mais recente, selecionar o item, zoom para ele, ou isolá-lo. A disponibilidade depende do estado do documento e do acesso ao PDM.

<a id="profiles-and-column-templates"></a>
## Perfil e Modelos de Colunas

Um perfil Property Doctor é um conjunto ordenado de ações de propriedade. Uma ação pode definir um valor, excluir propriedades, redefinir valores de propriedade ou definir o material de uma peça a partir de uma propriedade para escopos e condições selecionados. Visualize um perfil para inspecionar suas alterações na grade antes de selecionar **Apply**.

Os modelos de colunas controlam as propriedades que aparecem. No **Settings > Property Doctor**, escolha o modelo padrão, edite suas colunas, gerencie perfis ou esconda miniaturas para carregamento mais rápido.

As acções vão de cima para baixo. Ações posteriores de correspondência podem substituir valores produzidos por ações anteriores. Salvando um perfil armazena a automação; ele não muda nenhum documento até que o perfil seja visualizado e aplicado.

<a id="set-material-from-a-property"></a>
## Definir material a partir de uma propriedade

Use a ação **Set material from property** para atribuir um material SOLIDWORKS às configurações de peça a partir do valor de uma propriedade.

1. Selecione a propriedade de origem e os escopos de configuração de peça que a ação deve processar.
2. Selecione uma ou mais bibliotecas de materiais SOLIDWORKS (`.sldmat`) para pesquisar.
3. Adicione mapeamentos quando o valor da propriedade for um código de material ou não corresponder exatamente ao nome de um material. Um padrão de mapeamento pode conter `*` como curinga.
4. Visualize o perfil e revise cada alteração de material proposta antes de selecionar **Apply**.

Os mapeamentos de materiais podem ser importados ou exportados em um CSV de duas colunas com os cabeçalhos `Pattern` e `Material`. O Property Doctor ignora valores vazios, vinculados, não resolvidos ou ambíguos e mostra o motivo na visualização. Esta ação suporta configurações de peça; ela não atribui materiais a corpos de lista de corte.

<a id="shared-resources"></a>
## Recursos Compartilhados

Property Doctor pode usar o nome [Formulas avançadas](pdmpublishersolidworks_settings.md#settings-pages), fontes externas SQL Server e pastas de pesquisa de desenho configuradas sob **Shared Resources** em Configurações. A transferência completa de configurações inclui essas definições, mas nunca inclui credenciais SQL.
