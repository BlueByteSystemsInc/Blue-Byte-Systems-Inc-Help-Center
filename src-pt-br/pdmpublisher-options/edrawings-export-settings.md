---
title: "eDrawings Export Settings | PDMPublisher PDM Task"
description: "Compreenda as preferências de medição e propriedade de arquivos aplicadas pela PDMPublisher PDM Task ao exportar arquivos eDrawings."
ms.date: 08/31/2026
ms.topic: reference
---

# Configurações de Exportação do eDrawings

PDMPublisher PDM A tarefa pode criar estes arquivos eDrawings:

| Documento de origem | Saída eDrawings |
| --- | --- |
| SOLIDWORKS (`.sldprt`) | eDrawings Part (`.eprt`) |
| Conjunto SOLIDWORKS (`.sldasm`) | eDrawings Assembly (`.easm`) |
| Desenho SOLIDWORKS (`.slddrw`) | Desenho eDrawings (`.edrw`) |

![eDrawings formats in the File Formats selector](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-dropdown-000-file-formats.png)

Antes de salvar um arquivo eDrawings, PDMPublisher PDM Task aplica estas configurações:

- Permitir a medição no arquivo eDrawings exportado.
- Gravar as propriedades do ficheiro no ficheiro exportado.
- Salvar propriedades de arquivo para cada componente onde a saída contém componentes de montagem.

Isso impede que a exportação de dependendo das preferências eDrawings armazenadas anteriormente para a conta do Windows executando SOLIDWORKS no host da tarefa.

> [!IMPORTANT]
> Esta correcção aplica-se apenas ao **PDMPublisher PDM Task**. Não altera PDMPublisher para SOLIDWORKS.

<a id="task-setup"></a>
## Configuração da Tarefa

Não existe nenhuma nova opção de tarefa para esta correcção. Selecione as extensões eDrawings necessárias em [Formatos de Arquivo](file-formats.md); PDMPublisher aplica as preferências corrigidas automaticamente quando a tarefa cria a saída.

Atualizar PDMPublisher em cada computador que pode executar a tarefa. A conta do Windows em execução da tarefa também deve ser capaz de iniciar a versão configurada do SOLIDWORKS.

Para implantação de tarefas gerenciadas, consulte [Instalar ou Atualizar PDMPublisher com PDMDeploy](../updateaddinswithcdpdm.md).
