---
title: "Save As New | PDMPublisher for SOLIDWORKS"
description: "Salve uma cópia SOLIDWORKS nativa com nomes reutilizáveis, destinos, números de série PDM, desenhos associados e ações pós-salvamento."
ms.date: 09/15/2026
ms.topic: how-to
---

# Save As New

**Save As New** cria um documento nativo separado SOLIDWORKS sem renomear o documento fonte ou seus modelos referenciados. Abra o **PDMPublisher > Settings > Save As New** para configurar o comando.

![Save As New nome do arquivo, destino, PDM, propriedade e configurações macro](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Save_As_New_Default_Light_100.png)
<a id="configure-the-new-file"></a>
## Configurar o Novo Ficheiro

1. Digite um modelo **Filename**. A extensão de origem é adicionada automaticamente.
2. Opcionalmente habilite **Save the new to this destination** e digite um modelo de pasta ou pasta existente.
3. Habilite **Show Save As dialog** quando o usuário deve confirmar ou alterar o alvo cada vez.
4. Selecione todas as opções pós-salvar e, em seguida, selecione **OK**.
5. Abra um documento e selecione **Save As New**, ou use a seta ao lado do comando para escolher um perfil salvo.

Digite `{` em um nome de arquivo ou editor de destino para inserir um valor do documento, propriedade, valor da pasta, valor PDM, ou **Prompt user** token. Um valor solicitado afeta apenas o caminho de saída; ele não muda as propriedades do documento.

<a id="options"></a>
## Opções

| Opção | Comportamento |
| --- | --- |
| Usar este número de série | Reserva um valor do gerador de números de série PDM selecionado e o torna disponível para o nome ou modelo de destino. |
| Verificar automaticamente para PDM | Adiciona e verifica no modelo salvo e desenho associado. O destino deve estar dentro do cofre seleccionado. |
| Reconstruir antes de gravar | Reconstrui a configuração ativa, incluindo subconjuntos de montagem, e pára se a reconstrução falhar. |
| Abre a nova cópia após gravar | Abre a cópia gravada e torna- a no documento activo. |
| Adicionar as dimensões da caixa delimitadora calculadas | Escreve `Bounding Box Length`, `Bounding Box Width` e `Bounding Box Height` em milímetros para a configuração ativa de uma peça ou montagem. |
| Trazer desenho associado | Copia um desenho aberto ou com o mesmo nome ao lado da nova peça ou montagem e atualiza sua referência de modelo. |
| Executar macro após salvar | Executa o método macro selecionado na nova cópia antes do check-in automático do PDM. A macro deve salvar suas próprias alterações. |

> [!NOTE]
> A limpeza do Property Doctor é visível no modelo de configurações atual, mas ainda não está habilitada para o Save As New. Use Property Doctor separadamente até que a automação seja liberada.

<a id="profiles"></a>
## Perfis

A área **Save As New profiles** armazena configurações de comando reutilizáveis. Adicionar ou editar um perfil em Configurações, em seguida, use a seta ao lado do **Save As New** no CommandManager para executá-lo. O primeiro perfil é tratado como o padrão.

<a id="validation-and-file-safety"></a>
## Validação e Segurança de Arquivos

Save As New rejeita um nome de arquivo inalterado, um arquivo de destino existente, uma extensão SOLIDWORKS diferente, um destino indisponível e um nome de arquivo já presente no cofre selecionado. Se o modelo for salvo, mas uma macro posterior ou o check-in PDM falhar, o erro explica que os novos arquivos já existem e devem ser inspecionados.
