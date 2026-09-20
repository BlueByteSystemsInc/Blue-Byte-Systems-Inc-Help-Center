---
title: "SQL Query Placeholders - Anotações PDMPublisher"
description: "Recuperar texto de anotação de um banco de dados SQL usando placeholders de consulta consciente de arquivos."
ms.date: 08/13/2026
ms.topic: how-to
---

# Locais de Consulta SQL

Use um placeholder de consulta SQL quando o texto de anotação deve vir de um banco de dados SQL. PDMPublisher substitui o placeholder do arquivo na consulta, executa a consulta e usa o valor retornado na anotação.

No suplemento SOLIDWORKS, o placeholder é avaliado para o documento ativo ou referência atualmente em publicação.

![Editar diálogo SQL Query mostrando a string de conexão, consulta, saída e placeholders SQL](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/annotations-sql-query-placeholder.png)
<a id="configure-the-query"></a>
## Configurar a Consulta

1. Adicione ou selecione a anotação.
2. Adicione um valor SQL à anotação e selecione o ícone lápis para abrir **Edit SQL Query**.
3. Digite o texto de conexão SQL Server.
4. Digite uma consulta que inclua o placeholder para o tipo de arquivo que você precisa.
5. Selecione **Test Query** e confirme que o valor esperado aparece em **Output**.

Por exemplo, uma string de conexão autenticada pelo Windows pode ser assim:

```text
Server=localhost;Database=TestPDMSql;Trusted_Connection=True;
```

<a id="available-placeholders"></a>
## Posições Disponíveis

| Posicionador | Valor utilizado na consulta |
| --- | --- |
| `($SQL-Filename)` | O nome do ficheiro a ser processado. |
| `($SQL-Part)` | O nome do arquivo mudou para a extensão `.sldprt`. |
| `($SQL-Assembly)` | O nome do arquivo mudou para a extensão `.sldasm`. |
| `($SQL-Drawing)` | O nome do arquivo mudou para a extensão `.slddrw`. |

Escolha o placeholder que corresponde ao registro armazenado em seu banco de dados. Por exemplo, use `($SQL-Assembly)` quando a linha do banco de dados for identificada pelo nome do arquivo de montagem, mesmo quando a anotação estiver sendo adicionada a um desenho exportado.

<a id="filename-example"></a>
## Exemplo do Nome do Ficheiro

A seguinte pesquisa procura um número de projeto pelo nome atual:

```sql
SELECT ProjectNumber
FROM FileProperties
WHERE FileName = '($SQL-Filename)'
```

Se o nome do arquivo é `Bracket.sldprt`, PDMPublisher avalia a consulta como:

```sql
SELECT ProjectNumber
FROM FileProperties
WHERE FileName = 'Bracket.sldprt'
```

<a id="assembly-example"></a>
## Exemplo de Montagem

A seguinte consulta busca o material usando o nome do arquivo de montagem:

```sql
SELECT Material
FROM PartProperties
WHERE FileName = '($SQL-Assembly)'
```

Ao testar esta consulta na janela, substitua o placeholder por um nome de arquivo de montagem real porque o teste não tem o contexto do arquivo fornecido por uma tarefa de publicação. Por exemplo:

```sql
SELECT Material
FROM PartProperties
WHERE FileName = 'Full_Grill_Assembly.sldasm'
```

A área **Output** mostra o resultado do teste. Confirme que a consulta retorna o texto que deseja exibido na anotação antes de salvar o perfil Publicar.

> [!WARNING]
> Use uma conta de banco de dados com apenas as permissões necessárias para ler os dados de anotação. Se a string de conexão contém credenciais, restrinja o acesso aos perfis adicionais SOLIDWORKS exportados.
