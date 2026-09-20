---
title: "Configuração do PDM (PDMPublisher) para SOLIDWORKS"
description: "Selecione o cofre SOLIDWORKS PDM local usado pelas funcionalidades PDMPublisher de conhecimento PDM."
ms.date: 09/16/2026
ms.topic: how-to
---

# Configuração do PDM

Abra o **PDMPublisher > Settings > PDM** para selecionar o cofre local do SOLIDWORKS PDM usado pelas configurações do utilitário PDM.

![PDM vault connection settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_PDM_Default_Light_100.png)

| Controlo | O que ele faz |
| --- | --- |
| **Use vault** | Activa o comportamento consciente do PDM para comandos e perfis que o suportam. |
| Lista do cofre | Selecciona o cofre SOLIDWORKS PDM Professional local partilhado pelo PDMPublisher. |

Use esta página quando um perfil Save As New ou Clone Tree usa números de série PDM, revisões, check-in ou outra operação dependente do cofre. O cofre selecionado deve ter uma visão de cofre local no computador e o usuário do Windows atual deve ser capaz de entrar nele.

<a id="before-selecting-a-vault"></a>
## Antes de selecionar um cofre

1. Confirme que a visão de cofre exigida existe localmente.
2. Faça login pelo SOLIDWORKS PDM File Explorer pelo menos uma vez.
3. Abra Configurações e selecione o cofre na página **PDM**.
4. Habilite **Use vault** e selecione o cofre pretendido.
5. Selecione **OK** para salvar a escolha.

O cofre selecionado é usado para números de série, check-in automático, placeholders de pasta raiz Vault e outras ferramentas de conhecimento PDM.

Se nenhum cofre estiver disponível, crie ou conserte a vista do cofre local fora do PDMPublisher. Publicação que usa apenas arquivos SOLIDWORKS locais não requer uma seleção de cofre.

> [!IMPORTANT]
> A seleção de um cofre não move arquivos, registra o usuário ou concede permissões PDM. Ele só identifica o cofre que os controles PDMPublisher conscientes de PDM devem usar.
