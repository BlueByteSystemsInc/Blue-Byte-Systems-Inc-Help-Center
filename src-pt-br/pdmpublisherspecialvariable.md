---
title: "Placeholder Reference | PDMPublisher | SOLIDWORKS PDM"
description: "Consulte cada variável incorporada, PDM e placeholder SQL disponível no PDMPublisher."
ms.date: 08/13/2026
ms.topic: reference
---

# Locais e Variáveis Dinâmicas

Os placeholders permitem que uma tarefa crie caminhos, nomes de arquivos, filtros de folhas, favoritos e anotações de informações sobre o arquivo sendo processado. PDMPublisher avalia cada placeholder na máquina que processa a tarefa e a substitui pelo seu valor atual.

>[!Vídeo https://www.loom.com/embed/377f21c2f0b4423c914fae5767b44a21?sid=02cb620e-f91c-421e-8b25-7576d6e5cb0b]

> [!NOTE]
> Os placeholders disponíveis em um campo são mostrados em seu menu `>...`. Nem todos os campos oferecem todos os lugares.

<a id="built-in-placeholders"></a>
## Posições incorporadas

| Posicionador | Valor | Exemplo |
| --- | --- | --- |
| `(VaultRootFolder)` | Pasta raiz local do cofre PDM atual na máquina de tarefas. | `C:\PDMVault` |
| `(FileNameWithoutExtension)` | Nome do ficheiro de código sem a sua extensão. | `Bracket` |
| `(FileName)` | Nome do ficheiro de origem com caracteres de período removidos. | `BracketSLDPRT` para `Bracket.SLDPRT` |
| `(FileNameNumberRange)` | Nome de arquivo numérico agrupado em um intervalo de 1.000. Nomes não numéricos devolvem o nome do ficheiro sem a sua extensão. | `11000-11999` para `11345.SLDPRT` |
| `(FileNameNumberFirst3Digits)` | Primeiros 3 dígitos da primeira sequência numérica no nome do arquivo. | `123` para `PART-123456-A.SLDPRT` |
| `(FileNameNumberFirst4Digits)` | Os primeiros 4 dígitos da primeira sequência numérica no nome do ficheiro. | `1234` para `PART-123456-A.SLDPRT` |
| `(FileNameNumberFirst5Digits)` | Primeiros 5 dígitos da primeira sequência numérica no nome do arquivo. | `12345` para `PART-123456-A.SLDPRT` |
| `(FileNameNumberFirst6Digits)` | Os primeiros 6 dígitos da primeira sequência numérica no nome do arquivo. | `123456` para `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst3Digits)` | Intervalo calculado a partir dos primeiros 3 dígitos da primeira sequência numérica. | `100-199` para `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst4Digits)` | Intervalo calculado a partir dos primeiros 4 dígitos da primeira sequência numérica. | `1000-1999` para `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst5Digits)` | Intervalo calculado a partir dos primeiros 5 dígitos da primeira sequência numérica. | `10000-19999` para `PART-123456-A.SLDPRT` |
| `(FileNameNumberRangeFirst6Digits)` | Intervalo calculado a partir dos primeiros 6 dígitos da primeira sequência numérica. | `100000-199999` para `PART-123456-A.SLDPRT` |
| `(FileFolder)` | Pasta local que contém o ficheiro actualmente a ser processado. | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyFolder)` | Pasta do arquivo de nível superior que lançou a tarefa. Para uma tarefa lançada em uma parte ou desenho, esta é a pasta do arquivo. | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyName)` | Nome do arquivo de nível superior sem sua extensão. Isso também representa a parte de topo ou desenho quando a tarefa não foi lançada em uma montagem. | `speaker` |
| `(State)` | Estado de fluxo de trabalho PDM atual do arquivo fonte. | `Released` |
| `(ConfigurationName)` | A configuração do SOLIDWORKS está a ser exportada. A configuração do PDM `@` é escrita como `At`. | `Default` ou `Machined` |
| `(Version)` | Número atual da versão do arquivo PDM. | `12` |
| `(Revision)` | Revisão PDM atual. O resultado está vazio se o arquivo não tiver revisão. | `B` |
| `(Date)` | Data atual no host da tarefa, usando seu formato de data curta com `/` substituído por `-`. | `8-13-2026` |
| `(Extension)` | Extensão de arquivo fonte sem o período. | `sldprt` |
| `(TargetExtension)` | Extensão de formato de destino quando a operação atual fornece um formato alvo. | `pdf`, `dxf` ou `step` |
| `(User)` | O usuário do PDM fez login no computador processando a tarefa. | `TaskHostUser` |
| `(LaunchingUser)` | Usuário PDM que lançou a tarefa. Isso pode diferir do `(User)` quando outro computador ou conta o processa. | `jsmith` |
| `(BOMQuantity)` | Quantidade calculada para o arquivo a partir do modelo BOM selecionado e dados de referência de tarefa. | `4` |

