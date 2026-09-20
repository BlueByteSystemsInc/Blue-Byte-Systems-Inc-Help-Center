---
title: "PDMPublisher | SOLIDWORKS PDM"
description: "Saiba mais sobre PDMPublisher para SOLIDWORKS PDM Professional, incluindo formatos de exportação suportados, arquivos de entrada, requisitos, instalação e licenciamento."
ms.date: 08/13/2026
ms.topic: overview
---

# PDMPublisher

<p align="center">
<img src="https://pdmpublisher.com/help/images/pdmpublisher_logo.png" width="200" height="200"/>

Obrigado por escolher [PDMPublisher](https://bluebyte.biz/product/pdmpublisher/)!

> [!NOTE]
> [Por favor consulte a seção FAQ para obter respostas para as perguntas mais feitas. ](pdmpublisherfaq.md)


PDMPublisher é um SOLIDWORKS PDM tarefa suplemento que permite salvar seus arquivos SOLIDWORKS usando filtros avançados e fornece recursos de energia para colocar propriedades personalizadas / cartão de dados, quantidades BOM em PDFs e misturá-los.

> [!IMPORTANT]
> Esta página descreve a tarefa configurada na ferramenta de administração SOLIDWORKS PDM. Para publicar o documento aberto no SOLIDWORKS usando perfis reutilizáveis, consulte [PDMPublisher para SOLIDWORKS](pdmpublishersolidworks.md).

Ver [PDM Task vs SOLIDWORKS suplemento](pdmpublisher-product-differences.md) para uma comparação lado a lado. As configurações compartilhadas usam as mesmas páginas de referência em ambas as seções de documentação, com diferenças específicas do produto chamadas em cada página.

<a id="supported-extensions"></a>
## Extensões suportadas
Com a versão de tarefa PDM do PDMPublisher, você pode exportar para os seguintes formatos:

- PDF e MBD: `pdf`, `_3dpdf`
- Desenhos: `dwg`, `dxf`
- eDrawings: `eprt`, `easm`, `edrw`
- CAD and interchange: `step`, `igs`, `stl`, `x_t`, `x_b`, `sat`, `3dxml`, `3mf`, `ifc`, `u3d`, `wrl`, `vda`, `cgr`, `hcg`, `hsf`
- Web e imagens: `html`, `xaml`, `jpg`, `tif`, `bmp`, `ai`, `psd`

O formato `pdf` exporta desenhos SOLIDWORKS e converte documentos Microsoft Word e Excel para PDF. A seleção `_3dpdf` exporta peças e conjuntos SOLIDWORKS como 3D PDF.

Arquivos de desenho podem ser exportados como `dxf`. Para criar padrões planos de fabricação de peças de chapa de metal, use [Export Sheet Metal Parts to 1:1 Flat Pattern DXF](pdmpublisher-options/export-sheet-metal-flat-pattern-dxf.md).

O formato `html` requer eDrawings Professional. Veja [Formatos de arquivo](pdmpublisher-options/file-formats.md) para nomes de formato, comportamento de arquivo fonte, capturas de tela e notas específicas de versão.

<a id="input-files"></a>
## Ficheiros de entrada
PDMPublisher pode processar arquivos de peças individuais SOLIDWORKS (`.sldprt`), arquivos de desenho (`.slddrw`), e conjuntos (`.sldasm`) juntamente com todas as suas referências. Isso garante que todos os componentes necessários sejam manuseados corretamente durante o processamento, quer você esteja convertendo um único arquivo ou uma estrutura inteira de montagem.

- Single Part (`.sldprt`): Processa e converte um arquivo de parte para as extensões acima.
- Desenho único (`.slddrw`): Processa desenhos individuais.
- Montagem com Referências (`.sldasm`): Inclui automaticamente todas as peças e subconjuntos referenciados e seus desenhos.
- Microsoft Office Word e Excel: Documentos do Office para PDF.


<a id="requirements"></a>
## Requisitos

A versão mínima suporta PDMPublisher é SOLIDWORKS PDM Professional 2018 SP0.
> [!TIP]
> Recomendamos que você use a versão mais recente do PDM Professional.


<a id="installation"></a>
## Instalação

Para instalar o PDMPublisher, você tem duas opções:

1. [Utilizando PDMDeploy](/src/updateaddinswithcdpdm.html):
Você pode usar [PDMDeploy](/src/cdpdm.html) para instalar o suplemento diretamente da nuvem. Este é o método recomendado.

2. [Usando o arquivo CEX](/src/installingpdmaddins.html):
Alternativamente, você pode baixar o arquivo `.cex` a partir do * email de ordem* que você recebeu após a compra. Uma vez baixado, importe o arquivo `.cex` para seu cofre através da ferramenta Administração para concluir a instalação.
    > [!WARNING]
    > [Certifique-se de desbloquear o arquivo baixado.](/src/pdmqa.html)

<a id="consuming-your-license-key"></a>
## Consumindo sua chave de licença

- O step requer que você tenha PDMPublisher adicionado ao seu cofre.
- Antes de começar a usar o PDMPublisher, você deve ativar o produto usando a chave de licença fornecida no * email de ordem*. Para ativar ou desativar sua licença, siga as instruções neste [artigo](/src/licensespdmpublisher.html).

<a id="creating-your-first-task"></a>
## Criando sua primeira tarefa
Siga as instruções neste [artigo](/src/propertiespagepdmpublisher.html).

<a id="theme-settings"></a>
## Configuração do Tema

PDMPublisher pode opcionalmente seguir o tema do aplicativo claro ou escuro do Windows. A sincronização do tema é controlada a partir do menu de adição PDMPublisher na ferramenta de administração SOLIDWORKS PDM. Ver [Configurações do tema](pdmpublisher-theme-settings.md).

<a id="support"></a>
## Suporte
Para suporte adicional, entre em contato conosco através da página [contato](https://bluebyte.biz/contact/) ou através do nosso suporte de e-mail de suporte@bluebytessystemsinc.zohodesk.com.

> [!NOTE]
> Antes de entrar em contato, sugerimos que você leia o conteúdo desta página. Compilamos estes tópicos de ajuda para responder às perguntas frequentes dos nossos clientes.
