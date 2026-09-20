---
title: "Importar, Exportar e Reiniciar as Configurações do PDMPublisher para SOLIDWORKS"
description: "Faça backup, compartilhe, restaure ou redefina o PDMPublisher completo para a configuração SOLIDWORKS."
ms.date: 09/16/2026
ms.topic: how-to
---

# Importar, Exportar e Reiniciar Configurações

Use os comandos na parte inferior do **PDMPublisher > Settings** para transferir ou restaurar a configuração completa de adição.

![Repor, Importar e Exportar comandos na parte inferior de Configurações](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_File_Locations_Default_Light_100.png)
| Comando | Âmbito de aplicação |
| --- | --- |
| **Reset** | Restaura os padrões da página de configurações atualmente selecionada. Selecione **OK** para manter o reset. |
| **Export all settings to File...** | Escreve um pacote de configuração completo para backup ou transferência offline. |
| **Share complete settings using PIN...** | Envia um pacote completo e retorna um PIN de seis dígitos. |
| **Import all settings from File...** | Valida e aplica um pacote do disco. |
| **Import complete settings using PIN...** | Downloads, valida e aplica um pacote compartilhado com PIN. |

<a id="recommended-transfer-workflow"></a>
## Fluxo de trabalho de transferência recomendado

1. No computador fonte, exportar todas as configurações para um arquivo e mantê-lo como uma cópia de recuperação.
2. Exportar para um arquivo ou criar um PIN para o destinatário pretendido.
3. No computador de destino, importar o arquivo ou inserir o PIN.
4. Reveja a seleção de cofres, credenciais de código externo, locais de arquivos locais e caminhos de saída.
5. Abra cada perfil importante e execute um documento de teste controlado.

O pacote completo inclui perfis de utilitários, perfis de publicação, anotações, condições, fórmulas, locais de arquivos e definições de código externo. São excluídos os segredos SQL Server. Caminhos locais e nomes de cofres podem não existir em outro computador.

PDMPublisher valida as seções importadas e cria um backup local cronometrado antes de substituir as configurações. Se a aplicação de uma seção falhar, ela tenta restaurar a configuração anterior.

> [!WARNING]
> Qualquer pessoa com um PIN ativo pode recuperar sua configuração até que o PIN expire. Não use o perfil ou configurações de compartilhamento de senhas ou texto confidencial de consulta.

Para mover apenas um perfil Publish, use [Publish Profiles](pdmpublishersolidworks_profiles.md#move-profiles-between-computers).