<a id="file-and-top-level-values"></a>
### Valores do Ficheiro e do Nível Superior

`(FileFolder)` segue o arquivo individual atualmente sendo exportado. `(TopAssemblyFolder)` e `(TopAssemblyName)` permanecem ligados ao arquivo que lançou a tarefa enquanto PDMPublisher processa suas referências.

Por exemplo, quando `Speaker.SLDASM` lança uma tarefa e PDMPublisher processa `Components\Cone.SLDPRT`:

| Posicionador | Resultado do exemplo |
| --- | --- |
| `(FileFolder)` | `C:\PDMVault\Projects\Speaker\Components` |
| `(TopAssemblyFolder)` | `C:\PDMVault\Projects\Speaker` |
| `(TopAssemblyName)` | `Speaker` |

<a id="configuration-name"></a>
### Nome da Configuração

`(ConfigurationName)` retorna a configuração associada à saída atual. É especialmente importante quando [Convert Multiple Configurations](pdmpublisher-options/convert-multiple-configurations.md) está habilitado porque impede saídas de diferentes configurações de usar o mesmo nome.

O placeholder também pode ser usado por [Sheet Name Pattern](pdmpublisher-options/sheet-name-pattern.md). Para um desenho multi-folha, PDMPublisher avalia-o a partir do modelo associado e corresponde ao nome de configuração resultante contra as folhas de desenho. Se o nome de configuração avaliado não corresponder a nenhuma folha, a versão `2026.08.09` e depois exporta todas as folhas de desenho e registra o retorno.

<a id="bom-quantity"></a>
### Quantidade BOM

`(BOMQuantity)` usa a quantidade calculada a partir do [Template] selecionado (pdmpublisher-options/template.md). O cálculo da quantidade consciente de referência requer os campos de modelo descritos nessa página.

Quando [Pedir ao usuário para selecionar a configuração](pdmpublisher-options/ask-user-to-select-configuration-on-startup.md) está habilitado, a quantidade inserida no lançamento da tarefa multiplica `(BOMQuantity)`. Por exemplo, uma quantidade calculada de `2` e um multiplicador personalizado de `3` produzem `6`. O registro de tarefas registra as informações de quantidade aplicadas.

<a id="source-and-target-extensions"></a>
### Extensões de Origem e Alvo

`(Extension)` descreve o arquivo fonte. Por exemplo, um desenho exportado para PDF tem um valor `(Extension)` de `slddrw`.

`(TargetExtension)` descreve o formato de saída solicitado quando essa operação fornece um. PDMPublisher normalmente adiciona a extensão de saída automaticamente, então não adicione outro período e extensão após este placeholder a menos que o campo de destino especificamente requeira.

<a id="pdm-variable-placeholders"></a>
## Posições Variáveis PDM

As variáveis PDM usam este formato:

`($VariableName)`

O submenu `PDM Variables` lista as variáveis disponíveis no cofre. Selecione uma variável no menu em vez de digitar manualmente para que seu nome e prefixo `$` estejam corretos.

