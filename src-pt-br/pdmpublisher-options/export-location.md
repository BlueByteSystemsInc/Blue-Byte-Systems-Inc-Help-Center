---
title: "Exportar Localização PDMPublisher Opções"
description: "Configurar onde a tarefa PDMPublisher PDM ou SOLIDWORKS suplemento escreve arquivos exportados."
ms.date: 08/13/2026
ms.topic: reference
---

# Exportar Localização

![Export Location setting in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

Define a pasta onde PDMPublisher escreve arquivos gerados. O local de exportação pode apontar para uma pasta dentro do cofre, um caminho relativo, um caminho UNC/servidor ou uma pasta fora do cofre.

> [!NOTE]
> Esta configuração é compartilhada pelo **PDM task** e **SOLIDWORKS add-in**. A tarefa PDM pode usar placeholders de cofre e operações de cofre. O suplemento avalia o caminho do documento atualmente aberto no SOLIDWORKS e o perfil selecionado.

<a id="path-types"></a>
## Tipos de Caminho

PDMPublisher aceita vários estilos de caminho:

| Tipo de localização | Exemplo | Usar quando |
|---|---|---|
| Caminho do cofre (tarefa PDM) | `(VaultRootFolder)\Released PDFs` | Os arquivos exportados devem ser adicionados de volta ao cofre. Use o placeholder `VaultRootFolder` do menu `>...`. |
| Caminho relativo | `Exports\PDF` | O destino deve ser baseado no arquivo fonte ou contexto de publicação atual. |
| UNC/caminho do servidor | `\\server\engineering\exports` | A saída deve ser escrita em uma localização de rede compartilhada. |
| Fora do cofre | `D:\Exports\PDMPublisher` | Os arquivos exportados devem ficar fora do PDM. |

> [!IMPORTANT]
> Se a localização estiver dentro do cofre, o usuário da tarefa PDM ou o usuário que publica a partir do suplemento deve ter permissão para criar, verificar, verificar e sobrescrever arquivos nessa pasta.

Se a pasta de exportação não existe, PDMPublisher cria-o antes de salvar o arquivo exportado.

`(VaultRootFolder)` é a maneira preferida de construir um caminho de cofre na tarefa PDM porque ele resolve para a raiz de cofre local no computador de tarefa.

<a id="browse-button"></a>
## Botão de Navegação

O botão navegar simplesmente permite selecionar uma localização de pasta estática e escreve esse caminho de pasta em **Export Location**.

Use- o quando a tarefa deve sempre exportar para a mesma pasta fixa. Se o caminho precisa mudar com base no arquivo, revisão, estado ou pasta, use placeholders do menu `>...` em vez disso.

<a id="placeholders"></a>
## Posições

As entradas azuis no campo de localização de exportação são placeholders. Um placeholder é um valor dinâmico que PDMPublisher resolve quando a publicação começa.

Por exemplo:

`(TopAssemblyFolder)\Exports\(State)\(Revision)`

Se o conjunto superior estiver em:

`C:\PDMVault\Projects\1001`

e o estado do arquivo é `Released` com revisão `B`, PDMPublisher resolve o local de exportação para:

`C:\PDMVault\Projects\1001\Exports\Released\B`

`(TopAssemblyFolder)` significa a pasta do arquivo de nível superior sendo processado. Para a tarefa PDM, esse é o arquivo que lançou a tarefa. Para o suplemento SOLIDWORKS, é o documento atualmente aberto no SOLIDWORKS. Se o arquivo de nível superior é uma única parte ou desenho, PDMPublisher usa a pasta desse arquivo.

Por exemplo, se a tarefa for executada:

`C:\PDMVault\Projects\1001\Bracket.SLDPRT`

Então:

`(TopAssemblyFolder)\Exports`

resolve:

`C:\PDMVault\Projects\1001\Exports`

Os placeholders são úteis quando a mesma tarefa ou perfil suplemento deve gravar arquivos para diferentes pastas, dependendo do arquivo sendo processado. Você pode usar valores expostos pelo menu `>...`, como pasta fonte, nome do arquivo, configuração ou propriedades personalizadas SOLIDWORKS. A tarefa PDM também pode expor valores de vault, como revisão, estado, fluxo de trabalho e variáveis de PDM.

Use os placeholders **File Number** e **File Number Range** para organizar exportações usando a primeira sequência numérica em um nome de arquivo fonte. Você pode extrair seus primeiros 3, 4, 5, ou 6 dígitos ou criar um intervalo a partir desse prefixo. Veja [Número de Arquivo Placeholders](../pdmpublisherspecialvariable.md#file-number-placeholders) para todos os placeholders disponíveis, exemplos e comportamento de retrocesso.

> [!TIP]
> Use placeholders para configurações de tarefas repetitivas e perfis adicionais. Caminhos com código rígido são bons para uma pasta de exportação fixa, mas os placeholders fazem o caminho se adaptar a cada arquivo fonte.

Para a tarefa PDM, se o caminho usa variáveis armazenadas na aba `@` do arquivo, veja [Use @ Tab para Avaliar Caminhos](use-at-tab-to-evaluate-paths.md). Esta opção somente de tarefa não é mostrada no suplemento SOLIDWORKS.

<a id="extension-specific-locations"></a>
## Localização Específica da Extensão

Use **Customize Location** quando diferentes formatos de arquivo precisam de pastas de saída diferentes.

![Locations by file format dialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Locations_by_file_format_Default_Light_100.png)

A janela usa os mesmos nomes de formato e ícones de tipo de arquivo descritos na página [Formatos de Arquivo](file-formats.md). Cada linha permite ativar uma localização personalizada para esse formato de saída.

Quando uma localização específica de extensão está habilitada para um formato de arquivo, ela substitui o **Export Location** principal para esse formato apenas.

Por exemplo:

| Formato | Localização Principal da Exportação | Localização específica da extensão | Pasta de saída final |
|---|---|---|---|
| PDF | `C:\PDMVault\Exports` | `C:\PDMVault\Exports\PDF` | `C:\PDMVault\Exports\PDF` |
| DXF | `C:\PDMVault\Exports` | `\\server\laser\DXF` | `\\server\laser\DXF` |
| STEP | `C:\PDMVault\Exports` | Não habilitado | `C:\PDMVault\Exports` |

Apenas os formatos assinalados/ habilitados utilizam a sua localização personalizada. Qualquer formato sem um sobreposição específica de extensão continua a usar o **Export Location** principal.

> [!NOTE]
> O registro de atividade de tarefa PDM e a guia SOLIDWORKS suplemento **Logs** identificam caminhos personalizados usados por locais específicos de extensão.

> [!WARNING]
> Não termine a localização de exportação ou a localização específica da extensão com um retrocesso.
