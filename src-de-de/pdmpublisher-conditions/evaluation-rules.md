---
title: "Bewertungsregeln | PDMPublisher Bedingungen"
description: "Wie PDMPublisher Zustandsgruppen und Konfigurationen auswertet."
ms.date: 08/09/2026
ms.topic: reference
---

# Bewertungsregeln

PDMPublisher prüft die Bedingungen vor dem Exportieren einer Datei.

Das SOLIDWORKS-Add-in wertet Eigenschaften aus dem aktiven Dokument aus und löst Referenzen auf.

![Zustandsgruppe in PDMPublisher für SOLIDWORKS](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Publish/Publish_Conditions_Default_Light_100.png)
Allgemeine Vorschriften:

- Aktivierte Zustandsgruppen werden anhand ihrer UND- oder ODER-Einstellung ausgewertet.
- Behinderte Zustände und Behinderte Gruppen werden übersprungen.
- Eine Datei wird nur verarbeitet, wenn die Bedingungseinstellung dies zulässt.
- Wenn eine Bedingung eine bestimmte Konfiguration verwendet, liest PDMPublisher den Wert aus dieser Konfiguration.

Für die Veröffentlichung von Assemblys werden die Bedingungen mit den Dateien verglichen, die für den Export in Betracht gezogen werden.
