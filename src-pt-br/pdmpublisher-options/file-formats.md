---
title: "Formatos de arquivo □ PDMPublisher Options"
description: "Selecione os formatos de arquivo exportados pela tarefa PDMPublisher PDM ou adição SOLIDWORKS."
ms.date: 08/31/2026
ms.topic: reference
---

# Formatos de Ficheiros

![File Formats setting in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Default_Light_100.png)

Selecciona os formatos de saída criados durante a publicação. Ambos os produtos podem gerar vários formatos em um trabalho.

> [!NOTE]
> Esta configuração é compartilhada pelo **PDM task** e **SOLIDWORKS add-in**. A tarefa pode processar arquivos PDM selecionados, incluindo documentos do Office suportados. O suplemento exporta o documento SOLIDWORKS atualmente aberto e suas referências resolvidas.

![File Formats dropdown in PDMPublisher for SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Dropdown13_Light_100.png)

<a id="format-names-and-icons"></a>
## Formatar nomes e ícones

O seletor mostra um nome de formato descritivo, sua extensão de saída e um ícone do tipo arquivo. O ícone é fornecido pelo Windows e pode variar com os aplicativos e associações de arquivos instalados no computador. É apenas um identificador visual e não altera a exportação.

<a id="supported-outputs"></a>
## Saídas Suportadas

PDMPublisher pode exportar arquivos SOLIDWORKS para os formatos mostrados na lista **File Formats**. A tarefa PDM também suporta exportar documentos do Microsoft Word e Excel para PDF quando esses documentos do Office são processados pela tarefa.

O seletor completo é organizado da seguinte forma:

| Grupo | Formatos |
| --- | --- |
| PDF e MBD | Adobe PDF (`pdf`), 3D PDF - MBD (`_3dpdf`) |
| Desenhos | DWG (`dwg`), DXF (`dxf`) |
| [eDrawings](edrawings-export-settings.md) | eDrawings Part (`eprt`), eDrawings Assembly (`easm`), eDrawings Drawing (`edrw`) |
| CAD e intercâmbio | STEP (`step`), IGES (`igs`), STL (`stl`), Parasolid Text (`x_t`), Parasolid Binary (`x_b`), ACIS (`sat`), 3D XML (`3dxml`), 3MF (`3mf`), IFC (`ifc`), Universal 3D (`u3d`), VRML (`wrl`), VDAFS (`vda`), CATIA Graphics (`cgr`), HCG (`hcg`), HOOPS HSF (`hsf`) |
| Web e imagens | HTML (`html`), Microsoft XAML (`xaml`), JPEG (`jpg`), TIF (`tif`), Bitmap (`bmp`), Adobe Illustrator (`ai`), Adobe Photoshop (`psd`) |

<a id="added-in-version-20260805"></a>
## Adicionado na versão 2026.08.05

Versão `2026.08.05` adiciona estas opções de saída:

- ACIS (`sat`)
- XML (`3dxml`)
- VRML (`wrl`)
- VDAFS (`vda`)
- CATIA Graphics (`cgr`)
- HCG (`hcg`)
- HOOPS HSF (`hsf`)
- Microsoft XAML (`xaml`)
- JPEG (`jpg`)
- TIF (`tif`)
- Adobe Illustrator (`ai`)
- Adobe Photoshop (`psd`)

> [!NOTE]
> PDMPublisher remove formatos que não são válidos para o tipo de documento fonte. Alguns formatos também dependem da versão SOLIDWORKS e dos recursos de exportação instalados no computador. A tarefa usa sua versão configurada do SOLIDWORKS; o suplemento usa a versão atualmente em execução.

<a id="edrawings-output"></a>
## Saída do eDrawings

PDMPublisher PDM Task `2026.08.12` corrige as preferências SOLIDWORKS aplicadas ao criar arquivos `.eprt`, `.easm` e `.edrw`. Veja [eDrawings Export Settings](edrawings-export-settings.md) para as preferências afetadas e requisitos de máquina de tarefas.

Esta correção aplica-se apenas à tarefa PDM. Não altera PDMPublisher para SOLIDWORKS.

Se SOLIDWORKS suporta um formato de exportação que não está listado aqui, entre em contato com Blue Byte Systems e solicite suporte para esse formato:

- [Contact Blue Byte Systems](https://bluebyte.biz/contact/)
- [Suporte de e- mail](mailto:support@bluebytesystemsinc.zohodesk.com)

<a id="pdf-output"></a>
## Saída do PDF

Quando `PDF` é selecionado para uma peça ou conjunto SOLIDWORKS, PDMPublisher procura um desenho com o mesmo nome na mesma pasta.

Por exemplo, se a tarefa for executada:

`C:\PDMVault\Projects\1001\Bracket.SLDPRT`

Verificações PDMPublisher para:

`C:\PDMVault\Projects\1001\Bracket.SLDDRW`

Se o desenho correspondente for encontrado, PDMPublisher abre o desenho e imprime/exporta o desenho para PDF. Isso permite que uma tarefa seja executada a partir de um modelo enquanto ainda produz o desenho que os usuários do PDF esperam.

> [!NOTE]
> Na tarefa PDM, [Use o PDM Search para localizar desenhos](use-pdm-search-to-locate-drawings.md) pode localizar um desenho que não está na mesma pasta. Esta opção de pesquisa somente para tarefas não está disponível no suplemento SOLIDWORKS.

<a id="dxf-output"></a>
## Saída do DXF

Quando `DXF` é selecionado para um desenho, PDMPublisher exporta o desenho como DXF.

> [!WARNING]
> Desenho DXF saída não é o mesmo que um padrão plano de chapa de metal DXF. Se você quiser um padrão plano 1:1 DXF de peças de chapa de metal, habilite [Exportar peças de chapa de metal para 1:1 padrão plano DXF](export-sheet-metal-flat-pattern-dxf.md) na seção Exportar em vez disso.

<a id="flat-pattern-dxf"></a>
## Padrão plano DXF

Padrão plano DXF exportação é controlada por sua própria opção na parte inferior da seção de exportação: [Partes de metal folha de exportação para 1:1 padrão plano DXF](export-sheet-metal-flat-pattern-dxf.md).

Você não precisa selecionar `DXF` em **File Formats** para que a característica padrão plano para executar.
