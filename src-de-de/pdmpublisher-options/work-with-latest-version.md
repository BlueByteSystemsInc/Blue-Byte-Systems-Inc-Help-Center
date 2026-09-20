---
title: "Arbeiten Sie mit der neuesten Version | PDMPublisher Optionen"
description: "Erzwingen Sie PDM, die neuesten Dateiversionen während der Veröffentlichung zu verwenden."
ms.date: 09/08/2026
ms.topic: reference
---

# Arbeiten mit der neuesten Version

![Arbeiten mit der neuesten Version](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-036-property-work-with-latest-version.png)
Erzwingt PDM, die neueste Version der Dateien vor der Veröffentlichung abzurufen.

Wenn [Nur neueste Revision erhalten](get-latest-revision-only.md) aktiviert ist, verwendet PDMPublisher stattdessen die Version, die mit der neuesten aufgezeichneten Revision verknüpft ist. **Get latest revision only** hat Vorrang vor dieser Einstellung.

> [!WARNING]
> Verwenden Sie dies sorgfältig in Release-Workflows. Wenn der Workflow den eingecheckten Referenzsatz erwartet, kann die Veröffentlichung der neuesten Version ändern, was exportiert wird.
