---
title: "Compartilhar perfis usando um PIN □ PDMPublisher para SOLIDWORKS"
description: "Compartilhe PDMPublisher selecionado para configurações de perfil SOLIDWORKS com outro usuário usando um PIN de seis dígitos expirando."
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher para SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Compartilhar perfis usando um PIN

PDMPublisher para SOLIDWORKS pode compartilhar um perfil usando um PIN de seis dígitos. Outro PDMPublisher para SOLIDWORKS usuário pode inserir esse PIN para baixar, salvar e aplicar as configurações compartilhadas.

Este recurso pertence ao **PDMPublisher for SOLIDWORKS**. A tarefa PDM Professional armazena configurações em sua definição de tarefa e não usa PINs de perfil.

> [!IMPORTANT]
> Ambos os utilizadores precisam de uma ligação à Internet. Um PIN permanece disponível por 30 dias.

<a id="what-a-shared-profile-can-include"></a>
## O que um perfil compartilhado pode incluir

Antes de enviar ou aplicar um perfil, PDMPublisher permite selecionar estas seções:

- **Options**
- **Annotations**
- **Conditions**

Todas as seções disponíveis são selecionadas por padrão. Selecione pelo menos uma seção para continuar.

O destinatário pode aplicar apenas as secções incluídas de que necessita. As configurações nas seções não selecionadas permanecem inalteradas no perfil atual do destinatário.

<a id="share-a-profile"></a>
## Compartilhar um perfil

1. Selecione o perfil que deseja compartilhar.
2. Abra **Export** e selecione **Share using PIN...**.

![Profile Shared dialog with an expiring six-digit PIN](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/profile-shared-pin.png)

3. Selecione as seções Opções, Anotações e Condições a incluir.
4. Selecione **Share** e aguarde o upload para terminar.
5. No diálogo **Profile Shared**, selecione **Copy PIN** e envie o PIN para o destinatário.

A janela mostra a expiração do PIN na hora local do remetente.

<a id="load-a-shared-profile"></a>
## Carregar um Perfil Compartilhado

1. Abra **Load From...** e selecione **Load using PIN...**.

![Load Profile using PIN dialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/profile-load-pin.png)

2. Digite o PIN de seis dígitos fornecido pelo remetente.

3. Selecione **Load Profile**.
4. Selecione quais seções disponíveis para aplicar, em seguida, selecione **Load Selected**.

PDMPublisher baixa o perfil, salva localmente, aplica as seções selecionadas, e torna o perfil ativo. Outras secções actuais permanecem inalteradas.

Se um perfil local já tem o nome do perfil compartilhado, PDMPublisher pergunta se deve substituí-lo, importá-lo sob outro nome ou cancelar a importação.

<a id="security-and-expiration"></a>
## Segurança e expiração

> [!WARNING]
> Qualquer um que tenha um PIN ativo pode baixar o perfil compartilhado. Use o compartilhamento de PIN para troca de configuração conveniente e de curta duração, não para informações confidenciais.

Reveja as seções selecionadas antes de compartilhar. Os perfis podem conter caminhos de exportação, nomes de arquivos, anotações, condições, nomes de propriedades PDM e configurações de anotação SQL. Não compartilhe senhas, strings de conexão privada ou outros segredos.

Um PIN expirado ou inválido não pode ser carregado. Peça ao remetente para compartilhar o perfil novamente para receber um novo PIN.

Para transferência baseada em arquivos em vez de compartilhamento de PIN, consulte [Mover perfis entre computadores](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
