---
title: "Converta várias configurações PDMPublisher Opções"
description: "Exportar todas as configurações de peças e montagem."
ms.date: 08/09/2026
ms.topic: reference
---

# Converter várias configurações

![Converter configuração múltipla de configurações em PDMPublisher para SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox5_Convert_multiple_configurations_Light_100.png)
Processa todas as configurações de peça e montagem em vez de apenas a configuração ativa ou selecionada.

> [!NOTE]
> Esta configuração está disponível tanto no **PDM task** quanto no **SOLIDWORKS add-in**. A tarefa começa com sua configuração selecionada ou lançada; o suplemento começa com a configuração ativa no SOLIDWORKS.

> [!IMPORTANT]
> Adicionar `ConfigurationName` ao [padrão do nome do ficheiro](filename.md) antes de activar esta opção. Sem um nome de arquivo específico de configuração, as exportações de diferentes configurações podem se substituir.

<a id="configuration-filter"></a>
## Filtro de Configuração

O botão **Configuration Filter** abre a janela de filtragem para esta opção. Use- o quando não quiser que cada configuração seja processada.

![Configuration filter dialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Configuration_filter_Default_Light_100.png)

O filtro permite- lhe incluir ou excluir configurações pelo nome. Use padrões de caracteres especiais quando várias configurações compartilham uma convenção de nomes.

Digite padrões no **Include Configurations** quando somente configurações correspondentes devem ser exportadas. Deixe- o vazio quando todas as configurações forem permitidas.

Digite padrões no **Exclude Configurations** quando as configurações correspondentes devem ser ignoradas. Isto é comumente usado para ignorar configurações de padrão plano ao exportar formatos de modelo como `STEP`.

| Objetivo | Padrão de exemplo | Resultado |
|---|---|---|
| Exportar todas as configurações | `*` | Processa todas as configurações. |
| Exportar apenas configurações de produção | `PROD*` | Processa configurações cujos nomes começam com `PROD`. |
| Exportar apenas uma configuração nomeada | `Default` | Processos apenas `Default`. |
| Exportar os tamanhos que seguem um padrão de nomenclatura | `SIZE-*` | Processa configurações como `SIZE-S`, `SIZE-M` e `SIZE-L`. |
| Excluir configurações de padrão plano | `*Flat*` ou `*Flat-Pattern*` na lista de exclusão | Ignora as configurações de padrão plano durante a exportação de configuração normal. |

> [!TIP]
> Se você quiser que cada configuração do modelo seja convertida para `STEP`, habilite **Convert multiple configurations**, inclua `ConfigurationName` no [padrão de nome de arquivo](filename.md), e exclua configurações de padrão plano do filtro de configuração. Isso evita a criação de arquivos indesejados STEP de configurações de padrão plano de chapa de metal.
