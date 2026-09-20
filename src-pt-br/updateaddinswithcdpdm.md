---
title: "Updating Blue Byte Systems PDM add-ins with PDMDeploy | SOLIDWORKS PDM"
description: "Este artigo é sobre atualizar qualquer suplemento SOLIDWORKS PDM que você comprar da Blue Byte Systems Inc usando o suplemento PDMDeploy."
ms.date: 07/04/2026
ms.topic: conceptual
---

> [!IMPORTANT]
> CDPDM is now PDMDeploy. Starting with PDMDeploy V31, the add-in features a redesigned dark interface and activation codes. Older screenshots and video tutorials referencing CDPDM show the previous interface.

# Atualizando sistemas de Byte Azul PDM add-ins com PDMDeploy


<video src="https://bluebyte.biz/wp-content/docsvideos/cdpdm.mp4" autoplay muted controls style="width: 100%; border-radius: 12px;"></video>

> [!NOTE]
> Este vídeo foi gravado com uma versão mais antiga do PDMDeploy (CDPDM) e mostra a interface anterior. O fluxo de trabalho é o mesmo. Consulte as imagens abaixo para a interface atual (V31 e posterior).


Este artigo é sobre atualizar qualquer suplemento SOLIDWORKS PDM que você comprar da Blue Byte Systems Inc usando o suplemento PDMDeploy. Esta ferramenta simplifica o processo de entrega de código para clientes SOLIDWORKS PDM utilizando a plataforma de entrega contínua PDMDeploy. Ele permite que você acesse e atualize seu add-ins comprado e todas as suas versões de forma eficiente.

<a id="installation-steps"></a>
### Instalação Steps:

<div class="bbs-highlight-panel">

<a id="download-pdmdeploy"></a>
### Baixar PDMDeploy

<a class="bbs-download-button" href="/pdmdeploy/PDMDeploy.cex">Baixar PDMDeploy</a>

<a id="public-activation-code"></a>
### Código público de activação

<code class="bbs-activation-code">E2A50448-9F15-42D9-B2F3-290409E81F94</code>

</div>

1. Para nossos produtos padrão, use o código de ativação público acima. Se desenvolvermos uma solução personalizada para você, use o código de ativação privado do seu email de boas-vindas. Para instalar o PDMDeploy após o download, siga as instruções em [este artigo](/src/cdpdm.html).

2. Desbloquear o arquivo baixado: Botão direito do mouse em `PDMDeploy.cex` e selecione Propriedades. Na janela de propriedades, verifique a opção Desbloquear e clique em OK.

3. Abra a ferramenta de administração: Entre em seu cofre com um usuário PDM que tem a permissão Editar Add-Ins.

4. Importar o suplemento:

    - Vá para Arquivo > Abra e navegue para `PDMDeploy.cex`.

    - Clique em OK para abrir o arquivo CEX.

    - Arraste e solte o ícone de adição PDMDeploy no nó add-ins na ferramenta de administração. Isso adicionará o suplemento no nó add-ins.

5. Carregar a sua configuração:

    - Clique com o botão direito do mouse no suplemento PDMDeploy e clique em *Carregar configuração do cliente (código de ativação ou arquivo)...*

    ![PDMDeploy menu](https://pdmpublisher.com/help/images/pdmdeploy31_menu.png)

    - Digite o código de ativação de seu email de boas-vindas e clique em *Ativar*.

    ![PDMDeploy load configuration](https://pdmpublisher.com/help/images/pdmdeploy31_loadconfig.png)

    - Alternativamente, clique em *Browse for .cdg file...* se você recebeu um Ficheiro de Configuração do Cliente em vez disso. Se o arquivo foi baixado da internet, desbloqueie-o primeiro (clique com o botão direito no arquivo, Propriedades, confira Unblock, OK).

    - Você será solicitado com uma mensagem que lê "Configuração carregada com sucesso!"

6. Clique com o botão direito do mouse em PDMDeploy no nó add-ins e clique em *Atualizar AddIns...*

7. Verifique o suplemento que você deseja instalar na lista, selecione a versão que você precisa na versão do servidor lista suspensa (o mais novo é pré-selecionado), e clique em * Instalar selecionado*.

8. Confirme as caixas de diálogo subsequentes para reiniciar o PDM e a ferramenta de administração.


<a id="updating-an-add-in"></a>
### Atualizando um Suplemento:

1. Clique com o botão direito do mouse no suplemento PDMDeploy (em Add-ins na ferramenta Administração) e clique em *Atualizar os Suplementos...*:

![PDMDeploy menu](https://pdmpublisher.com/help/images/pdmdeploy31_menu.png)

2. A janela PDMDeploy abre imediatamente, sem diálogo de espera. A barra de status na parte inferior primeiro lê seu add-ins instalado do cofre, em seguida, carrega o add-ins disponível do servidor:

![PDMDeploy add-in manager](https://pdmpublisher.com/help/images/pdmdeploy31_manager.png)

3. A coluna Estado mostra onde você está para cada suplemento: *Não instalado*, * Actualizar disponível*, ou * Actualizar*. A versão do servidor lista suspensa pré-seleciona a versão mais nova. Escolha um mais velho apenas se instruído pelo apoio.

4. Marque o(s) suplemento(s) a atualizar (a caixa de seleção do cabeçalho seleciona todos) e clique em *Instalar selecionado*. A barra de status mostra qual suplemento está sendo baixado e instalado. O processo pode demorar alguns momentos.

5. Você será solicitado no final para reiniciar sua sessão PDM. Isso permite que seu cliente local obtenha a nova versão do suplemento instalado. *Isso é opcional* mas altamente recomendado para tarefas que são acionadas do File Explorer.

> [!TIP]
> Se o PDMDeploy ainda não foi configurado, a janela mostra um painel de ativação em vez da lista suplemento. Digite seu código de ativação ou navegue para seu arquivo `.cdg` bem ali.

<a id="warnings"></a>
### Avisos

> [!WARNING]
> PDMDeploy não permite nova tarefa add-ins na * Configuração do Host de tarefa*. Você deve fazer isso manualmente:
> ![taskhostconfiguration](https://pdmpublisher.com/help/images/taskhostconfiguration.png)
> [!WARNING]
> Todos os computadores clientes usando as tarefas do suplemento devem ser reiniciados para usar a nova versão.
