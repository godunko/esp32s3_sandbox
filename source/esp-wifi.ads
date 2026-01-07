--
--  Copyright (C) 2026, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with esp_wifi_h;

package ESP.WiFi is

   function Default return esp_wifi_h.wifi_init_config_t;

end ESP.WiFi;
