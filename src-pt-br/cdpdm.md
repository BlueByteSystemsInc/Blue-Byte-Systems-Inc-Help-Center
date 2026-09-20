---
title: "PDMDeploy | PDMPublisher | SOLIDWORKS PDM"
description: "Como usar PDMDeploy para instalar PDMPublisher, PDM2Excel e outros Blue Byte Systems SOLIDWORKS PDM plugins."
ms.date: 07/04/2026
ms.topic: conceptual
---

> [!IMPORTANT]
> CDPDM is now PDMDeploy. Starting with PDMDeploy V31, the add-in features a redesigned dark interface and activation codes. Older screenshots and video tutorials referencing CDPDM show the previous interface.

# Entrega contínua

<video src="https://bluebyte.biz/wp-content/docsvideos/cdpdm.mp4" autoplay muted controls style="width: 100%; border-radius: 12px;"></video>

> [!NOTE]
> Este vídeo foi gravado com uma versão mais antiga do PDMDeploy (CDPDM) e mostra a interface anterior. O fluxo de trabalho é o mesmo. Consulte as imagens abaixo para a interface atual (V31 e posterior).

PDMDeploy é um complemento PDM da Blue Byte Systems Inc. que facilita a implantação do PDM e a tarefa desenvolvida pela add-ins para você.

O suplemento se comunica com nossos servidores e permite a instalação de todas as versões do seu PDM add-ins.

<a id="advantages"></a>
## Vantagens

As vantagens de usar PDMDeploy são numerosas:

- Não há necessidade de pedir ou baixar arquivos CEX.
- Capacidade de alternar entre versões.
- O processo convencional de instalação e atualização do add-ins é muito tedioso e demorado.

<a id="where-to-find-pdmdeploy"></a>
## Onde encontrar PDMDeploy

<a id="public-download-blue-byte-systems-products"></a>
### Transferência pública (produtos da Blue Byte Systems)

PDMDeploy está disponível publicamente:

<div class="bbs-highlight-panel">

<a id="download-pdmdeploy"></a>
### Baixar PDMDeploy

<a class="bbs-download-button" href="/pdmdeploy/PDMDeploy.cex">Baixar PDMDeploy</a>

<a id="public-activation-code"></a>
### Código público de activação

<code class="bbs-activation-code">E2A50448-9F15-42D9-B2F3-290409E81F94</code>

</div>

Este código de ativação dá acesso apenas aos produtos Blue Byte Systems (PDM2Excel, PDMPublisher, PDMShell, tarefa add-ins, etc.). Nossos produtos exigem uma licença válida para executar. Instalar um suplemento não o ativa.

<a id="if-we-have-developed-a-custom-solution-for-you"></a>
### Se desenvolvemos uma solução personalizada para você:

- Use o código de ativação privado do seu email de boas-vindas em vez do público. Ele dá acesso ao seu add-ins personalizado e aos nossos produtos padrão se você possuir algum.
- Alternativamente, você pode ter recebido um arquivo de configuração do cliente (`.cdg`). Funciona da mesma forma.

> [!NOTE]
> Se você comprou um dos nossos produtos PDM e nos fez desenvolver uma solução personalizada para você, por favor, entre em contato conosco para que possamos gerar um código de ativação que permite acessar todos os seus ativos com um único código.

<a id="how-to-install"></a>
## Como instalar

- Localize `PDMDeploy.cex`.
- No Windows 11, 10 e 7, os downloads da internet são bloqueados. Clique com o botão direito do mouse no arquivo CEX, vá para Propriedades, verifique Desbloquear e clique em Aplicar e OK.
- Abra a ferramenta Administração.
- Entra no cofre. Certifique-se de usar um usuário PDM com permissão Edit Add-Ins.
- Na ferramenta Administração, clique em Arquivo > Abra e navegue para o arquivo `PDMDeploy.cex`.
- Arraste e solte o suplemento da janela CEX para o nó Add-ins e espere alguns momentos para que o PDMDeploy seja instalado.

![PDMDeploy Installation](https://pdmpublisher.com/help/images/cdpdm.png)

<a id="configuration"></a>
## Configuração

PDMDeploy precisa saber quais ativos da empresa você tem acesso. Existem duas maneiras de configurá-lo. O código de ativação é o recomendado.

- Clique com o botão direito do mouse no suplemento PDMDeploy e clique em *Carregar configuração do cliente (código de ativação ou arquivo)...*

![PDMDeploy Menu](https://pdmpublisher.com/help/images/pdmdeploy31_menu.png)

- A janela de configuração abre:

![PDMDeploy Load Configuration](https://pdmpublisher.com/help/images/pdmdeploy31_loadconfig.png)

<a id="option-1-activation-code-recommended"></a>
### Opção 1: Código de ativação (recomendado)

- Digite o código de ativação do seu email de boas-vindas na caixa de texto e clique em *Ativar*. PDMDeploy obtém sua configuração de forma segura de nossos servidores. Sem manipulação de arquivos, sem desbloqueio.

<a id="option-2-customer-configuration-file"></a>
### Opção 2: Ficheiro de Configuração do Cliente

- Clique em *Procure por arquivo .cdg...* e selecione seu arquivo de configuração do cliente.
- Se o arquivo foi baixado da internet, desbloqueie-o primeiro: clique com o botão direito do mouse no arquivo, selecione Propriedades, verifique Desbloquear e clique em OK.

Em ambos os casos você verá uma mensagem de confirmação assim que a configuração for carregada.

> [!NOTE]
> Você também pode configurar o PDMDeploy manualmente através do diálogo *Configurações...* digitando as credenciais você mesmo. Contacte o suporte para ajuda com esta opção.

> [!TIP]
> Se você abrir *Update AddIns...* antes de configurar o PDMDeploy, o gerenciador suplemento mostra o painel de ativação diretamente. Você pode inserir o código de ativação ou navegar para o arquivo `.cdg` bem ali.

<a id="installingupdating-add-ins"></a>
## Instalação/Atualização do Add-ins

- Botão direito do mouse em PDMDeploy em Add-ins na ferramenta Administração e clique em *Atualizar Adicionar...*
- A janela PDMDeploy abre imediatamente e carrega o seu add-ins no fundo. A barra de status na parte inferior mostra o progresso: primeiro seu add-ins instalado localmente são lidos do cofre, em seguida, o add-ins disponível são recuperados do servidor.

![PDMDeploy Add-in Manager](https://pdmpublisher.com/help/images/pdmdeploy31_manager.png)

A janela mostra uma linha por adição:

- Estado: *Não instalado*, *Atualizar disponível*, ou *Atualizar* de relance.
- Versão local: a versão atualmente instalada em seu cofre.
- Versão do servidor: um lista suspensa com cada versão disponível no servidor. A versão mais nova é pré-selecionada.

Para instalar ou atualizar:

1. Verifique os suplemento(s) que você gostaria de instalar. A caixa de seleção na linha do cabeçalho seleciona todos os add-ins ao mesmo tempo.
2. Escolha a(s) versão(s) da coluna de versão do servidor se precisar de algo diferente do mais recente.
3. Clique em * Instalar selecionado*.

PDMDeploy perguntará se você deseja reiniciar o PDM. Isso pode ser necessário após cada atualização adicional.

> [!NOTE]
> Por favor, aguarde alguns momentos após clicar em *Instalar selecionado*. Cada suplemento é baixado, desbloqueado e adicionado ao cofre. Esta operação inclui suprimir algumas caixas de diálogo PDM. A barra de status mostra qual suplemento está sendo instalado atualmente.
