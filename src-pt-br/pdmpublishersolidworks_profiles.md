---
title: "Publicar Perfis PDMPublisher para SOLIDWORKS"
description: "Criar, selecionar, renomear, exportar, importar, compartilhar e excluir perfis de publicação reutilizáveis em PDMPublisher para SOLIDWORKS."
ms.date: 09/16/2026
ms.topic: how-to
bbsProductName: PDMPublisher para SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Publicar Perfis

Um perfil Publish é uma combinação reutilizável de configurações Publish, Anotações e Condições. Use perfis para alternar entre fluxos de trabalho de exportação sem reconstruir essas seções cada vez.

Esta família de perfil pertence ao **PDMPublisher for SOLIDWORKS**. A tarefa PDM armazena suas configurações em uma definição de tarefa e não usa perfis suplemento. Save As New, Property Doctor e Clone Tree têm famílias de perfil separadas documentadas com esses comandos.

![Publique comandos de seleção de perfil e perfil](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
Um perfil é uma configuração de publicação com Opções, Anotações e Condições. Selecione um perfil antes de publicar.

<a id="select-a-profile"></a>
## Seleccionar um Perfil

Use a lista de perfil na página de configurações Publicar ou a seta ao lado do **Publish** no CommandManager. O perfil armazena configurações de publicação, anotações e condições.

![Nomed Publique perfis no menu CommandManager](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/publish-profile-menu-20260908.png)
O menu CommandManager lista cada perfil salvo como **Profile: _name_**. A seleção de uma entrada inicia o fluxo de trabalho Publicar com esse perfil. Se o **Show dialog before processing** estiver habilitado, reveja as opções de saída e processamento resolvidas antes de confirmar o trabalho.

Dê nomes de perfis que descrevem sua saída, como `Released PDF`, `Laser DXF` ou `PDF And Step`.

<a id="create-a-blank-profile"></a>
## Criar um perfil em branco

Selecione **New > New...** para criar um perfil que você pode configurar desde o início. Defina sua Localização de Exportação, Nome de Arquivo, Formatos de Arquivo, comportamento de referência, Anotações e Condições antes de publicar.

Para começar com uma configuração fornecida em vez de um perfil em branco, consulte [Predefinições](pdmpublishersolidworks_presets.md).

<a id="rename-a-profile"></a>
## Mudar o Nome de um Perfil

1. Abra o **PDMPublisher > Settings > Publish** e selecione o perfil.
2. Selecione **Edit**.
3. Mudar o nome no campo de perfil.
4. Selecione **Save**.

Use os botões de página e lápis ao lado do seletor de perfil para criar ou renomear um perfil, em seguida, selecione **OK** para salvar as alterações.

Enquanto o nome do perfil está sendo editado, outros comandos de perfil não estão disponíveis até que o nome seja salvo.

<a id="move-profiles-between-computers"></a>
## Mover perfis entre computadores

Use a transferência de arquivos quando você precisar de um backup permanente ou deseja mover o perfil completo sem usar um PIN.

<a id="export-a-profile-to-a-file"></a>
### Exportar um perfil para um arquivo

1. Selecione o perfil.
2. Abra **Export** e selecione **Export to File...**.
3. Escolha onde salvar o arquivo `.pdmpublisherprofile`.

O arquivo exportado preserva o perfil completo, incluindo suas Opções, Anotações e Condições. Mantenha uma cópia exportada antes de mudar computadores ou fazer grandes alterações em uma configuração de publicação estabelecida.

<a id="load-a-profile-from-a-file"></a>
### Carregar um Perfil de um Ficheiro

1. Abra **Load From...** e selecione **Load from File...**.
2. Selecione um arquivo `.pdmpublisherprofile`.
3. Confirme o nome do perfil se o PDMPublisher encontrar um perfil local com o mesmo nome.

O perfil carregado é salvo localmente, aplicado imediatamente, e torna-se o perfil ativo. Quando o nome já existe, você pode substituir o perfil local, importar o perfil sob outro nome ou cancelar.

> [!NOTE]
> Um arquivo de perfil é uma configuração salva, não uma predefinição incorporada. Carregar não altera a predefinição a partir da qual o perfil pode ter sido criado.

<a id="share-profiles-using-a-pin"></a>
## Compartilhar perfis usando um PIN

Compartilhe Opções, Anotações e Condições selecionadas usando um PIN de seis dígitos que permanece disponível por 30 dias. Veja [Share Profiles Using a PIN](pdmpublishersolidworks_profile_sharing.md) for the share and loading workflow, section selection, name-conflict behavior, and security guidance.

<a id="delete-a-profile"></a>
## Apagar um Perfil

Selecione o perfil e escolha **Delete**. A remoção de um perfil remove a configuração salva; ele não apaga os documentos exportados.

> [!IMPORTANT]
> Confirme que outra cópia não é necessária antes de excluir um perfil. Exportar o perfil primeiro quando for necessário mais tarde.

Para mover todas as famílias de perfis PDMPublisher e recursos compartilhados juntos, use [Transfer All Settings](pdmpublishersolidworks_settings.md#transfer-all-settings).
