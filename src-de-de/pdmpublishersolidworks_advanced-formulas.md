---
title: "Fortgeschrittene Formeln | PDMPublisher für SOLIDWORKS"
description: "Erstellen Sie wiederverwendbare benannte Ausdrücke für PDMPublisher-Dateinamen, Ordner und Eigenschaften."
ms.date: 09/16/2026
ms.topic: how-to
---

# Fortgeschrittene Formeln

Öffnen Sie **PDMPublisher > Settings > Advanced Formulas**, um benannte Ausdrücke zu pflegen, die von unterstützten Dateinamen, Ordnern und Eigenschaftsmenüs geteilt werden.

![Erweiterte Formeleinstellungen](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Settings/Settings_Advanced_Formulas_Default_Light_100.png)
Wählen Sie **Add** oder **Edit**, um den Formeleditor zu öffnen und den benannten Ausdruck zu erstellen.

![Advanced Formula Editor](https://pdmpublisher.com/help/images/pdmpublisher/solidworks/ui-preview/Formulas/Formulas_Formula_editor_Default_Light_100.png)
| Kommando | Verhalten |
| --- | --- |
| **Add** | Erstellt eine benannte Formel. |
| **Edit** | Öffnet die ausgewählte Formel für Änderungen. |
| **Delete** | Entfernt die ausgewählte Formel nach der Bestätigung. Bestehende Profile, die sich darauf beziehen, sollten überprüft werden. |

Geben Sie jeder Formel einen Namen, der ihr Ergebnis beschreibt, z. B. `Released filename` oder `Customer output folder`. Erstellen und Testen von Formeln mit Dokumenten, die Werte, fehlende Werte, konfigurationsspezifische Werte und Zeichen enthalten, die in Windows-Dateinamen ungültig sind.

Formeln sind Definitionen, keine kopierten Ergebnisse. PDMPublisher bewertet eine Formel im Kontext des zu verarbeitenden Dokuments und der Konfiguration. Wenn die Formel eine Eigenschaft oder eine externe Quelle verwendet, bestätigen Sie, dass die Ressource auf jedem Computer verfügbar ist, der die Einstellungen importiert.

Standardwerte, externe Quellen und Formeln werden getrennt von den anderen Dienstprogrammeinstellungen gespeichert.

> [!TIP]
> Exportieren Sie alle Einstellungen, bevor Sie eine breite Formeländerung vornehmen. Eine gemeinsame Formel kann mehrere Profile und Utility-Workflows beeinflussen.
