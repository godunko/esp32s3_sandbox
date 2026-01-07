--
--  Copyright (C) 2026, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with Interfaces.C.Extensions;

with sys_ustdint_h;

package body ESP.WiFi is

   CONFIG_ESP_WIFI_STATIC_RX_BUFFER_NUM  : constant := 10;
   --  `sdkconfig.h`: not generated
   CONFIG_ESP_WIFI_DYNAMIC_RX_BUFFER_NUM : constant := 32;
   --  `sdkconfig.h`: not generated
   CONFIG_ESP_WIFI_TX_BUFFER_TYPE        : constant := 1;
   --  `sdkconfig.h`: not generated
   CONFIG_ESP_WIFI_DYNAMIC_TX_BUFFER_NUM : constant := 32;
   --  `sdkconfig.h`: not generated
   CONFIG_ESP_WIFI_DYNAMIC_RX_MGMT_BUF  : constant := 0;
   --  `sdkconfig.h`: not generated
   CONFIG_ESP_WIFI_RX_MGMT_BUF_NUM_DEF   : constant := 5;
   --  `sdkconfig.h`: not generated
   CONFIG_ESP_WIFI_RX_BA_WIN : constant := 6;
   --  `sdkconfig.h`: not generated
   CONFIG_ESP_WIFI_SOFTAP_BEACON_MAX_LEN : constant := 752;
   --  `sdkconfig.h`: not generated
   CONFIG_ESP_WIFI_MGMT_SBUF_NUM : constant := 32;
   --  `sdkconfig.h`: not generated
   CONFIG_ESP_WIFI_ESPNOW_MAX_ENCRYPT_NUM : constant := 7;
   --  `sdkconfig.h`: not generated

   use type Interfaces.C.unsigned_long_long;

   WIFI_FEATURE_CAPS : constant sys_ustdint_h.uint64_t :=
     esp_wifi_h.WIFI_ENABLE_WPA3_SAE
       or esp_wifi_h.WIFI_ENABLE_CACHE_TX_BUFFER
       or esp_wifi_h.WIFI_FTM_INITIATOR
       or esp_wifi_h.WIFI_FTM_RESPONDER
       or esp_wifi_h.WIFI_ENABLE_GCMP
       or esp_wifi_h.WIFI_ENABLE_GMAC
       or esp_wifi_h.WIFI_ENABLE_11R
       or esp_wifi_h.WIFI_ENABLE_ENTERPRISE
       or esp_wifi_h.WIFI_ENABLE_BSS_MAX_IDLE;
   --  `esp_wifi.h`: not generated

   WIFI_STA_DISCONNECTED_PM_ENABLED : constant Interfaces.C.Extensions.bool :=
     Interfaces.C.True;
   --  `esp_wifi.h`: not generated
   WIFI_DUMP_HESIGB_ENABLED         : constant Interfaces.C.Extensions.bool :=
     Interfaces.C.False;
   --  `esp_wifi.h`: not generated

   -------------
   -- Default --
   -------------
   
   function Default return esp_wifi_h.wifi_init_config_t is
   begin
      return
        (osi_funcs              => esp_wifi_h.g_wifi_osi_funcs'Access,
         wpa_crypto_funcs       => esp_wifi_h.g_wifi_default_wpa_crypto_funcs,
         static_rx_buf_num      => CONFIG_ESP_WIFI_STATIC_RX_BUFFER_NUM,
         dynamic_rx_buf_num     => CONFIG_ESP_WIFI_DYNAMIC_RX_BUFFER_NUM,
         tx_buf_type            => CONFIG_ESP_WIFI_TX_BUFFER_TYPE,
         static_tx_buf_num      => esp_wifi_h.WIFI_STATIC_TX_BUFFER_NUM,
         dynamic_tx_buf_num     => CONFIG_ESP_WIFI_DYNAMIC_TX_BUFFER_NUM,
         rx_mgmt_buf_type       => CONFIG_ESP_WIFI_DYNAMIC_RX_MGMT_BUF,
         rx_mgmt_buf_num        => CONFIG_ESP_WIFI_RX_MGMT_BUF_NUM_DEF,
         cache_tx_buf_num       => esp_wifi_h.WIFI_CACHE_TX_BUFFER_NUM,
         csi_enable             => esp_wifi_h.WIFI_CSI_ENABLED,
         ampdu_rx_enable        => esp_wifi_h.WIFI_AMPDU_RX_ENABLED,
         ampdu_tx_enable        => esp_wifi_h.WIFI_AMPDU_TX_ENABLED,
         amsdu_tx_enable        => esp_wifi_h.WIFI_AMSDU_TX_ENABLED,
         nvs_enable             => esp_wifi_h.WIFI_NVS_ENABLED,
         nano_enable            => esp_wifi_h.WIFI_NANO_FORMAT_ENABLED,
         rx_ba_win              => CONFIG_ESP_WIFI_RX_BA_WIN,
         wifi_task_core_id      => esp_wifi_h.WIFI_TASK_CORE_ID,
         beacon_max_len         => CONFIG_ESP_WIFI_SOFTAP_BEACON_MAX_LEN,
         mgmt_sbuf_num          => CONFIG_ESP_WIFI_MGMT_SBUF_NUM,
         feature_caps           => WIFI_FEATURE_CAPS,
         sta_disconnected_pm    => WIFI_STA_DISCONNECTED_PM_ENABLED,
         espnow_max_encrypt_num => CONFIG_ESP_WIFI_ESPNOW_MAX_ENCRYPT_NUM,
         tx_hetb_queue_num      => esp_wifi_h.WIFI_TX_HETB_QUEUE_NUM,
         dump_hesigb_enable     => WIFI_DUMP_HESIGB_ENABLED,
         magic                  => esp_wifi_h.WIFI_INIT_CONFIG_MAGIC);
   end Default;

end ESP.WiFi;
