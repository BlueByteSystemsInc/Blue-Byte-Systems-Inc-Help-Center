---
title: Configurações da empresa | PDMPublisher para SOLIDWORKS
description: Publique e gerencie configurações selecionadas do PDMPublisher para toda a empresa.
ms.date: 10/03/2026
ms.topic: how-to
---

# Configurações da empresa

**Company Settings** permite que um administrador publique configurações selecionadas para todos os usuários licenciados com o mesmo nome de empresa. Abra **PDMPublisher > Settings > Company Settings**.

![Página Company Settings](/images/pdmpublisher/solidworks/company-settings-20261003.png)

É necessária uma licença ativada com o nome da empresa. Selecione **Download company settings** para obter as configurações mais recentes publicadas pelo administrador. Com **Let users choose**, o usuário pode ativar ou desativar **Use company settings**; com **Required**, as páginas gerenciadas ficam bloqueadas e somente leitura.

## Publicar configurações

Selecione **Company administrator**, informe sua senha de administrador e selecione **Unlock**.

![Senha do administrador da empresa](/images/pdmpublisher/solidworks/company-settings-admin-unlock-20261003.png)

1. Selecione **Off**, **Let users choose** ou **Required**.
2. Selecione os grupos **Advanced Formulas**, **BOM Manager**, **Clone Tree**, **ERP Sync**, **Languages**, **PDM**, **Property Doctor**, **Publish** e/ou **Save As New**.
3. Salve as alterações na janela normal de configurações e selecione **Publish company settings**.

![Página do administrador desbloqueada](/images/pdmpublisher/solidworks/company-settings-admin-publish-20261003.png)

Somente os grupos marcados são compartilhados. Os grupos não marcados continuam usando as configurações locais de cada usuário.

Se o PDMPublisher informar que há configurações mais recentes, baixe-as antes de publicar novamente. Use **Overwrite newer company settings** somente quando quiser substituir intencionalmente as configurações mais recentes. Leia a confirmação com atenção antes de continuar.