Exemplos:

| Posicionador | Valor do exemplo |
| --- | --- |
| `($Document Number)` | `11345` |
| `($ProjectNumber)` | `P-24017` |
| `($Description)` | `Speaker frame` |

Por padrão, PDMPublisher lê o valor associado com a configuração sendo processada. Activar [Use @ Tab para Avaliar Caminhos](pdmpublisher-options/use-at-tab-to-evaluate-paths.md) quando as variáveis utilizadas pela Localização de Exportação ou Nome de Ficheiro são armazenadas na página `@` do ficheiro.

> [!NOTE]
> Uma variável PDM vazia ou indisponível avalia para um valor vazio. Quando PDMPublisher avalia um desenho associado e seu valor está vazio, ele pode ler a variável da peça ou montagem correspondente.

<a id="sql-placeholders-for-annotations"></a>
## Locais SQL para Anotações

Os placeholders SQL estão disponíveis apenas para anotações de consultas SQL. Eles substituem o token na consulta por um nome de arquivo antes de PDMPublisher executar a consulta.

| Posicionador | Nome do ficheiro fornecido à pesquisa |
| --- | --- |
| `($SQL-Filename)` | Nome atual com sua extensão existente. |
| `($SQL-Part)` | O nome atual foi alterado para `.sldprt`. |
| `($SQL-Assembly)` | O nome atual foi alterado para `.sldasm`. |
| `($SQL-Drawing)` | O nome atual foi alterado para `.slddrw`. |

Para strings de conexão, exemplos de consulta, testes e orientação de segurança, consulte [SQL Consultar Placeholders](pdmpublisher-annotations/sql-query-placeholders.md).

<a id="combined-path-example"></a>
## Exemplo de Caminho Combinado

O seguinte local de exportação combina placeholders built-in e variáveis PDM:

```text
(VaultRootFolder)\Released PDFs\($ProjectNumber)\(FileNameNumberRange)\(State)
```

Para `11345.SLDPRT`, projeto `P-24017`, e estado `Released`, avalia para:

```text
C:\PDMVault\Released PDFs\P-24017\11000-11999\Released
```

<a id="file-name-number-range"></a>
## Intervalo do Número do Nome do Ficheiro

Use `(FileNameNumberRange)` para agrupar arquivos com nomes de arquivos numéricos em pastas ou nomes de saída cobrindo 1.000 números.

PDMPublisher remove a extensão do arquivo, lê o nome do arquivo completo como um número, arredonda para os mil mais próximos, e retorna o início e o fim desse intervalo.

| Nome do ficheiro de origem | Resultado do `(FileNameNumberRange)` |
| --- | --- |
| `1000.SLDPRT` | `1000-1999` |
| `11345.SLDASM` | `11000-11999` |
| `19999.SLDDRW` | `19000-19999` |
| `25001.SLDPRT` | `25000-25999` |

Por exemplo, este local de exportação:

`(VaultRootFolder)\Released PDFs\(FileNameNumberRange)`

avalia para `11345.SLDPRT` como:

`C:\PDMVault\Released PDFs\11000-11999`

> [!IMPORTANT]
> O nome completo do arquivo sem sua extensão deve ser numérico. Um nome de arquivo como `11345-A.SLDPRT`, `PART11345.SLDPRT` ou `Bracket.SLDPRT` não é tratado como um número. Quando o nome do arquivo não é numérico, `(FileNameNumberRange)` retorna o nome do arquivo real sem a extensão.

| Nome do ficheiro de origem | Resultado de retrocesso |
| --- | --- |
| `11345-A.SLDPRT` | `11345-A` |
| `PART11345.SLDPRT` | `PART11345` |
| `Bracket.SLDPRT` | `Bracket` |

Você pode inserir este placeholder no menu `>...` placeholder em campos que suportam valores dinâmicos, incluindo [Localização da exportação](pdmpublisher-options/export-location.md) e [Nome do arquivo](pdmpublisher-options/filename.md).

