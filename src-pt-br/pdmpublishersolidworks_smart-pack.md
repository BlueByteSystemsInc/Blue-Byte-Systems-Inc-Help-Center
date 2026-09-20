---
title: "Clone Tree | PDMPublisher for SOLIDWORKS"
description: "Copie documentos SOLIDWORKS e referências com nomes de arquivos, destinos, manipulação de revisão PDM, arquivos companheiros, perfis e saída ZIP."
ms.date: 09/15/2026
ms.topic: how-to
---

# Clone Tree

Clone Tree constrói um plano de cópia para o documento ativo e suas referências. Cada arquivo incluído pode ter seu próprio nome e destino, enquanto as referências SOLIDWORKS são atualizadas para os arquivos copiados.

![Clone Tree árvore de arquivos com nomes de arquivos e pastas de destino](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/CloneTree/CloneTree_Main_window_Default_Light_100.png)
Abra **PDMPublisher > Settings > Clone Tree** para selecionar o número de série PDM compartilhado e manter perfis de comando.

![Clone Tree profile settings](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Clone_Tree_Default_Light_100.png)

<a id="create-a-package"></a>
## Criar um Pacote

1. Salve o documento SOLIDWORKS ativo.
2. Selecione **PDMPublisher > Clone Tree**.
3. Verifique os arquivos para copiar e desmarcar arquivos para excluir.
4. Defina os valores de **New name** e **Destination folder**. Use o menu de cada célula para os valores do documento, propriedades, valores da pasta, valores PDM, números de série ou fórmulas.
5. Opcionalmente incluir os arquivos STEP, PDF ou DXF e configurar a saída ZIP.
6. Selecione **Copy**.

Os ficheiros excluídos mantêm as suas referências originais. Pesquisar e digitar os filtros alteram apenas as linhas visíveis; todos os arquivos verificados permanecem no plano de cópia.

<a id="copy-options"></a>
## Opções de Cópia

| Opção | Comportamento |
| --- | --- |
| Ignorar os componentes da Caixa de Ferramentas | Deixa componentes Toolbox fora do conjunto de documentos copiados. |
| Copiar a última revisão do PDM para o destino | Copia a última revisão atribuída diretamente a cada destino. Ele não atualiza o cache de cofre local ou recarregar SOLIDWORKS. Os ficheiros Vault sem uma revisão atribuída não podem usar esta opção. |
| Versão | Em SOLIDWORKS 2024 e mais recente, salva na versão atual ou qualquer uma das duas versões anteriores. |
| Arquivos de acompanhantes | Inclui arquivos STEP/STP, PDF ou DXF existentes para um documento. |
| Arquivo ZIP | Cria um ZIP após as cópias completas do arquivo, usando seu próprio nome de arquivo e destino. |
| Número de série PDM | Atribui um número reservado por linha incluída e reutiliza-o quando o nome do ficheiro e a pasta necessitam desse número. |

<a id="profiles-and-rules"></a>
## Perfis e Regras

Os perfis Clone Tree preservam destinos, preferência do Toolbox, formatos de companheiro, comportamento de última revisão, configurações ZIP, sobreposições por arquivo e regras ordenadas. As regras podem definir um nome de ficheiro ou exportar a localização quando as suas condições corresponderem; as regras posteriores podem substituir os valores anteriores.

Gerencie perfis em **Settings > Clone Tree**, ou selecione a engrenagem na janela Clone Tree. A seta ao lado do comando CommandManager abre um perfil salvo diretamente.

Um perfil pode executar um perfil Property Doctor após a cópia. Esse processamento se aplica a arquivos copiados e requer arquivos compatíveis com a versão atual do SOLIDWORKS.

<a id="validation"></a>
## Validação

Antes de copiar, PDMPublisher rejeita alvos duplicados, sobrescrever fontes, alterar extensões SOLIDWORKS, alvos existentes, expressões de destino não resolvidas e dados de revisão PDM não disponíveis. Reveja novamente a grade se as referências mudarem enquanto a janela estiver aberta.
