---
title: "Mehrere Konfigurationen konvertieren | PDMPublisher Optionen"
description: "Exportieren Sie alle Teile- und Montagekonfigurationen."
ms.date: 08/09/2026
ms.topic: reference
---

# Mehrere Konfigurationen konvertieren

![Einstellung mehrerer Konfigurationen in PDMPublisher für SOLIDWORKS konvertieren](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Publish_Checkbox5_Convert_multiple_configurations_Light_100.png)
Verarbeitet alle Teile- und Montagekonfigurationen anstelle nur der aktiven oder ausgewählten Konfiguration.

> [!NOTE]
> Diese Einstellung ist sowohl im **PDM task** als auch im **SOLIDWORKS add-in** verfügbar. Die Aufgabe beginnt mit der ausgewählten oder gestarteten Konfiguration; das Add-in beginnt mit der in SOLIDWORKS aktiven Konfiguration.

> [!IMPORTANT]
> Hinzufügen von `ConfigurationName` zum [Dateinamenmuster](filename.md), bevor Sie diese Option aktivieren. Ohne einen konfigurationsspezifischen Dateinamen können sich Exporte aus verschiedenen Konfigurationen gegenseitig überschreiben.

<a id="configuration-filter"></a>
## Konfigurationsfilter

Die Schaltfläche **Configuration Filter** öffnet den Filterdialog für diese Option. Verwenden Sie es, wenn Sie nicht möchten, dass jede Konfiguration verarbeitet wird.

![Konfigurationsfilterdialog](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Configuration_filter_Default_Light_100.png)
Mit dem Filter können Sie Konfigurationen nach Namen einschließen oder ausschließen. Verwenden Sie Platzhaltermuster, wenn mehrere Konfigurationen eine Namenskonvention teilen.

Geben Sie Muster in **Include Configurations** ein, wenn nur übereinstimmende Konfigurationen exportiert werden sollen. Lassen Sie es leer, wenn alle Konfigurationen erlaubt sind.

Geben Sie Muster in **Exclude Configurations** ein, wenn übereinstimmende Konfigurationen übersprungen werden sollten. Dies wird häufig verwendet, um flache Musterkonfigurationen beim Exportieren von Modellformaten wie `STEP` zu überspringen.

| Ziel | Beispielmuster | Ergebnis |
|---|---|---|
| Exportieren Sie jede Konfiguration | `*` | Verarbeitet alle Konfigurationen. |
| Nur Ausfuhrproduktionskonfigurationen | `PROD*` | Verarbeitet Konfigurationen, deren Namen mit `PROD` beginnen. |
| Exportieren Sie nur eine benannte Konfiguration | `Default` | Verarbeitet nur `Default`. |
| Exportgrößen, die einem Namensmuster folgen | `SIZE-*` | Verarbeitet Konfigurationen wie `SIZE-S`, `SIZE-M` und `SIZE-L`. |
| Ausschließen flacher Musterkonfigurationen | `*Flat*` oder `*Flat-Pattern*` in der Ausschlussliste | Überspringt flache Musterkonfigurationen während des Exports der normalen Konfiguration. |

> [!TIP]
> Wenn Sie möchten, dass jede Modellkonfiguration in `STEP` konvertiert wird, aktivieren Sie **Convert multiple configurations**, fügen Sie `ConfigurationName` in das [Dateinamenmuster](filename.md) ein und schließen Sie flache Musterkonfigurationen aus dem Konfigurationsfilter aus. Dies vermeidet das Erstellen unerwünschter STEP-Dateien aus flachen Blechmusterkonfigurationen.
