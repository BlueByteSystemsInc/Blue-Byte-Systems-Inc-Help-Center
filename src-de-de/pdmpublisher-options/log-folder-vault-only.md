---
title: "Log-Ordner (nur Vault) | PDMPublisher Optionen"
description: "Speichern Sie PDMPublisher-Logs in einem PDM-Tresorordner."
ms.date: 08/09/2026
ms.topic: reference
---

# Log-Ordner (nur Vault)

![Log-Ordnereinstellung](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-020-property-log-folder-(vault-only).png

Legt den PDM-Vault-Ordner fest, in dem Protokolldateien abgelegt werden.

Diese Einstellung bezieht sich auf [Vault Activity Logs](turn-on-activity-tracking.md). Es steuert, wo die Aktivitätsprotokolldateien im Tresor gespeichert sind.

Empfohlener Pfad:

```text
(VaultRootFolder)\Logs\PDMPublisher
```

Erstellen Sie diesen Ordner manuell, bevor Sie die Aufgabe verwenden.

> [!IMPORTANT]
> Der Ordner muss sich im Tresor befinden und darf nicht mit einem nachlaufenden Backslash enden.
>
> Der Benutzer, der die Aufgabe ausführt, oder das Aufgabenhostkonto, das zum Ausführen der Aufgabe verwendet wird, müssen über die Berechtigung zum Hinzufügen von Protokolldateien zu diesem Ordner verfügen.
