---
title: "Troubleshooting Blocked Files in Windows | SOLIDWORKS PDM"
description: "Saiba como desbloquear arquivos no Windows que são baixados a partir da internet ou fontes externas, incluindo SOLIDWORKS PDM add-ins."
ms.date: 06/19/2026
ms.topic: conceptual
---

# Um arquivo baixado (como um suplemento SOLIDWORKS PDM) não está funcionando. Como posso verificar se está bloqueado?

> [!WARNING]
> **Please unblock your downloads. Blocked files will affect the proper execution of our products in your systems**.


<br>

Se um arquivo baixado da internet (como um suplemento SOLIDWORKS PDM, macro, instalador ou script) não carregar ou executar, o Windows pode estar bloqueando-o por razões de segurança. Siga estes steps para desbloquear:

- **Locate the File:** Abra o File Explorer e navegue para o arquivo baixado.

- **Right-click the File:** Clique com o botão direito do mouse no arquivo para mostrar o menu de contexto.

- **Go to Properties:** Clique em "Propriedades" na parte inferior do menu de contexto.

- **Check for Blocking:** Na aba **General**, procure uma caixa de seleção chamada **“Unblock”** perto do fundo. Se você vê, o arquivo está sendo bloqueado pelo Windows.

- **Unblock the File:** Verifique a caixa **“Unblock”** e clique em **“Apply”**, em seguida, **“OK”**.

- **Verify:** Reabre a janela Propriedades para garantir que a caixa de seleção "Desbloquear" se foi.

Após desbloquear, o arquivo deve funcionar normalmente sem ser bloqueado pelos mecanismos de segurança do Windows.

<br>

<center>
<img src="https://pdmpublisher.com/help/images/blocked.png" alt="Blocked file example" />
</center>

<br><br>

> [!NOTE]
> O Windows pode bloquear arquivos de fontes externas para proteger seu sistema. Isso inclui arquivos que são:
>
> **✅ Downloaded from the Internet**
> - Os arquivos de sites, armazenamento em nuvem ou fornecedores de software podem ser automaticamente bloqueados.
>
> **📩 Received as Email Attachments**
> Especialmente aqueles de remetentes desconhecidos ou não confiáveis.
>
> **🔌 Copied from External Devices**
> - drives USB, locais de rede compartilhados ou servidores remotos podem marcar arquivos como não confiáveis.
>
> **⚙️ Controlled by Security Policies**
> - Os ficheiros são marcados com um identificador de zona (por exemplo, “da Internet”) e podem ser restringidos com base em definições de política de sistema ou grupo.

---

Desbloquear o arquivo garante que o Windows não mais o impedirá de ser executado – apenas certifique-se de que a fonte é confiável.
