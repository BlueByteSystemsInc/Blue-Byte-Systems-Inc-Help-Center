---
title: "Verwenden Sie @ Tab, um Pfade zu bewerten | PDMPublisher Optionen"
description: "Bewerten Sie Exportpfade und Dateinamen aus dem @-Konfigurations-Tab."
ms.date: 08/13/2026
ms.topic: reference
---

# Verwenden Sie @ Tab, um Pfade zu bewerten

![Verwenden Sie @ Tab, um die Einstellung der Pfade auszuwerten](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/options-031-property-use-@-tab-to-evaluate-paths..png)
Bewertet dynamische Variablen im Exportort und Dateiname mit der Registerkarte `@`.

Verwenden Sie dies, wenn die zum Erstellen des Exportpfads benötigten Informationen auf der Registerkarte `@` der Datei anstelle einer modellspezifischen Konfigurationsregisterkarte gespeichert werden.

Dies ist nützlich, wenn Ordnernamen, Kundennamen, Projektnummern, Freigabeordner oder andere Pfadwerte auf `@` beibehalten werden.

Wenn der Exportstandort beispielsweise eine Variable aus `@` verwendet:

```text
(VaultRootFolder)\Released PDFs\($ProjectNumber)
```

PDMPublisher liest `ProjectNumber` aus der Registerkarte `@` und verwendet es, um den endgültigen Exportpfad zu konstruieren.

Verwenden Sie dies mit [Exportstandort](export-location.md), wenn der Exportordner von Variablen abhängt, die auf `@` gespeichert sind.
