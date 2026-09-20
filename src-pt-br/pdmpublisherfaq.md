---
title: "FAQ | PDMPublisher | SOLIDWORKS PDM"
description: "PDMPublisher perguntas frequentes."
ms.date: 06/19/2026
ms.topic: conceptual
---
# Perguntas Frequentes

<a id="features"></a>
## Características

| Pergunta | Resposta |
|---|---|
| Estou a receber alguns erros relacionados com o layout da conta de materiais. | Em versões recentes, começamos a usar o PDM BOM em vez do SOLIDWORKS BOM. PDMPublisher irá alavancar o primeiro layout BOM em seu cofre para calcular quantidades (Você pode definir qual layout usar na aba Opções). O layout deve incluir uma coluna <RefCount> (Quantidade) e uma coluna <Configuration> (Nome da configuração). |
| Como é que PDMPublisher calcula as quantidades BOM? | PDMPublisher cria uma Conta de Materiais em memória a partir da montagem de topo. Ignora todos os componentes suprimidos, virtuais, envelopes e que são excluídos da Lei de Materiais. A maioria destas configurações vem da janela de propriedades do componente. |
| Como funcionam as condições? | As condições são avaliadas para a referência encontrada no PDM. Se alguma das condições avaliar o true, a referência é adicionada à fila de processamento. |
| Não consigo ver os ficheiros exportados! | Certifique-se de que o local de exportação em algum lugar em seu cofre (ou fora do seu cofre) onde você tem as permissões de fluxo de trabalho e pasta para adicionar e editar arquivos. **The vault's root folder** é tipicamente uma pasta que **is locked** para adicionar ou editar arquivos por administradores PDM. |
| Criei uma tarefa. Como posso lançá-lo?  | As tarefas PDMPublisher podem ser anexadas a uma transição de fluxo de trabalho ou acionadas a partir do menu com o botão direito do mouse em um arquivo. Você encontrará suas tarefas criadas sob Tarefas. No menu com o botão direito do mouse, as tarefas usam o nome definido na página de configuração da tarefa. Ver abaixo: <img src="https://pdmpublisher.com/help/images/pdmpublisher_rmb.png"/> |
| Vejo este erro "Não é possível encontrar ou criar a fonte 'Helvetica-Bold'. Alguns caracteres podem não exibir ou imprimir corretamente." quando eu abrir o PDF fundido. | Este erro está relacionado ao seu leitor PDF. Por favor, certifique-se de instalar a fonte apropriada Veja abaixo: <img src="https://pdmpublisher.com/help/images/pdmpublisher_merge.png"/> |



<a id="installation"></a>
## Instalação

|Pergunta|Resposta|
|---|---|
|Não consigo consumir a minha licença.|Make sure your system/firewall allows for connections to be made to httsp://bluebyte.biz on **port 443**. **[Contact](https://bluebyte.biz/contact/)** us if this problem still persists.|
|Estou executando o suplemento na montagem e não está capturando todas as referências.|Certifique-se de que o conjunto e suas referências tenham cópias locais na máquina que executa o suplemento. Você pode fazer isso fazendo um get-latest na montagem e suas referências na máquina que executa a tarefa. Este é um comportamento by-design da Editora PDM.|
|A tarefa é incapaz de verificar no arquivo de log.|This could be related to a number of issues. You may need to make sure the user running the add-in has proper file and folder permissions on the log folder. You also need to make sure that the txt file extension is NOT part of the **[auto-add user setting](https://help.solidworks.com/2017/english/enterprisepdm/admin/idd_page_file_adding.htm)**.|
