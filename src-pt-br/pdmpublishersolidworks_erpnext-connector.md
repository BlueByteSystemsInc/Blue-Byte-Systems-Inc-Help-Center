---
title: "Conector ERPNext | PDMPublisher para SOLIDWORKS"
description: "Instale e configure o conector ERPNext oficial para sincronizar itens, propriedades, arquivos, números de peça gerados e listas de materiais provisórias do SOLIDWORKS."
ms.date: 09/28/2026
ms.topic: how-to
---

# Conector ERPNext

O conector ERPNext é um conector oficial da Blue Byte Systems disponível no catálogo de conectores do PDMPublisher. Ele envia linhas marcadas do SOLIDWORKS ao ERPNext como Items, atualiza campos mapeados, pode solicitar números de peça gerados pelo ERPNext, carrega arquivos e visualizações opcionais e sincroniza relações selecionadas em listas de materiais provisórias gerenciadas.

![Conector ERPNext oficial e suas configurações](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-connector-settings-20260920.png)

> [!NOTE]
> O conector funciona em uma única direção. **Pull** não está disponível. Ele não cria movimentos de estoque, pedidos de compra, definições de campos personalizados, listas de materiais submetidas nem listas de materiais padrão ativas.

## Preparar o ERPNext

Antes de configurar o PDMPublisher:

- Crie um usuário de integração do ERPNext e gere a chave e o segredo da API.
- Conceda ao usuário acesso de leitura, criação e gravação aos registros **Item** no escopo da sincronização.
- Para carregar arquivos, conceda criação de **File** e gravação de Item.
- Para sincronizar listas de materiais, conceda acesso à empresa configurada e permissão para ler, criar e atualizar registros **BOM**.
- Confirme que o grupo de itens e a unidade de medida de estoque configurados já existem.
- Crie os campos `custom_*` necessários no DocType **Item** do ERPNext. O conector mapeia valores para campos existentes; ele não define campos.
- Ao solicitar números de peça ausentes, configure o ERPNext Stock Settings para nomear Items por **Naming Series** e prepare a série que o PDMPublisher deve solicitar.

Use um site de teste do ERPNext ou uma empresa fora de produção para validar permissões, campos obrigatórios, fluxos de trabalho e scripts do servidor.

## Instalar o conector

1. Abra **PDMPublisher > Settings > ERP Sync**.
2. Abra **ERP connector settings** e selecione **Refresh**.
3. Selecione **ERPNext** em **Official Blue Byte Systems Inc**.
4. Selecione **Download** se o conector não estiver instalado ou se houver uma versão mais recente no servidor.
5. Selecione a linha ERPNext instalada para exibir suas configurações.
6. Insira as configurações de conexão e sincronização e selecione **Test connection**.
7. Selecione **Save** e reinicie o SOLIDWORKS se um conector já carregado tiver sido substituído.

**Test connection** verifica a autenticação e o acesso de leitura a Item sem criar nem alterar registros no ERPNext. As permissões de criação e gravação são aplicadas quando uma operação Push é executada.

## Configurações do conector

| Configuração | Finalidade |
| --- | --- |
| Server URL | URL raiz HTTPS do site ERPNext, sem `/api`, credenciais, consulta ou fragmento. |
| API key / API secret | Credenciais do usuário de integração do ERPNext. Os valores são mascarados e armazenados nas configurações criptografadas do usuário atual do Windows. |
| Timeout (seconds) | Tempo limite por solicitação de 1 a 300 segundos. O padrão é 60. |
| Item code column | Coluna do ERP Sync ou propriedade personalizada usada como `item_code`. O padrão é `PartNumber`; não há substituição pelo nome do arquivo. |
| Item group | Grupo de itens existente no ERPNext atribuído a novos Items. O padrão é `Products`. |
| Stock unit of measure | Unidade de medida existente no ERPNext atribuída a novos Items. O padrão é `Nos`. |
| Skip empty values | Mantém os valores existentes no ERPNext quando as fontes mapeadas estão vazias. Propriedades de origem ausentes são sempre omitidas. |
| Request missing part numbers | Solicita um código de Item ao ERPNext quando a propriedade personalizada gravável selecionada está vazia e grava o número confirmado no SOLIDWORKS. |
| Item naming series | Série de nomes de Item usada ao solicitar números de peça ausentes. |
| Property mappings | Mapeia propriedades ou colunas do SOLIDWORKS para campos Item compatíveis. O padrão mapeia `Description` para `description`. |
| Maintain stock | Valor padrão de `is_stock_item` para novos Items. |
| Allow sales | Valor padrão de `is_sales_item` para novos Items. |
| Allow purchase | Valor padrão de `is_purchase_item` para novos Items. |
| BOM company | Empresa ERPNext usada para sincronizar listas de materiais provisórias gerenciadas. |
| Upload thumbnail | Anexa a visualização capturada do SOLIDWORKS e a define como imagem do Item no ERPNext. |
| Upload exported files | Carrega arquivos existentes cujo nome base corresponde ao modelo de origem. Não gera exportações. |
| File extensions | Extensões de anexos separadas por vírgulas. O padrão é `step,stp,dxf,pdf`. |
| Export folder | Pasta que contém os arquivos exportados. Deixe vazia para usar a pasta de cada modelo de origem; as subpastas não são pesquisadas. |

## Mapear propriedades

