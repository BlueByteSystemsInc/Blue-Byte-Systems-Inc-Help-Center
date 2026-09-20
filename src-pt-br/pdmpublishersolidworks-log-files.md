---
title: "Salvar e limpar logs PDMPublisher para SOLIDWORKS"
description: "Salve o registro completo da sessão do PDMPublisher em um arquivo ou limpe a lista de registro na memória."
ms.date: 09/16/2026
ms.topic: how-to
---

# Salvar e Limpar Registros

Use os comandos na janela **PDMPublisher > Logs** para preservar um registro de trabalho ou começar com uma lista de registros vazia.

![Copy, save, clear, and close controls in the Publishing Logs window](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/logs-errors-filter-20260908.png)

<a id="save-logs"></a>
## Salvar registros

1. Selecione **Save...**.
2. Escolha um destino e nome de arquivo.
3. Salvar como um arquivo `.log` ou `.txt`.

PDMPublisher sugere um nome de arquivo contendo o nome do produto, nome do computador e identificador de sessão de trabalho. O arquivo salvo contém todos os registros atuais, incluindo itens ocultos pelo filtro de pesquisa.

Salve o log imediatamente após o trabalho que você precisa investigar, então entradas não relacionadas de trabalhos posteriores não são misturadas no registro de suporte.

<a id="clear-logs"></a>
## Limpar os Registos

Selecione **Clear** para remover os itens de memória atuais. Use **Copy selected** ou **Copy all** quando você só precisa colar entradas em uma mensagem em vez de salvar um arquivo.

Limpar a janela não apaga arquivos de log que já foram salvos no disco. Salve tudo que você precisa antes de selecionar **Clear** porque as entradas de memória não podem ser restauradas da janela.

> [!TIP]
> Incluir o log salvo e o nome do arquivo de origem ao contactar o `support@bluebytesystemsinc.zohodesk.com`.
