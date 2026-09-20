---
title: "Comandos PDMPublisher para SOLIDWORKS"
description: "Encontre todos os comandos PDMPublisher no SOLIDWORKS CommandManager e entenda quais tipos de documentos suportam."
ms.date: 09/25/2026
ms.topic: overview
---

# Comandos PDMPublisher

Os comandos PDMPublisher estão disponíveis na guia **PDMPublisher** no menu SOLIDWORKS CommandManager e no menu **Tools > PDMPublisher**. O painel de tarefas agora é um navegador de documentação; os comandos de publicação e utilitário não são mais executados dentro do painel.

![PDMPublisher CommandManager e painel de tarefas de ajuda em SOLIDWORKS 2026](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/commandmanager-help-pane-20260908.png)
A imagem mostra o layout atual do CommandManager no SOLIDWORKS 2026 SP3.2. Os comandos são executados no documento SOLIDWORKS ativo. O painel de tarefas de Ajuda à direita fornece links para a documentação e não executa os comandos.

| Grupo | Comando | Objecto |
| --- | --- | --- |
| Utilitários | [Save As New](pdmpublishersolidworks_save-as-new.md) | Salve o documento ativo como um arquivo SOLIDWORKS nativo separado usando um nome reutilizável e perfil de destino. |
| Utilitários | [Property Doctor](pdmpublishersolidworks_property-doctor.md) | Revise e edite propriedades personalizadas, específicas para configuração e lista de recortes em um documento e suas referências. |
| Utilitários | [Traduzir](pdmpublishersolidworks_translate.md) | Reservado para um futuro fluxo de trabalho de tradução. Ainda não está disponível. |
| Utilitários | [Clone Tree](pdmpublishersolidworks_smart-pack.md) | Copie um documento definido com nomes de arquivos e destinos, arquivos companheiros opcionais, manipulação de revisão PDM e saída ZIP. |
| Publicação | [Publicar](pdmpublishersolidworks-publish.md) | Configurar e executar uma tarefa de publicação para o documento ativo. |
| Publicação | [Anotações](pdmpublishersolidworks_annotations.md) | Edite as anotações armazenadas em um perfil de publicação. |
| Publicação | [Condições](conditions_solidworks.md) | Edite as condições armazenadas em um perfil de publicação. |
| Publicação | [Logs](pdmpublishersolidworks_logs.md) | Reveja mensagens de publicação e erros. |
| Configurações | [Configurações](pdmpublishersolidworks_settings.md) | Configure cada utilitário, publicação e configuração de recursos compartilhados a partir de uma janela pesquisável. |
| Configurações | [Chave licenca](pdmpublishersolidworks_license.md) | Abra a ativação e desativação da licença adicional SOLIDWORKS. |
| Atualizações | Verificar as actualizações | Verifique se está disponível uma compilação PDMPublisher mais recente. |
| Atualizações | Informação da versão | Abra o produto, suporte, informações legais e versão. |

<a id="commandmanager-controls"></a>
## Controles CommandManager

| Controlo | O que acontece quando selecionado | Menu Seta |
| --- | --- | --- |
| **Save As New** | Abre o fluxo de trabalho Save As New para a parte ativa, montagem ou desenho. | Seleciona um perfil Save As New salvo antes de abrir o fluxo de trabalho. |
| **Property Doctor** | Abre uma grade de propriedades para o documento ativo e referências suportadas. | Seleciona um perfil Property Doctor salvo. |
| **Translate** | Atualmente desativado porque o fluxo de trabalho de tradução ainda não está disponível. | Nenhuma. |
| **Clone Tree** | Abre o fluxo de trabalho de cópia/pacote para o conjunto de documentos ativos. | Seleciona um perfil Clone Tree salvo. |
| **Publish** | Abre ou executa o fluxo de trabalho de publicação com o perfil Publish ativo. | Selecciona um perfil de publicação gravado. |
| **Annotations** | Edita anotações no perfil de publicação ativo. | Nenhuma. |
| **Conditions** | Edita as condições no perfil de publicação ativo. | Nenhuma. |
| **Logs** | Abre o visualizador de logs PDMPublisher. | Nenhuma. |
| **Settings** | Abre a janela de configuração pesquisável. | Nenhuma. |
| **License Key** | Abre ativação e desativação da licença. | Nenhuma. |

A área de atualização à direita informa se a compilação instalada está atual. Quando uma atualização estiver disponível, use o comando de atualização exibido e feche o SOLIDWORKS antes de instalar o MSI.

<a id="profile-drop-downs"></a>
## Deslocamento do Perfil

A seta ao lado de **Save As New**, **Property Doctor**, **Clone Tree** e **Publish** lista os perfis salvos para esse comando. Selecione **Profile: Default** para usar as configurações padrão atuais, ou selecione um perfil nomeado para começar com essa configuração.

Para um componente selecionado em um conjunto, o menu do botão direito também expõe **Property Doctor** e os perfis disponíveis **Save As New**.

<a id="when-a-command-is-available"></a>
## Quando um comando está disponível

Os comandos do documento requerem uma parte ativa, montagem ou desenho. Salve o documento ativo antes de usar fluxos de trabalho que devem resolver caminhos ou referências de arquivos. Property Doctor e Clone Tree podem esperar enquanto SOLIDWORKS termina de carregar referências; alterar o documento ativo durante essa preparação cancela a operação.

> [!NOTE]
> A guia **PDMPublisher** CommandManager é recriada para peças, conjuntos e desenhos. Se a aba estiver escondida, habilite o suplemento e clique com o botão direito do mouse na área da aba CommandManager para mostrar **PDMPublisher**.