1. Insira a URL do servidor e as credenciais da API.
2. Abra **Property mappings > ...** e selecione **Load ERP fields**.
3. Selecione uma propriedade do SOLIDWORKS ou coluna disponível do ERP Sync como origem.
4. Selecione o campo ERPNext e salve as configurações do conector.

A descoberta lê os metadados de Item, mas não lê valores de Items nem grava registros. Os destinos compatíveis são `item_name`, `description`, `is_stock_item`, `is_sales_item`, `is_purchase_item` e campos escalares graváveis `custom_*`. Tabelas e campos ocultos, somente leitura ou incompatíveis são excluídos.

Use nomes de campos do ERPNext em vez de rótulos. Os mapeamentos booleanos aceitam `True/False`, `Yes/No` ou `1/0`. Campos numéricos exigem texto numérico invariável, como `12.5`. Os nomes das propriedades são comparados sem diferenciar maiúsculas de minúsculas, mas os códigos de Item são comparados exatamente.

## Enviar Items e propriedades

1. Abra [ERP Sync](pdmpublishersolidworks_erp-sync.md) para um documento salvo do SOLIDWORKS.
2. Prepare as linhas e marque somente os Items a enviar.
3. Selecione o conector ERPNext.
4. Abra a seta ao lado de **Push** e escolha **Properties**, **Create items + properties**, **BOM** ou uma combinação compatível.
5. Selecione **Push** e revise cada resultado de linha e o resumo.

**Properties** exige que todos os Items marcados existam. **Create items + properties** cria Items ausentes e atualiza campos mapeados. Os Items existentes mantêm identidade, grupo, unidade de estoque e campos ERP não relacionados. Linhas repetidas com o mesmo código e valores são enviadas uma vez; valores conflitantes interrompem o lote antes da gravação.

## Monitorar a sincronização e revisar o relatório

Depois de selecionar **Push**, o PDMPublisher bloqueia a janela de revisão e mostra o progresso enquanto os Items marcados são sincronizados. Mantenha o SOLIDWORKS aberto até a conclusão da operação.

![Sincronização do ERPNext em andamento](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-progress-20260928.png)

Quando a sincronização termina, o **ERP Sync report** mostra o resumo da execução e uma linha para cada Item marcado.

![Relatório concluído da sincronização do ERPNext](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/erp-sync-report-20260927.png)

A versão `2026.09.27` padroniza os resultados das linhas:

- **Success**: o Item foi processado com êxito.
- **No sync needed**: o ERPNext já continha os valores solicitados e nenhuma alteração era necessária.
- **Failure**: o Item falhou, ficou incompleto ou não foi processado depois que a execução parou.

Execuções bem-sucedidas que não retornam resultados individuais agora marcam as linhas afetadas como **Success** e explicam que o conector não forneceu alterações por Item. Use o resumo para revisar as contagens de itens criados, atualizados, inalterados, carregados e ignorados, além das BOMs. O campo de pesquisa filtra as linhas; **Copy report** copia o relatório completo e **Save report...** o salva em um arquivo.

## Solicitar números de peça ausentes

Ative **Request missing part numbers**, escolha uma propriedade personalizada gravável como **Item code column** e insira a série de nomes do ERPNext. Valores vazios fazem o ERPNext atribuir um código; os números confirmados são gravados nas linhas de modelo ou lista de corte correspondentes.

Os documentos do SOLIDWORKS são marcados como modificados, mas não são salvos automaticamente. Salve-os para manter os números. Os números existentes não são substituídos. Linhas agrupadas, agregadas ou fantasmas não podem receber números gerados.

## Carregar visualizações e arquivos exportados

Os carregamentos são anexos privados do ERPNext. Os arquivos exportados devem existir com o mesmo nome base do modelo de origem, por exemplo `Bracket.SLDPRT` e `Bracket.step`. Arquivos e visualizações ausentes são ignorados e contados. Um arquivo maior que 20 MB interrompe a operação antes da gravação dos Items.

Instâncias repetidas são carregadas uma vez por Item durante um Push. Operações posteriores podem criar registros File adicionais; os anexos existentes não são removidos.

## Sincronizar listas de materiais provisórias

A sincronização exige uma exibição ERP Sync **Indented** sem agrupamento e uma **BOM company** configurada. Marque cada montagem pai e os filhos diretos que deseja incluir. Uma montagem marcada sem filhos marcados é ignorada.

O conector cria ou atualiza sua própria lista de materiais provisória marcada para o arquivo de origem, a configuração e a empresa. Cada sincronização bem-sucedida substitui a lista de materiais desse rascunho pelo instantâneo dos filhos marcados. O conector não submete, ativa nem define a lista como padrão. Listas submetidas e rascunhos não relacionados não são alterados.

## Tratar falhas com segurança

O conector para no primeiro erro da API e não repete nem desfaz automaticamente as alterações concluídas. Se uma solicitação atingir o tempo limite ou a resposta não puder ser confirmada, a gravação ainda pode ter chegado ao ERPNext. Verifique o Item, anexo ou BOM relatado antes de tentar novamente.

Quando números gerados são confirmados antes de uma falha posterior, o PDMPublisher os retorna para gravação local. Se essa gravação falhar, use os valores relatados para recuperação em vez de solicitar números substitutos.

## Páginas relacionadas

- [ERP Sync](pdmpublishersolidworks_erp-sync.md)
- [Criar um conector ERP personalizado](pdmpublishersolidworks_erp-connector.md)
