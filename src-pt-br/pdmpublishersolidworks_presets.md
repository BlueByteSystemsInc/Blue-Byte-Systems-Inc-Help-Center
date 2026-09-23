---
title: "Perfis de publicação integrados | PDMPublisher para SOLIDWORKS"
description: "Crie um perfil do PDMPublisher para SOLIDWORKS a partir de um perfil inicial de DXF, PDF e STEP ou STEP fornecido."
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher para SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Perfis de publicação integrados

O PDMPublisher inclui perfis iniciais para fluxos de publicação comuns. Eles estão disponíveis apenas no **PDMPublisher para SOLIDWORKS**.

![Publique comandos de seleção de perfil e perfil](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
## Criar um perfil a partir de um perfil integrado

1. Abra o **New**.
2. Selecione **New From**.
3. Escolha um perfil fornecido.
4. Reveja o novo perfil, ajuste suas configurações e selecione **Save**.

Os perfis fornecidos são:

| Perfil | Objetivo inicial |
| --- | --- |
| `DXF` | Desenho ou fabricação de saída DXF. |
| `PDF And Step` | Documentação PDF e saída do modelo STEP. |
| `STEP` | Saída do modelo STEP. |

> [!IMPORTANT]
> Um perfil integrado não publica por si só. **New From** cria um perfil editável a partir da configuração inicial fornecida; o novo perfil é usado quando você seleciona **PUBLISH**.

<a id="customize-the-new-profile"></a>
## Personalizar o Novo Perfil

Os perfis integrados são pontos de partida, não configurações bloqueadas. Revise estas áreas antes de publicar:

- [Opções](pdmpublishersolidworks_options.md), incluindo a localização da exportação, nome do ficheiro, formatos e processamento de referência
- [Anotações](pdmpublishersolidworks_annotations.md)
- [Condições](conditions_solidworks.md)

Alterar um perfil criado a partir de um perfil integrado não modifica a configuração inicial fornecida. Você pode criar vários perfis a partir do mesmo perfil integrado e personalizar cada um para um cliente, projeto ou pacote de saída diferente.

Para seleção de perfil, renomeação, transferência de arquivos, exclusão e outros comandos de perfil, consulte [Perfils](pdmpublishersolidworks_profiles.md).
