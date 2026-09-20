---
title: "Work with Latest Version | PDMPublisher Options"
description: "Forçar o PDM a usar as versões mais recentes do arquivo durante a publicação."
ms.date: 09/08/2026
ms.topic: reference
---

# Trabalhar com a versão mais recente

![Work with latest version setting](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-036-property-work-with-latest-version.png)

Força o PDM a recuperar a versão mais recente dos arquivos antes de publicar.

Se [Obter somente a última revisão](get-latest-revision-only.md) estiver habilitado, PDMPublisher usa a versão associada com a nova revisão gravada. **Get latest revision only** tem precedência sobre esta configuração.

> [!WARNING]
> Use isso com cuidado nos fluxos de trabalho de liberação. Se o fluxo de trabalho espera o conjunto de referência check-in, a publicação de última versão pode alterar o que é exportado.
