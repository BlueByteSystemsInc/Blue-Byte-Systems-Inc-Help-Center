---
title: "Nome do arquivo □ PDMPublisher Opções"
description: "Configure o padrão de arquivo de saída usado pela tarefa PDMPublisher PDM e pelo suplemento SOLIDWORKS."
ms.date: 08/13/2026
ms.topic: reference
---

# Nome do arquivo

![Filename setting in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

Define o padrão do ficheiro de saída. Você pode combinar texto estático com SOLIDWORKS propriedades personalizadas ou variáveis PDM.

> [!NOTE]
> Esta configuração é compartilhada pelo **PDM task** e **SOLIDWORKS add-in**. Variáveis PDM estão disponíveis ao publicar em um contexto de cofre; SOLIDWORKS propriedades personalizadas e placeholders embutidos estão disponíveis no contexto de arquivo ativo.

Use valores únicos como número de peça, revisão, nome de configuração ou nome da folha quando um arquivo fonte pode criar várias exportações.

Use o **File Number** placeholders para extrair os primeiros 3, 4, 5, ou 6 dígitos da primeira sequência numérica em um nome de arquivo fonte. Use os placeholders **File Number Range** para organizar saídas em intervalos numéricos. Veja [Número de Arquivo Placeholders](../pdmpublisherspecialvariable.md#file-number-placeholders) para todos os placeholders disponíveis, exemplos e comportamento de retrocesso.

> [!IMPORTANT]
> Se **Convert multiple configurations** estiver habilitado, inclua `ConfigurationName` ou outro valor específico de configuração no nome do arquivo.

<a id="existing-files-in-pdm"></a>
## Ficheiros existentes no PDM

Se o arquivo exportado já existe no PDM, a tarefa PDM substitui o arquivo criando uma nova versão. O suplemento SOLIDWORKS faz o mesmo ao publicar através de um contexto de cofre selecionado e o usuário tem as permissões necessárias.

Quando PDMPublisher adiciona ou verifica no arquivo exportado, o comentário de check-in identifica que o arquivo foi adicionado ou verificado pelo PDMPublisher.
