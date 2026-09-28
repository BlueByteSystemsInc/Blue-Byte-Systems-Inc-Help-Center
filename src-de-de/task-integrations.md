---
title: Integrationen-Aufgabenseite | PDMPublisher | SOLIDWORKS PDM
description: Einen konfigurierten ERP-Connector nach einer erfolgreichen PDMPublisher PDM-Task-Veröffentlichung ausführen.
ms.date: 10/09/2026
ms.topic: how-to
---

# Integrationen-Aufgabenseite

Mit **Integrationen** können veröffentlichte Dokumentartikel und ausgewählte PDM-Variablen nach einer erfolgreichen PDM-Task-Veröffentlichung an einen ERP-Connector gesendet werden.

> [!IMPORTANT]
> Diese Seite konfiguriert die unbeaufsichtigte Integration der **PDM-Task**. Für interaktives Push und Pull in SOLIDWORKS siehe [ERP Sync](pdmpublishersolidworks_erp-sync.md).

![Integrationen-Seite der PDMPublisher PDM-Task](https://pdmpublisher.com/help/images/pdmpublisher/screenshots/task-integrations-20261009.png)

## Verbindung konfigurieren

1. Installieren Sie einen unterstützten ERP-Connector und die zugehörigen `PDMPublisher.ERPExtension.dll`-Abhängigkeiten in einem stabilen lokalen Ordner auf jedem Task-Host.
2. Öffnen Sie die Aufgabe in SOLIDWORKS PDM Administration und wählen Sie **Integrationen**.
3. Wählen Sie **Add connection...** und anschließend die Connector-DLL.
4. Geben Sie einen Verbindungsnamen ein und konfigurieren Sie Server, Anmeldedaten und Zuordnungen.
5. Wählen Sie **Test connection**. Der Test prüft die Verbindung, veröffentlicht aber keine ERP-Daten.
6. Konfigurieren Sie auf jedem Host denselben Verbindungsnamen unter dem Windows-Konto, das die Aufgabe ausführt.
7. Aktivieren Sie **Sync published document items and mapped properties after successful publishing**.
8. Legen Sie fest, ob ein Integrationsfehler die Aufgabe als fehlgeschlagen markieren soll, und speichern Sie die Aufgabe.

Verbindungen werden für den aktuellen Windows-Benutzer verschlüsselt und unter `%LOCALAPPDATA%\Blue Byte Systems Inc\PDMPublisher\TaskConnections` gespeichert. Anmeldedaten werden nicht in exportierte Profile aufgenommen.

## Einstellungen

| Einstellung | Verhalten |
| --- | --- |
| **Saved connection** | Wählt die lokal gespeicherte Verbindung. Derselbe Name muss für das Task-Ausführungskonto auf jedem Host vorhanden sein. |
| **PDM variables to include** | Kommagetrennte PDM-Variablen. Ein Konfigurationswert überschreibt den entsprechenden `@`-Wert. |
| **Mark the task failed if integration fails** | Markiert die Task als fehlgeschlagen, wenn Push fehlschlägt. Veröffentlichte Dateien bleiben erhalten. |

## Verhalten und Grenzen

- Die Integration läuft nur nach einer Veröffentlichung ohne Konvertierungs- oder Kopierfehler.
- Der Connector erhält Artikel, angeforderte Variablen und erfolgreich erstellte Dateien des aktuellen Laufs.
- Ein fehlgeschlagenes Push wird nicht automatisch wiederholt, da das ERP bereits teilweise geändert worden sein kann.
- Datei-Uploads sind auf eine Ausgabe pro Format und Artikel beschränkt.
- Miniaturansichten, generierte Artikelnummern, PDM-Rückschreiben und hierarchische ERP-Stücklisten werden von der PDM-Task derzeit nicht unterstützt.

Connector-spezifische Anmeldedaten und Zuordnungen finden Sie in den Anleitungen für [ERPNext](pdmpublishersolidworks_erpnext-connector.md), [Odoo](https://pdmpublisher.com/help/src/pdmpublishersolidworks_odoo-connector.html) und [Business Central](https://pdmpublisher.com/help/src/pdmpublishersolidworks_business-central-connector.html).
