---
title: "Creating a New Task | PDMPublisher | SOLIDWORKS PDM"
description: "Crie sua primeira tarefa PDMPublisher na administração SOLIDWORKS PDM."
ms.date: 08/09/2026
ms.topic: conceptual
---

# Configurar sua primeira tarefa PDMPublisher

<p class="bbs-read-time">Tempo de leitura: 2 minutos</p>

> [!NOTE]
> Antes de criar uma tarefa, certifique-se:
> - **PDMPublisher** foi adicionado ao seu cofre.
> - Activaste a tua licença. Ver [Licenciamento](licensespdmpublisher.md).
>
> Após validar a licença e antes de salvar sua primeira tarefa, reveja essas configurações importantes:
> - Selecione o [Template] correto (pdmpublisher-options/template.md). Isso é crítico quando PDMPublisher precisa calcular referências de montagem, configurações ou quantidades.
> - Confirme [Use esta versão do SOLIDWORKS](pdmpublisher-options/use-this-version-of-solidworks.md) aponta para uma versão do SOLIDWORKS instalada no computador host tarefa.
> - Definir uma [Localização de exportação] válida (pdmpublisher-options/export-location.md) e [Nome do arquivo](pdmpublisher-options/filename.md). Evite rastrear backslashes em caminhos de exportação, e use placeholders de nomes de arquivo, como revisão, configuração ou nome de planilha quando um arquivo fonte pode criar múltiplas saídas.
> - Se você precisar de registros de solução de problemas, habilite [Registros de Atividade de Vault](pdmpublisher-options/turn-on-activity-tracking.md) e defina [Pasta de Registro (Somente Vault)](pdmpublisher-options/log-folder-vault-only.md) para `(VaultRootFolder)\Logs\PDMPublisher`. Crie esta pasta manualmente e certifique-se de que o usuário executando a tarefa, ou a conta host da tarefa, pode adicionar arquivos de log lá.

<a id="create-the-task"></a>
## Criar a Tarefa

1. Abra a ferramenta de administração SOLIDWORKS PDM.

2. Botão direito do mouse **Tasks**, em seguida, selecione **New Task...**.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublishernewtask.png" alt="Create a new PDM task" width="300">
</p>

3. Digite um nome único para a tarefa. Use um nome que descreva claramente o que a tarefa exporta, então reveja as notas acima antes de salvar.

4. Na página **Add-in**, escolha **PDMPublisher** a partir da lista **Add-in**.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-addin.png" alt="PDMPublisher selected as the task add-in" width="800">
</p>

5. Clique em **Next**.

6. Na página **Execution Method**, escolha quais computadores podem executar a tarefa.

Esta página vem após a seleção suplemento. Apenas os computadores verificados nesta lista são considerados máquinas de execução de tarefas.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-execution-method.png" alt="PDMPublisher task execution method" width="800">
</p>

Se a lista de computador estiver vazia, clique com o botão direito do mouse no ícone SOLIDWORKS PDM na bandeja do Windows e abra **Task Host Configuration**.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmicontry.png" alt="SOLIDWORKS PDM tray icon" width="300">
</p>

7. Em **Task Host Configuration**, permita **PDMPublisher** no computador host tarefa.

<p align="center">
<img src="https://pdmpublisher.com/help/images/taskhostconfiguration.png" alt="Permit PDMPublisher in Task Host Configuration" width="800">
</p>

8. Configure a página **Scheduling** se SOLIDWORKS PDM deve iniciar esta tarefa automaticamente. Veja [Itens agendados](scheduleditems.md) quando a tarefa agendada deve processar uma lista salva de arquivos.

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduling.png" alt="SOLIDWORKS PDM task scheduling page" width="800">
</p>

A programação é a própria estrutura de agendamento da SOLIDWORKS PDM. Ele controla quando a tarefa começa.

9. Reveja as páginas de configuração PDMPublisher listadas abaixo.

10. Clique em **OK** para salvar a tarefa.

A tarefa aparece no File Explorer sob **Tasks** no menu com o botão direito do mouse.

Se o menu **Tasks** não aparecer, veja [Por que o menu Tarefas está faltando?](pdmpublisher-task-menu-missing.md).

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublishertaskrmb.png" alt="PDMPublisher task in the File Explorer right-click menu" width="800">
</p>

<a id="setup-pages"></a>
## Configurar Páginas

Use estas páginas para configurar o que o PDMPublisher exporta e como ele lida com cada arquivo.

| Página | Usar esta página para |
| --- | --- |
| [Opções](options.md) | Configurar formatos de arquivo, caminhos de saída, nomes de arquivos, versão SOLIDWORKS, modelos, logs e outros comportamentos de exportação. |
| [Anotações](annotations.md) | Adicione notas ou marcas de água que podem incluir texto fixo, variáveis PDM e propriedades SOLIDWORKS. |
| [Condições](conditions.md) | Decida quais arquivos referenciados devem ser incluídos no processamento de conjuntos. |
| [Itens agendados](scheduleditems.md) | Defina arquivos que devem ser processados quando a tarefa for executada sem arquivos selecionados. |

<a id="options"></a>
### Opções

![PDMPublisher Página de configuração de opções](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-options.png)
Reveja os itens de configuração recomendados em [Options Task Page](options.md), especialmente local de exportação, nome do arquivo, formatos de arquivo, versão SOLIDWORKS, modelo e rastreamento de atividade.

<a id="annotations"></a>
### Anotações

![PDMPublisher Página de configuração de anotações](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-annotations.png)
A tabela de anotações é o espaço de trabalho onde você cria e gerencia notas ou marcas de água que serão colocadas em PDFs exportados. Cada anotação pode ter seu próprio texto, formatação, posição, regra da folha e estado ativo.

<a id="conditions"></a>
### Condições

![PDMPublisher Página de configuração das condições](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-conditions.png)
Use condições para controlar quais arquivos referenciados são processados ao publicar conjuntos.

<a id="scheduled-items"></a>
### Itens Agendados

![PDMPublisher Scheduled Items setup page](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-setup-scheduled-items.png)

Usar itens agendados quando esta tarefa deve processar sempre uma lista salva de arquivos. Itens agendados sobrepõem outros arquivos selecionados.
