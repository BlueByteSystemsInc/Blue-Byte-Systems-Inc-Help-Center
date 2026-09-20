---
title: "Predefinições PDMPublisher para SOLIDWORKS"
description: "Crie um PDMPublisher para o perfil SOLIDWORKS a partir de um DXF integrado, PDF e STEP, ou STEP predefinido."
ms.date: 08/23/2026
ms.topic: how-to
bbsProductName: PDMPublisher para SOLIDWORKS
bbsProductHref: pdmpublishersolidworks.html
---

# Predefinições

Predefinições são configurações de início incorporadas para fluxos de trabalho de publicação comuns. Eles estão disponíveis apenas em **PDMPublisher for SOLIDWORKS**.

![Publique comandos de seleção de perfil e perfil](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Scroll1_Light_100.png)
<a id="create-a-profile-from-a-preset"></a>
## Criar um Perfil a partir de uma Predefinição

1. Abra o **New**.
2. Selecione **New From**.
3. Escolha uma predefinição fornecida.
4. Reveja o novo perfil, ajuste suas configurações e selecione **Save**.

As predefinições fornecidas são:

| Predefinição | Objectivo inicial |
| --- | --- |
| `DXF` | Desenho ou fabricação de saída DXF. |
| `PDF And Step` | Documentação PDF e saída do modelo STEP. |
| `STEP` | Saída do modelo STEP. |

> [!IMPORTANT]
> Uma predefinição não publica por si só. **New From** cria um perfil a partir da predefinição; o novo perfil é a configuração usada quando você seleciona **PUBLISH**.

<a id="customize-the-new-profile"></a>
## Personalizar o Novo Perfil

As predefinições são pontos de partida, não configurações bloqueadas. Reveja estas áreas antes de publicar:

- [Opções](pdmpublishersolidworks_options.md), incluindo a localização da exportação, nome do ficheiro, formatos e processamento de referência
- [Anotações](pdmpublishersolidworks_annotations.md)
- [Condições](conditions_solidworks.md)

Mudar um perfil criado a partir de uma predefinição não altera a predefinição original. Você pode criar vários perfis a partir da mesma predefinição e personalizar cada um para um cliente, projeto ou pacote de saída diferente.

Para seleção de perfil, renomeação, transferência de arquivos, exclusão e outros comandos de perfil, consulte [Perfils](pdmpublishersolidworks_profiles.md).
