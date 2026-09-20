---
title: "Export Sheet Metal Parts to 1:1 Flat Pattern DXF | PDMPublisher Options"
description: "Exportar padrões planos de chapa de metal como 1:1 DXF arquivos."
ms.date: 08/13/2026
ms.topic: reference
---

# Exportar peças de metal folha para 1:1 padrão plano DXF

![Definição de padrão plano de chapa metálica de exportação em PDMPublisher para SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox7_Export_sheet_metal_parts_to_1_1_flat_pattern_DXF_Light_100.png)
Exporta peças de metal folha como 1:1 padrão plano DXF arquivos.

> [!NOTE]
> Esta configuração e sua janela de configurações de padrão plano são compartilhadas pelo **PDM task** e **SOLIDWORKS add-in**.

![Current sheet metal flat pattern settings dialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Sheet_metal_Default_Light_100.png)

<a id="sheet-metal-flat-pattern-settings"></a>
## Configurações do padrão plano do metal da folha

Selecione **Flat Pattern Settings** ao lado da opção principal para controlar quais entidades PDMPublisher escreve para o DXF.

| Opção | O que ele faz |
| --- | --- |
| **Export flat-pattern geometry** | Exporta o perfil externo achatado, recortes internos e outras bordas planas visíveis. Este é o ponto de partida normal para um DXF de fabricação e é selecionado por padrão. |
| **Include hidden edges** | Adiciona bordas que estão escondidas no padrão plano. Deixe isso limpo para a maioria dos fluxos de trabalho de laser, plasma ou jato de água, a menos que o processo a jusante precise especificamente de geometria oculta. |
| **Export bend lines** | Adiciona as linhas de dobra do padrão plano SOLIDWORKS para que a fabricação possa identificar onde as curvas ocorrem. |
| **Include sketches** | Inclui entidades de esboço visíveis da parte de chapa metálica no DXF exportado. Use isto para fabricar marcas ou outra geometria de esboço que deve acompanhar o perfil. |
| **Merge coplanar faces** | Merge rostos adjacentes que estão no mesmo plano, removendo linhas desnecessárias entre essas regiões coplanar. |
| **Export library features** | Inclui geometria criada por recursos da biblioteca SOLIDWORKS. |
| **Export forming tools** | Inclui geometria que representa características da ferramenta de formação, tais como louros, lanças, embosses ou características formadas semelhantes. O resultado exato também depende das configurações do documento SOLIDWORKS sheet-metal. |
| **Export bounding box** | Adiciona a caixa de delimitação retangular em torno do padrão plano. Isso pode ser útil para estimar o tamanho do estoque ou aninhamento. |
| **Only export the inner diameter of countersink holes (Hole feature)** | Para contadores criados com o SOLIDWORKS Hole Wizard, exporta o diâmetro do orifício interno e omite o contorno maior dos contadores. Isso pode fornecer geometria de corte mais limpa quando o contador é criado em uma operação posterior. |
| **Export flat pattern bodies separately (Multi-body sheet metal parts)** | Reservado para exportar cada corpo de chapa metálica para um arquivo separado. Esta funcionalidade está marcada com **not implemented yet** na janela actual e não deve ser usada. |
| **Append `-FlatPattern` to the flat pattern DXF file name** | Adiciona `-FlatPattern` antes de `.dxf`. Habilite-o quando um desenho e sua parte de folha-metal associada podem tanto exportar para DXF, impedindo uma saída de substituir a outra. |

> [!TIP]
> Para uma fabricação típica DXF, comece com **Export flat-pattern geometry** e **Export bend lines**. Adicione esboços, ferramentas de formação ou a caixa limite apenas quando seu processo de fabricação consumir essas entidades.

<a id="model-views-to-export"></a>
## Vistas de Modelo a Exportar

A secção inferior da janela permite- lhe exportar as vistas do modelo SOLIDWORKS para o DXF. As escolhas predefinidas são:

| Ver | Direcção representada |
| --- | --- |
| `*Front` | Vista frontal |
| `*Back` | Visão traseira |
| `*Top` | Vista superior |
| `*Bottom` | Vista inferior |
| `*Left` | Visão esquerda |
| `*Right` | Vista direita |
| `*Isometric` | Vista isométrica |

Selecione a caixa de seleção ao lado de cada visualização que deseja exportar.

> [!IMPORTANT]
> A seleção de uma ou mais views de modelo altera a exportação de uma exportação de padrão plano de chapa metálica para uma exportação de anotação SOLIDWORKS. Se o seu objetivo é um perfil desenvolvido pronto para fabricação, deixe todas as visualizações do modelo limpas e use as configurações de padrão plano acima.

<a id="add-a-custom-view"></a>
### Adicionar uma visão personalizada

Você também pode exportar uma visão nomeada salva na parte SOLIDWORKS:

1. Digite o nome exato da vista SOLIDWORKS na caixa de texto.
2. Selecione a caixa de seleção ao lado da caixa de texto se a nova visão deve ser habilitada imediatamente.
3. Selecione **+** para adicionar a visualização à lista.
4. Para remover uma visualização personalizada, digite seu nome e selecione **-**.

Os nomes de visualização personalizados devem corresponder aos nomes armazenados no modelo SOLIDWORKS. As visualizações padrão usam seus nomes de API SOLIDWORKS, incluindo o `*` líder.

<a id="recommended-configurations"></a>
## Configurações recomendadas

| Objetivo | Seleção recomendada |
| --- | --- |
| Perfil básico de corte | **Export flat-pattern geometry** |
| Corte e flexão | **Export flat-pattern geometry** e **Export bend lines** |
| Incluir marcas de fabrico | Adicionar **Include sketches** |
| Mostrar as funcionalidades formadas | Adicionar **Export forming tools** |
| Gravar as dimensões das existências necessárias | Adicionar **Export bounding box** |
| Evite uma colisão de arquivos DXF | Activar o **Append `-FlatPattern` to the flat pattern DXF file name** |
| Exportar uma visão de modelo projetada em vez do padrão desdobrado | Selecione a entrada necessária em **Model views to export** |

> [!NOTE]
> O formato de arquivo DXF não precisa ser selecionado separadamente para esta característica padrão plano.

Os primeiros oito controles de geometria e o controle da caixa-limite correspondem às opções de exportação SOLIDWORKS sheet-metal DXF. Para mais informações técnicas, consulte a documentação [SOLIDWORKS `IExportToDWG2` API](https://help.solidworks.com/2026/English/api/sldworksapi/SolidWorks.Interop.sldworks~SolidWorks.Interop.sldworks.IPartDoc~IExportToDWG2.html).
