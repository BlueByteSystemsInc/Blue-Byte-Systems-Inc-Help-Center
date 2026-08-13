---
title: Theme Settings | PDMPublisher
description: Enable or disable Windows light and dark theme synchronization for PDMPublisher task setup pages.
ms.date: 08/13/2026
ms.topic: how-to
---

# Theme Settings

PDMPublisher can follow the current Windows app theme. When theme synchronization is enabled, the PDMPublisher task setup pages use light or dark colors to match Windows.

![PDMPublisher Options page using the Windows dark theme](/images/pdmpublisher/dark-theme-options.png)

Theme synchronization changes colors only. It does not change the design, location, or behavior of the task settings.

> [!NOTE]
> Theme synchronization is off by default. When it is off, PDMPublisher keeps its original light colors and ignores Windows theme changes.

## Turn Theme Synchronization On or Off

1. Open the SOLIDWORKS PDM Administration tool.
2. Expand **Add-ins** and right-click **PDMPublisher**.
3. Select **Theme settings...**.

![Theme settings command in the PDMPublisher add-in menu](/images/pdmpublisher/theme-settings-menu.png)

The confirmation dialog shows:

- The current Windows theme: **Light** or **Dark**.
- Whether PDMPublisher theme synchronization is currently **On** or **Off**.
- The change that will be made if you select **Yes**.

![Theme synchronization confirmation dialog](/images/pdmpublisher/theme-settings-confirmation.png)

Select **Yes** to change the setting or **No** to leave it unchanged.

- Turning synchronization **on** makes PDMPublisher follow the current Windows theme and future Windows theme changes.
- Turning synchronization **off** returns PDMPublisher to its original light colors and ignores future Windows theme changes.

> [!TIP]
> Close and reopen any task setup page that was already open if all controls do not refresh immediately after changing this setting.
