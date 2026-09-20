---
title: "Merge Exported PDFs into One Master PDF | PDMPublisher Options"
description: "Combine exportado PDFs em um único mestre PDF."
ms.date: 08/09/2026
ms.topic: reference
---

# Mesclar PDF exportados para um único mestre PDF

![Mesclar PDFs exportados em PDMPublisher para SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox9_Merge_exported_PDFs_into_one_master_PDF_Light_100.png)
Combina PDF exportados em um único mestre PDF.

> [!NOTE]
> Esta configuração está disponível tanto no **PDM task** quanto no **SOLIDWORKS add-in**.

Esta opção é para processamento de montagem. Ele só funciona quando [Export References to File Formats Individualmente](export-references-individually.md) é ativado, porque PDMPublisher precisa das referências de montagem para criar o PDFs individual antes que possa fundi-los.

Configuração necessária:

- Selecione `PDF` em [Formatos de arquivos](file-formats.md).
- Activar [Exportar Referências para Formatos de Ficheiros Individualmente](export-references-individually.md).
- Processar uma montagem: lançar a tarefa PDM em uma montagem ou abrir a montagem em SOLIDWORKS antes de publicar a partir do suplemento.

> [!TIP]
> Activar [PDF Bookmarks](pdf-bookmarks.md) e [Adicionar Tabela de Conteúdo ao PDF fundido](add-table-of-content-to-merged-pdf.md) quando o PDF fundido precisar de navegação.