Para nomes de arquivos abaixo de `1000`, o intervalo começa em zero. Por exemplo, o `245.SLDPRT` retorna o `0-999`. Zeros principais não são preservados: `00123.SLDPRT` também retorna `0-999`.

<a id="file-number-placeholders"></a>
## Número de Ficheiros

Versão `2026.08.08` adiciona placeholders que extraem o início da primeira sequência numérica contínua encontrada em qualquer lugar do nome do arquivo. A extensão do ficheiro não está incluída na pesquisa.

Você pode encontrar estes placeholders sob **File Number** no menu `>...` placeholder.

Para `PART-123456-A.SLDPRT`, a primeira sequência numérica é `123456`:

| Posicionador | Resultado |
| --- | --- |
| `(FileNameNumberFirst3Digits)` | `123` |
| `(FileNameNumberFirst4Digits)` | `1234` |
| `(FileNameNumberFirst5Digits)` | `12345` |
| `(FileNameNumberFirst6Digits)` | `123456` |

Se um nome de arquivo contém mais de uma sequência numérica, PDMPublisher usa o primeiro. Por exemplo, `(FileNameNumberFirst3Digits)` retorna `123` para `PART-123-REV-02.SLDPRT`.

Se a sequência numérica for menor do que o comprimento solicitado, PDMPublisher retorna todos os dígitos disponíveis. Por exemplo, `(FileNameNumberFirst6Digits)` retorna `42` para `PART-42-A.SLDPRT`.

Se o nome do arquivo não contém dígitos, o placeholder retorna o nome completo sem sua extensão. Por exemplo, `(FileNameNumberFirst3Digits)` retorna `Bracket` para `Bracket.SLDPRT`.

<a id="file-number-range-placeholders"></a>
## Ficheiro Número de espaços de intervalo

O menu **File Number Range** contém o placeholder `(FileNameNumberRange)` original e quatro novos placeholders de gama baseados em prefixo.

Os novos placeholders primeiro extrair 3, 4, 5, ou 6 dígitos usando o comportamento **File Number** correspondente. Eles então arredondam esse número até um intervalo baseado no comprimento extraído:

| Posicionador | Resultado para `PART-123456-A.SLDPRT` |
| --- | --- |
| `(FileNameNumberRangeFirst3Digits)` | `100-199` |
| `(FileNameNumberRangeFirst4Digits)` | `1000-1999` |
| `(FileNameNumberRangeFirst5Digits)` | `10000-19999` |
| `(FileNameNumberRangeFirst6Digits)` | `100000-199999` |

Por exemplo, o local de exportação:

`(VaultRootFolder)\Released PDFs\(FileNameNumberRangeFirst4Digits)`

avalia para `PART-123456-A.SLDPRT` como:

`C:\PDMVault\Released PDFs\1000-1999`

Se estiverem disponíveis menos dígitos do que o solicitado, o intervalo usa o número de dígitos que foram encontrados. Por exemplo, `(FileNameNumberRangeFirst6Digits)` retorna `10-19` para `PART-12-A.SLDPRT`.

> [!NOTE]
> Os resultados do intervalo não preservam os zeros principais. Por exemplo, `(FileNameNumberFirst3Digits)` retorna `001` para `PART-001234.SLDPRT`, mas `(FileNameNumberRangeFirst3Digits)` retorna `0-99`.

Se o nome do arquivo não contém sequência numérica, um placeholder intervalo retorna o nome completo sem sua extensão.

<a id="invalid-characters-and-empty-values"></a>
## Caracteres inválidos e valores vazios

Quando placeholders são usados para criar caminhos ou nomes de arquivos, valores contendo caracteres que o Windows não permite em um nome de arquivo são limpos antes da saída ser salva. A tarefa relata a variável que continha um caracter inválido.

Se um valor como Revisão ou uma variável PDM estiver vazio, o placeholder contribui com uma string vazia. Inclua os separadores cuidadosamente para que um valor vazio não deixe um traço ou um nível de pasta extra indesejados.
