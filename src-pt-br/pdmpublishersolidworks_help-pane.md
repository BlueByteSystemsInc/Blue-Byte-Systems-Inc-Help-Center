---
title: "Painel de Tarefas de Ajuda PDMPublisher para SOLIDWORKS"
description: "Use a documentação PDMPublisher incorporada na área de tarefas SOLIDWORKS e solucione o carregamento WebView2."
ms.date: 09/16/2026
ms.topic: how-to
---

# Painel de Tarefas de Ajuda

O painel de tarefas PDMPublisher é um navegador de documentação. Comandos e configurações foram movidos para o SOLIDWORKS **PDMPublisher** CommandManager e menu **Tools > PDMPublisher**.

![PDMPublisher Painel de tarefas de ajuda ao lado do conjunto ativo SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
O painel abre o compacto [PDMPublisher para SOLIDWORKS página de boas-vindas](https://pdmpublisher.com/help/addinwelcome.html). Selecione um link de documentação para navegar dentro do painel. Links que solicitam uma nova janela aberta no navegador padrão.

<a id="help-pane-links"></a>
## Ligações do Painel de Ajuda

| Ligação | Abre |
| --- | --- |
| **Commands** | CommandManager referência de comando e perfil-menu comportamento. |
| **Settings** | Janela de configuração unificada e referência de transferência de configurações. |
| **Save As New** | Fluxo de trabalho de cópia nativa e todos os controles Save As New. |
| **Property Doctor** | Revisão de propriedade, coluna, ação, visualização e aplicação de fluxo de trabalho. |
| **Clone Tree** | Cópia, renomeação, destino, revisão e fluxo de trabalho ZIP. |
| **Publish** | Publicar perfis, configurações de exportação e execução de tarefas. |
| **Full overview** | PDMPublisher completo para SOLIDWORKS visão geral. |
| **Installation** | Instalação de MSI e ativação adicional. |
| **Licensing** | Avaliação, ativação, desativação e gerenciamento de licenças. |
| **Support** | Canal de suporte Blue Byte Systems. |

Use a barra de rolagem do painel de tarefas quando os links inferiores estiverem fora da área visível. O pino e o colapso controlam o cabeçalho do painel de tarefas são controles SOLIDWORKS: o pino mantém o painel aberto, e o colapso retorna espaço para a área gráfica.

<a id="requirements"></a>
## Requisitos

A página incorporada usa Microsoft Edge WebView2 Runtime. As instalações atuais suportadas do Windows normalmente já têm o Evergreen Runtime.

Se o painel relata que a ajuda não pôde ser carregada:

1. Confirme que o computador pode abrir `https://pdmpublisher.com/help/addinwelcome.html` em um navegador.
2. Selecione a mensagem na área para tentar novamente.
3. Instalar ou reparar [Microsoft Edge WebView2 Runtime](https://developer.microsoft.com/microsoft-edge/webview2/) se a mensagem disser que o tempo de execução não está disponível.
4. Reiniciar SOLIDWORKS.

Os comandos de publicação e utilitário permanecem disponíveis se a página de ajuda ou WebView2 não puder carregar.

> [!NOTE]
> A página de boas-vindas incorporada está intencionalmente excluída da indexação do motor de busca. As páginas de documentação ligadas permanecem pesquisáveis.
