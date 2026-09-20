---
title: "Instalar o PDMPublisher para o SOLIDWORKS"
description: "Baixe, desbloqueie, instale e habilite o PDMPublisher para o suplemento SOLIDWORKS."
ms.date: 08/24/2026
ms.topic: how-to
---

# Instalar o PDMPublisher para o SOLIDWORKS

Use o instalador PDMPublisher MSI para instalar o complemento de desktop SOLIDWORKS. SOLIDWORKS deve ser fechado enquanto você instalar ou atualizar o suplemento.

<p align="center">
<a class="bbs-download-button" href="https://bluebyte.biz/wp-json/slm_custom/downloadpdmpublisher">Baixar PDMPublisher para SOLIDWORKS</a>
</p>

<a id="before-you-begin"></a>
## Antes de começar

- Salve seu trabalho e feche todas as janelas SOLIDWORKS em execução.
- Certifique-se de que sua conta do Windows pode instalar aplicativos. Sua organização pode exigir aprovação do administrador.
- Baixe o instalador do PDMPublisher MSI para o computador local. Não executá-lo diretamente a partir de um anexo de e-mail, arquivo ZIP, ou visualização de rede.

> [!IMPORTANT]
> Mantenha o SOLIDWORKS fechado até que o assistente de instalação termine. Um processo SOLIDWORKS aberto pode impedir o instalador de substituir ou registrar arquivos adicionais corretamente.

<a id="unblock-the-downloaded-msi"></a>
## Desbloquear o MSI Transferido

O Windows pode bloquear arquivos baixados da internet. Desbloquear o MSI antes de executá-lo:

1. Abra **File Explorer** e localize o arquivo `.msi` baixado.
2. Botão direito do mouse no MSI e selecione **Properties**.
3. Na aba **General**, selecione **Unblock** em **Security**.
4. Selecione **Apply** e, em seguida, selecione **OK**.

> [!NOTE]
> Se a opção **Unblock** não for mostrada, o Windows não marcou o arquivo como bloqueado e você pode continuar com a instalação.

<a id="run-the-installation-wizard"></a>
## Executar o Assistente de Instalação

1. Confirme que o SOLIDWORKS está fechado.
2. Clique duas vezes no arquivo MSI desbloqueado.
3. Aprovar a segurança do Windows ou o prompt de administrador se aparecer.
4. Siga o assistente de instalação através de cada página.
5. Selecione **Install** quando solicitado.
6. Espere o instalador terminar e selecione **Finish**.

<a id="enable-pdmpublisher-in-solidworks"></a>
## Activar o PDMPublisher no SOLIDWORKS

1. Iniciar SOLIDWORKS.
2. Selecione **Tools > Add-Ins**.
3. Expandir **Partner Solution Add-Ins** se o grupo for colapsado.
4. Encontra o **PDMPublisher (SOLIDWORKS)**.
5. Selecione a caixa de seleção no **Active Add-ins** para carregá-la na sessão atual do SOLIDWORKS.
6. Selecione a caixa de seleção no **Start Up** para carregar PDMPublisher automaticamente sempre que o SOLIDWORKS começar.
7. Selecione **OK**.

![PDMPublisher para SOLIDWORKS ativado sob solução de parceiro Add-Ins](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/solidworks-partner-solution-add-in.png)
Após as cargas adicionais, abra a guia **PDMPublisher** CommandManager. Use o **Settings** para configurar perfis e recursos compartilhados; o painel de tarefas agora exibe a documentação do produto.

<a id="update-pdmpublisher"></a>
## Atualizar PDMPublisher

Para instalar uma versão mais recente, feche o SOLIDWORKS, baixe o MSI atual, desbloqueie-o e execute o assistente de instalação novamente. Reabre o SOLIDWORKS apenas após a atualização terminar.

<a id="next-steps"></a>
## Próxima Steps

- [Abra o PDMPublisher para a visão geral do SOLIDWORKS](pdmpublishersolidworks.md).
- [Criar e gerenciar perfis](pdmpublishersolidworks_profiles.md).
- [Gerenciar sua licença](licensespdmpublisher.md).
- [Assista as demonstrações de vídeo](pdmpublisherdemo.md).

Se o PDMPublisher não aparecer em **Tools > Add-Ins**, feche o SOLIDWORKS e execute o instalador novamente. Para obter ajuda adicional, contacte o `support@bluebytesystemsinc.zohodesk.com` e inclua a sua versão do SOLIDWORKS e uma imagem da janela do Add-Ins.
