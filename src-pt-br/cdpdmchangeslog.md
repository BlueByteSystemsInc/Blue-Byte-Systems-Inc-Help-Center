---
title: "PDMDeploy Change Log – Atualizações de recursos, melhorias e correções"
description: "Veja o registro de alterações PDMDeploy com atualizações detalhadas de recursos, melhorias, correções de bugs e melhorias em todas as versões."
ms.date: 07/04/2026
ms.topic: conceptual
---

# PDMDeploy Change Log

<a id="34"></a>
## 34
- Erro corrigido relacionado às permissões de nós de registro.

<a id="31"></a>
## 31
*Reprojetado códigos de interface e ativação *

- Nova interface escura através do gerenciador suplemento, da janela de configuração e da janela de configurações.
- Códigos de ativação: configure PDMDeploy digitando o código de seu email de boas-vindas, sem mais arquivos de configuração por e-mail. O arquivo de configuração do cliente `.cdg` permanece totalmente suportado como um backback. O comando do menu é agora chamado *Load Customer Configuration (Código de Ativação ou Arquivo)...*
- Melhorias no gerenciador adicional:
  - A janela abre instantaneamente e carrega no fundo. A janela de bloqueio "Por favor aguarde" desapareceu. Uma barra de status mostra o progresso ao vivo (lendo o add-ins instalado e carregando do servidor).
  - Nova coluna de status: *Não instalado*, *Atualizar disponível*, ou *Atualizar* de relance.
  - A versão mais nova do servidor é pré-selecionada para cada suplemento.
  - Caixas de seleção de um clique e uma caixa de seleção-tudo no cabeçalho.
  - Experiência de primeira execução: se o PDMDeploy não estiver configurado, a janela mostra o painel de ativação diretamente em vez de uma lista vazia.
  - O título da janela mostra a versão PDMDeploy e o nome do cofre.
- Correcções de fiabilidade:
  - Limpar mensagens de erro em vez de falhas silenciosas ao carregar configurações ou contactar o servidor.
  - As falhas de registro de COM adicionais são agora detectadas e relatadas (anteriormente elas poderiam falhar silenciosamente), e o registro usa o framework correto de 64 bits.
  - A coluna de versão instalada atualiza imediatamente após uma instalação.

<a id="30"></a>
## 30
*CDPDM O suplemento é agora PDMDeploy*

- O CDPDM foi o **renamed to _PDMDeploy_ in version 30**.
- Atualizações de documentação que refletem o novo nome e versão são planejadas para **March 2026**.
