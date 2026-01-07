pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with esp_wifi_crypto_types_h;
with sys_ustdint_h;
with Interfaces.C.Extensions;
with esp_err_h;
with esp_wifi_types_generic_h;
with System;
limited with local_esp_wifi_types_native_h;
with Interfaces.C.Strings;
--  with esp_wifi_ap_get_sta_list_h;
--  with local_esp_wifi_types_native_h;

package esp_wifi_h is

   --  unsupported macro: ESP_ERR_WIFI_NOT_INIT (ESP_ERR_WIFI_BASE + 1)
   --  unsupported macro: ESP_ERR_WIFI_NOT_STARTED (ESP_ERR_WIFI_BASE + 2)
   --  unsupported macro: ESP_ERR_WIFI_NOT_STOPPED (ESP_ERR_WIFI_BASE + 3)
   --  unsupported macro: ESP_ERR_WIFI_IF (ESP_ERR_WIFI_BASE + 4)
   --  unsupported macro: ESP_ERR_WIFI_MODE (ESP_ERR_WIFI_BASE + 5)
   --  unsupported macro: ESP_ERR_WIFI_STATE (ESP_ERR_WIFI_BASE + 6)
   --  unsupported macro: ESP_ERR_WIFI_CONN (ESP_ERR_WIFI_BASE + 7)
   --  unsupported macro: ESP_ERR_WIFI_NVS (ESP_ERR_WIFI_BASE + 8)
   --  unsupported macro: ESP_ERR_WIFI_MAC (ESP_ERR_WIFI_BASE + 9)
   --  unsupported macro: ESP_ERR_WIFI_SSID (ESP_ERR_WIFI_BASE + 10)
   --  unsupported macro: ESP_ERR_WIFI_PASSWORD (ESP_ERR_WIFI_BASE + 11)
   --  unsupported macro: ESP_ERR_WIFI_TIMEOUT (ESP_ERR_WIFI_BASE + 12)
   --  unsupported macro: ESP_ERR_WIFI_WAKE_FAIL (ESP_ERR_WIFI_BASE + 13)
   --  unsupported macro: ESP_ERR_WIFI_WOULD_BLOCK (ESP_ERR_WIFI_BASE + 14)
   --  unsupported macro: ESP_ERR_WIFI_NOT_CONNECT (ESP_ERR_WIFI_BASE + 15)
   --  unsupported macro: ESP_ERR_WIFI_POST (ESP_ERR_WIFI_BASE + 18)
   --  unsupported macro: ESP_ERR_WIFI_INIT_STATE (ESP_ERR_WIFI_BASE + 19)
   --  unsupported macro: ESP_ERR_WIFI_STOP_STATE (ESP_ERR_WIFI_BASE + 20)
   --  unsupported macro: ESP_ERR_WIFI_NOT_ASSOC (ESP_ERR_WIFI_BASE + 21)
   --  unsupported macro: ESP_ERR_WIFI_TX_DISALLOW (ESP_ERR_WIFI_BASE + 22)
   --  unsupported macro: ESP_ERR_WIFI_TWT_FULL (ESP_ERR_WIFI_BASE + 23)
   --  unsupported macro: ESP_ERR_WIFI_TWT_SETUP_TIMEOUT (ESP_ERR_WIFI_BASE + 24)
   --  unsupported macro: ESP_ERR_WIFI_TWT_SETUP_TXFAIL (ESP_ERR_WIFI_BASE + 25)
   --  unsupported macro: ESP_ERR_WIFI_TWT_SETUP_REJECT (ESP_ERR_WIFI_BASE + 26)
   --  unsupported macro: ESP_ERR_WIFI_DISCARD (ESP_ERR_WIFI_BASE + 27)
   --  unsupported macro: ESP_ERR_WIFI_ROC_IN_PROGRESS (ESP_ERR_WIFI_BASE + 28)
   WIFI_STATIC_TX_BUFFER_NUM : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:129

   WIFI_CACHE_TX_BUFFER_NUM : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:135
   --  unsupported macro: WIFI_DYNAMIC_TX_BUFFER_NUM CONFIG_ESP_WIFI_DYNAMIC_TX_BUFFER_NUM
   --  unsupported macro: WIFI_RX_MGMT_BUF_NUM_DEF CONFIG_ESP_WIFI_RX_MGMT_BUF_NUM_DEF

   WIFI_CSI_ENABLED : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:153

   WIFI_AMPDU_RX_ENABLED : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:157

   WIFI_AMPDU_TX_ENABLED : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:163

   WIFI_AMSDU_TX_ENABLED : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:171

   WIFI_NVS_ENABLED : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:175

   WIFI_NANO_FORMAT_ENABLED : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:183

   WIFI_INIT_CONFIG_MAGIC : constant := 16#1F2F3F4F#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:189
   --  unsupported macro: WIFI_DEFAULT_RX_BA_WIN CONFIG_ESP_WIFI_RX_BA_WIN

   WIFI_TASK_CORE_ID : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:200
   --  unsupported macro: WIFI_SOFTAP_BEACON_MAX_LEN CONFIG_ESP_WIFI_SOFTAP_BEACON_MAX_LEN
   --  unsupported macro: WIFI_MGMT_SBUF_NUM CONFIG_ESP_WIFI_MGMT_SBUF_NUM
   --  unsupported macro: WIFI_STA_DISCONNECTED_PM_ENABLED true

   WIFI_ENABLE_WPA3_SAE : constant := (2**0);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:222

   WIFI_ENABLE_CACHE_TX_BUFFER : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:230

   WIFI_FTM_INITIATOR : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:236

   WIFI_FTM_RESPONDER : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:242

   WIFI_ENABLE_GCMP : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:248

   WIFI_ENABLE_GMAC : constant := (2**5);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:252

   WIFI_ENABLE_11R : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:260

   WIFI_ENABLE_ENTERPRISE : constant := (2**7);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:264
   --  unsupported macro: WIFI_DUMP_HESIGB_ENABLED false

   WIFI_TX_HETB_QUEUE_NUM : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:278

   WIFI_ENABLE_BSS_MAX_IDLE : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:284

   CONFIG_FEATURE_WPA3_SAE_BIT : constant := (2**0);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:287
   CONFIG_FEATURE_CACHE_TX_BUF_BIT : constant := (2**1);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:288
   CONFIG_FEATURE_FTM_INITIATOR_BIT : constant := (2**2);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:289
   CONFIG_FEATURE_FTM_RESPONDER_BIT : constant := (2**3);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:290
   CONFIG_FEATURE_GCMP_BIT : constant := (2**4);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:291
   CONFIG_FEATURE_GMAC_BIT : constant := (2**5);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:292
   CONFIG_FEATURE_11R_BIT : constant := (2**6);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:293
   CONFIG_FEATURE_WIFI_ENT_BIT : constant := (2**7);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:294
   CONFIG_FEATURE_BSS_MAX_IDLE_BIT : constant := (2**8);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:295
   --  unsupported macro: WIFI_FEATURE_CAPS (WIFI_ENABLE_WPA3_SAE | WIFI_ENABLE_CACHE_TX_BUFFER | WIFI_FTM_INITIATOR | WIFI_FTM_RESPONDER | WIFI_ENABLE_GCMP | WIFI_ENABLE_GMAC | WIFI_ENABLE_11R | WIFI_ENABLE_ENTERPRISE | WIFI_ENABLE_BSS_MAX_IDLE)
   --  arg-macro: procedure WIFI_INIT_CONFIG_DEFAULT ()
   --    { .osi_funcs := andg_wifi_osi_funcs, .wpa_crypto_funcs := g_wifi_default_wpa_crypto_funcs, .static_rx_buf_num := CONFIG_ESP_WIFI_STATIC_RX_BUFFER_NUM, .dynamic_rx_buf_num := CONFIG_ESP_WIFI_DYNAMIC_RX_BUFFER_NUM, .tx_buf_type := CONFIG_ESP_WIFI_TX_BUFFER_TYPE, .static_tx_buf_num := WIFI_STATIC_TX_BUFFER_NUM, .dynamic_tx_buf_num := WIFI_DYNAMIC_TX_BUFFER_NUM, .rx_mgmt_buf_type := CONFIG_ESP_WIFI_DYNAMIC_RX_MGMT_BUF, .rx_mgmt_buf_num := WIFI_RX_MGMT_BUF_NUM_DEF, .cache_tx_buf_num := WIFI_CACHE_TX_BUFFER_NUM, .csi_enable := WIFI_CSI_ENABLED, .ampdu_rx_enable := WIFI_AMPDU_RX_ENABLED, .ampdu_tx_enable := WIFI_AMPDU_TX_ENABLED, .amsdu_tx_enable := WIFI_AMSDU_TX_ENABLED, .nvs_enable := WIFI_NVS_ENABLED, .nano_enable := WIFI_NANO_FORMAT_ENABLED, .rx_ba_win := WIFI_DEFAULT_RX_BA_WIN, .wifi_task_core_id := WIFI_TASK_CORE_ID, .beacon_max_len := WIFI_SOFTAP_BEACON_MAX_LEN, .mgmt_sbuf_num := WIFI_MGMT_SBUF_NUM, .feature_caps := WIFI_FEATURE_CAPS, .sta_disconnected_pm := WIFI_STA_DISCONNECTED_PM_ENABLED, .espnow_max_encrypt_num := CONFIG_ESP_WIFI_ESPNOW_MAX_ENCRYPT_NUM, .tx_hetb_queue_num := WIFI_TX_HETB_QUEUE_NUM, .dump_hesigb_enable := WIFI_DUMP_HESIGB_ENABLED, .magic := WIFI_INIT_CONFIG_MAGIC}

   ESP_WIFI_CONNECTIONLESS_INTERVAL_DEFAULT_MODE : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1489

   type wifi_osi_funcs_t is null record;   -- incomplete struct

   type wifi_init_config_t is record
      osi_funcs : access wifi_osi_funcs_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:98
      wpa_crypto_funcs : aliased esp_wifi_crypto_types_h.wpa_crypto_funcs_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:99
      static_rx_buf_num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:100
      dynamic_rx_buf_num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:101
      tx_buf_type : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:102
      static_tx_buf_num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:103
      dynamic_tx_buf_num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:104
      rx_mgmt_buf_type : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:105
      rx_mgmt_buf_num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:106
      cache_tx_buf_num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:107
      csi_enable : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:108
      ampdu_rx_enable : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:109
      ampdu_tx_enable : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:110
      amsdu_tx_enable : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:111
      nvs_enable : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:112
      nano_enable : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:113
      rx_ba_win : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:114
      wifi_task_core_id : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:115
      beacon_max_len : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:116
      mgmt_sbuf_num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:117
      feature_caps : aliased sys_ustdint_h.uint64_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:118
      sta_disconnected_pm : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:119
      espnow_max_encrypt_num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:120
      tx_hetb_queue_num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:121
      dump_hesigb_enable : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:122
      magic : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:123
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:124

   g_wifi_default_wpa_crypto_funcs : aliased constant esp_wifi_crypto_types_h.wpa_crypto_funcs_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:186
   with Import => True,
        Convention => C,
        External_Name => "g_wifi_default_wpa_crypto_funcs";

   g_wifi_osi_funcs : aliased wifi_osi_funcs_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:187
   with Import => True,
        Convention => C,
        External_Name => "g_wifi_osi_funcs";

   function esp_wifi_init (config : access constant wifi_init_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:356
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_init";

   function esp_wifi_deinit return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:368
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_deinit";

   function esp_wifi_set_mode (mode : esp_wifi_types_generic_h.wifi_mode_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:384
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_mode";

   function esp_wifi_get_mode (mode : access esp_wifi_types_generic_h.wifi_mode_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:396
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_mode";

   function esp_wifi_start return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:413
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_start";

   function esp_wifi_stop return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:426
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_stop";

   function esp_wifi_restore return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:441
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_restore";

   function esp_wifi_connect return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:463
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_connect";

   function esp_wifi_disconnect return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:474
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_disconnect";

   function esp_wifi_clear_fast_connect return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:484
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_clear_fast_connect";

   function esp_wifi_deauth_sta (aid : sys_ustdint_h.uint16_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:498
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_deauth_sta";

   function esp_wifi_scan_start (config : access constant esp_wifi_types_generic_h.wifi_scan_config_t; block : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:525
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_scan_start";

   function esp_wifi_set_scan_parameters (config : access constant esp_wifi_types_generic_h.wifi_scan_default_params_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:554
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_scan_parameters";

   function esp_wifi_get_scan_parameters (config : access esp_wifi_types_generic_h.wifi_scan_default_params_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:566
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_scan_parameters";

   function esp_wifi_scan_stop return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:577
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_scan_stop";

   function esp_wifi_scan_get_ap_num (number : access sys_ustdint_h.uint16_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:592
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_scan_get_ap_num";

   function esp_wifi_scan_get_ap_records (number : access sys_ustdint_h.uint16_t; ap_records : access esp_wifi_types_generic_h.wifi_ap_record_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:610
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_scan_get_ap_records";

   function esp_wifi_scan_get_ap_record (ap_record : access esp_wifi_types_generic_h.wifi_ap_record_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:629
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_scan_get_ap_record";

   function esp_wifi_clear_ap_list return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:644
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_clear_ap_list";

   function esp_wifi_sta_get_ap_info (ap_info : access esp_wifi_types_generic_h.wifi_ap_record_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:661
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_sta_get_ap_info";

   function esp_wifi_set_ps (c_type : esp_wifi_types_generic_h.wifi_ps_type_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:672
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_ps";

   function esp_wifi_get_ps (c_type : access esp_wifi_types_generic_h.wifi_ps_type_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:683
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_ps";

   function esp_wifi_set_protocol (ifx : esp_wifi_types_generic_h.wifi_interface_t; protocol_bitmap : sys_ustdint_h.uint8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:707
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_protocol";

   function esp_wifi_get_protocol (ifx : esp_wifi_types_generic_h.wifi_interface_t; protocol_bitmap : access sys_ustdint_h.uint8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:728
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_protocol";

   function esp_wifi_set_bandwidth (ifx : esp_wifi_types_generic_h.wifi_interface_t; bw : esp_wifi_types_generic_h.wifi_bandwidth_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:749
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_bandwidth";

   function esp_wifi_get_bandwidth (ifx : esp_wifi_types_generic_h.wifi_interface_t; bw : access esp_wifi_types_generic_h.wifi_bandwidth_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:767
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_bandwidth";

   function esp_wifi_set_channel (primary : sys_ustdint_h.uint8_t; second : esp_wifi_types_generic_h.wifi_second_chan_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:791
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_channel";

   function esp_wifi_get_channel (primary : access sys_ustdint_h.uint8_t; second : access esp_wifi_types_generic_h.wifi_second_chan_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:806
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_channel";

   function esp_wifi_set_country (country : access constant esp_wifi_types_generic_h.wifi_country_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:836
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_country";

   function esp_wifi_get_country (country : access esp_wifi_types_generic_h.wifi_country_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:848
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_country";

   function esp_wifi_set_mac (ifx : esp_wifi_types_generic_h.wifi_interface_t; mac : access sys_ustdint_h.uint8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:870
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_mac";

   function esp_wifi_get_mac (ifx : esp_wifi_types_generic_h.wifi_interface_t; mac : access sys_ustdint_h.uint8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:884
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_mac";

   type wifi_promiscuous_cb_t is access procedure (arg1 : System.Address; arg2 : esp_wifi_types_generic_h.wifi_promiscuous_pkt_type_t)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:894

   function esp_wifi_set_promiscuous_rx_cb (cb : wifi_promiscuous_cb_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:907
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_promiscuous_rx_cb";

   function esp_wifi_set_promiscuous (en : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:918
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_promiscuous";

   function esp_wifi_get_promiscuous (en : access Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:930
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_promiscuous";

   function esp_wifi_set_promiscuous_filter (filter : access constant esp_wifi_types_generic_h.wifi_promiscuous_filter_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:943
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_promiscuous_filter";

   function esp_wifi_get_promiscuous_filter (filter : access esp_wifi_types_generic_h.wifi_promiscuous_filter_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:955
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_promiscuous_filter";

   function esp_wifi_set_promiscuous_ctrl_filter (filter : access constant esp_wifi_types_generic_h.wifi_promiscuous_filter_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:968
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_promiscuous_ctrl_filter";

   function esp_wifi_get_promiscuous_ctrl_filter (filter : access esp_wifi_types_generic_h.wifi_promiscuous_filter_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:980
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_promiscuous_ctrl_filter";

   function esp_wifi_set_config (c_interface : esp_wifi_types_generic_h.wifi_interface_t; conf : access esp_wifi_types_generic_h.wifi_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1005
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_config";

   function esp_wifi_get_config (c_interface : esp_wifi_types_generic_h.wifi_interface_t; conf : access esp_wifi_types_generic_h.wifi_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1019
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_config";

      function esp_wifi_ap_get_sta_list (sta : access local_esp_wifi_types_native_h.wifi_sta_list_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1044
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_ap_get_sta_list";

   function esp_wifi_ap_get_sta_aid (mac : access sys_ustdint_h.uint8_t; aid : access sys_ustdint_h.uint16_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1060
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_ap_get_sta_aid";

   function esp_wifi_set_storage (storage : esp_wifi_types_generic_h.wifi_storage_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1074
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_storage";

   type esp_vendor_ie_cb_t is access procedure
        (arg1 : System.Address;
         arg2 : esp_wifi_types_generic_h.wifi_vendor_ie_type_t;
         arg3 : access sys_ustdint_h.uint8_t;
         arg4 : access constant esp_wifi_types_generic_h.vendor_ie_data_t;
         arg5 : int)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1084

   function esp_wifi_set_vendor_ie
     (enable : Extensions.bool;
      c_type : esp_wifi_types_generic_h.wifi_vendor_ie_type_t;
      idx : esp_wifi_types_generic_h.wifi_vendor_ie_id_t;
      vnd_ie : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1102
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_vendor_ie";

   function esp_wifi_set_vendor_ie_cb (cb : esp_vendor_ie_cb_t; ctx : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1114
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_vendor_ie_cb";

   function esp_wifi_set_max_tx_power (power : sys_ustdint_h.int8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1134
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_max_tx_power";

   function esp_wifi_get_max_tx_power (power : access sys_ustdint_h.int8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1147
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_max_tx_power";

   function esp_wifi_set_event_mask (mask : sys_ustdint_h.uint32_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1164
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_event_mask";

   function esp_wifi_get_event_mask (mask : access sys_ustdint_h.uint32_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1176
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_event_mask";

   function esp_wifi_80211_tx
     (ifx : esp_wifi_types_generic_h.wifi_interface_t;
      buffer : System.Address;
      len : int;
      en_sys_seq : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1203
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_80211_tx";

   type esp_wifi_80211_tx_done_cb_t is access procedure (arg1 : access constant esp_wifi_types_generic_h.wifi_tx_info_t)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1210

   function esp_wifi_register_80211_tx_cb (cb : esp_wifi_80211_tx_done_cb_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1224
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_register_80211_tx_cb";

   type wifi_csi_cb_t is access procedure (arg1 : System.Address; arg2 : access local_esp_wifi_types_native_h.wifi_csi_info_t)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1235

   function esp_wifi_set_csi_rx_cb (cb : wifi_csi_cb_t; ctx : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1250
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_csi_rx_cb";

   function esp_wifi_set_csi_config (config : access constant local_esp_wifi_types_native_h.wifi_csi_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1263
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_csi_config";

   function esp_wifi_get_csi_config (config : access local_esp_wifi_types_native_h.wifi_csi_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1276
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_csi_config";

   function esp_wifi_set_csi (en : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1289
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_csi";

   function esp_wifi_set_ant_gpio (config : access constant esp_wifi_types_generic_h.wifi_ant_gpio_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1301
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_ant_gpio";

   function esp_wifi_get_ant_gpio (config : access esp_wifi_types_generic_h.wifi_ant_gpio_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1313
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_ant_gpio";

   function esp_wifi_set_ant (config : access constant esp_wifi_types_generic_h.wifi_ant_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1325
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_ant";

   function esp_wifi_get_ant (config : access esp_wifi_types_generic_h.wifi_ant_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1337
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_ant";

   function esp_wifi_get_tsf_time (c_interface : esp_wifi_types_generic_h.wifi_interface_t) return sys_ustdint_h.int64_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1350
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_tsf_time";

   function esp_wifi_set_inactive_time (ifx : esp_wifi_types_generic_h.wifi_interface_t; sec : sys_ustdint_h.uint16_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1370
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_inactive_time";

   function esp_wifi_get_inactive_time (ifx : esp_wifi_types_generic_h.wifi_interface_t; sec : access sys_ustdint_h.uint16_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1384
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_inactive_time";

   function esp_wifi_statis_dump (modules : sys_ustdint_h.uint32_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1395
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_statis_dump";

   function esp_wifi_set_rssi_threshold (rssi : sys_ustdint_h.int32_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1411
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_rssi_threshold";

   function esp_wifi_ftm_initiate_session (cfg : access esp_wifi_types_generic_h.wifi_ftm_initiator_cfg_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1427
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_ftm_initiate_session";

   function esp_wifi_ftm_end_session return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1438
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_ftm_end_session";

   function esp_wifi_ftm_resp_set_offset (offset_cm : sys_ustdint_h.int16_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1452
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_ftm_resp_set_offset";

   function esp_wifi_ftm_get_report (report : access esp_wifi_types_generic_h.wifi_ftm_report_entry_t; num_entries : sys_ustdint_h.uint8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1472
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_ftm_get_report";

   function esp_wifi_config_11b_rate (ifx : esp_wifi_types_generic_h.wifi_interface_t; disable : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1487
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_config_11b_rate";

   function esp_wifi_connectionless_module_set_wake_interval (wake_interval : sys_ustdint_h.uint16_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1502
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_connectionless_module_set_wake_interval";

   function esp_wifi_force_wakeup_acquire return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1515
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_force_wakeup_acquire";

   function esp_wifi_force_wakeup_release return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1528
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_force_wakeup_release";

   function esp_wifi_set_country_code (country : Interfaces.C.Strings.chars_ptr; ieee80211d_enabled : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1562
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_country_code";

   function esp_wifi_get_country_code (country : Interfaces.C.Strings.chars_ptr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1574
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_country_code";

   function esp_wifi_config_80211_tx_rate (ifx : esp_wifi_types_generic_h.wifi_interface_t; rate : esp_wifi_types_generic_h.wifi_phy_rate_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1589
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_config_80211_tx_rate";

   function esp_wifi_config_80211_tx (ifx : esp_wifi_types_generic_h.wifi_interface_t; config : access esp_wifi_types_generic_h.wifi_tx_rate_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1604
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_config_80211_tx";

   function esp_wifi_disable_pmf_config (ifx : esp_wifi_types_generic_h.wifi_interface_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1617
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_disable_pmf_config";

   function esp_wifi_sta_get_aid (aid : access sys_ustdint_h.uint16_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1629
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_sta_get_aid";

   function esp_wifi_sta_get_negotiated_phymode (phymode : access esp_wifi_types_generic_h.wifi_phy_mode_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1639
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_sta_get_negotiated_phymode";

   function esp_wifi_set_dynamic_cs (enabled : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1652
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_dynamic_cs";

   function esp_wifi_sta_get_rssi (rssi : access int) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1667
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_sta_get_rssi";

   function esp_wifi_set_band (band : esp_wifi_types_generic_h.wifi_band_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1686
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_band";

   function esp_wifi_get_band (band : access esp_wifi_types_generic_h.wifi_band_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1698
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_band";

   function esp_wifi_set_band_mode (band_mode : esp_wifi_types_generic_h.wifi_band_mode_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1719
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_band_mode";

   function esp_wifi_get_band_mode (band_mode : access esp_wifi_types_generic_h.wifi_band_mode_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1732
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_band_mode";

   function esp_wifi_set_protocols (ifx : esp_wifi_types_generic_h.wifi_interface_t; protocols : access esp_wifi_types_generic_h.wifi_protocols_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1765
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_protocols";

   function esp_wifi_get_protocols (ifx : esp_wifi_types_generic_h.wifi_interface_t; protocols : access esp_wifi_types_generic_h.wifi_protocols_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1784
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_protocols";

   function esp_wifi_set_bandwidths (ifx : esp_wifi_types_generic_h.wifi_interface_t; bw : access esp_wifi_types_generic_h.wifi_bandwidths_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1804
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_set_bandwidths";

   function esp_wifi_get_bandwidths (ifx : esp_wifi_types_generic_h.wifi_interface_t; bw : access esp_wifi_types_generic_h.wifi_bandwidths_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1822
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_get_bandwidths";

   function esp_wifi_action_tx_req (req : access esp_wifi_types_generic_h.wifi_action_tx_req_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1835
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_action_tx_req";

   function esp_wifi_remain_on_channel (req : access esp_wifi_types_generic_h.wifi_roc_req_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi.h:1848
   with Import => True,
        Convention => C,
        External_Name => "esp_wifi_remain_on_channel";

end esp_wifi_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
