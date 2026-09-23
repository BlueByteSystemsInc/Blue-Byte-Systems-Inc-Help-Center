---
title: Configurações da empresa | PDMPublisher para SOLIDWORKS
description: Publique e gerencie configurações selecionadas do PDMPublisher para toda a empresa.
ms.date: 10/03/2026
ms.topic: how-to
---

# Configurações da empresa

**Company Settings** permite que um administrador publique configurações selecionadas para todos os usuários licenciados com o mesmo nome de empresa. Abra **PDMPublisher > Settings > Company Settings**.

![Página Company Settings](/images/pdmpublisher/solidworks/company-settings-20261003.png)

É necessária uma licença ativada e não expirada com o nome da empresa. Selecione **Download company settings** para obter a revisão mais recente. Com **Let users choose**, o usuário pode ativar ou desativar **Use company settings**; com **Required**, as páginas gerenciadas ficam bloqueadas e somente leitura.

## Publicar configurações

Selecione **Company administrator**, informe a senha de administrador criada para o nome exato da empresa e selecione **Unlock**.

![Senha do administrador da empresa](/images/pdmpublisher/solidworks/company-settings-admin-unlock-20261003.png)

1. Selecione **Off**, **Let users choose** ou **Required**.
2. Selecione os grupos **Advanced Formulas**, **BOM Manager**, **Clone Tree**, **ERP Sync**, **Languages**, **PDM**, **Property Doctor**, **Publish** e/ou **Save As New**.
3. Salve as alterações na janela normal de configurações e selecione **Publish company settings**.

![Página do administrador desbloqueada](/images/pdmpublisher/solidworks/company-settings-admin-publish-20261003.png)

Somente os grupos marcados são gerenciados. Senhas, chaves de licença, configurações de conectores e outros segredos específicos do computador não são compartilhados. Conectores, macros e recursos externos necessários devem ser configurados separadamente em cada computador.

Cada publicação usa a última revisão baixada. Se houver uma revisão mais recente, baixe-a primeiro. Use **Overwrite newer company settings** somente para uma substituição intencional; a senha e a confirmação continuam obrigatórias. O cache local é criptografado para o usuário atual do Windows e os dados são transferidos por HTTPS.
