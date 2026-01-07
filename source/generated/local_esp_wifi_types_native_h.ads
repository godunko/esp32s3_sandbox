pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with esp_wifi_types_generic_h;
with Interfaces.C.Extensions;
with sys_ustdint_h;

package local_esp_wifi_types_native_h is

   ESP_WIFI_MAX_CONN_NUM : constant := (15);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:24

   type anon_array1712 is array (0 .. 14) of aliased esp_wifi_types_generic_h.wifi_sta_info_t;
   type wifi_sta_list_t is record
      sta : aliased anon_array1712;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:29
      num : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:28

   type wifi_pkt_rx_ctrl_t is record
      rssi : aliased signed_char;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:38
      rate : Extensions.Unsigned_5;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:39
      anon4336 : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:40
      sig_mode : Extensions.Unsigned_2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:41
      field_5 : aliased unsigned_short;
      mcs : Extensions.Unsigned_7;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:43
      cwb : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:44
      field_8 : aliased unsigned_short;
      smoothing : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:46
      not_sounding : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:48
      anon4344 : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:50
      aggregation : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:51
      stbc : Extensions.Unsigned_2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:52
      fec_coding : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:53
      sgi : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:54
      field_16 : aliased unsigned_char;
      ampdu_cnt : aliased unsigned_char;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:60
      channel : Extensions.Unsigned_4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:61
      secondary_channel : Extensions.Unsigned_4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:62
      field_20 : aliased unsigned_char;
      timestamp : aliased unsigned;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:64
      field_22 : aliased unsigned;
      noise_floor : aliased signed_char;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:69
      anon4357 : Extensions.Unsigned_24;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:70
      field_25 : aliased unsigned;
      anon4359 : Extensions.Unsigned_31;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:73
      ant : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:74
      field_28 : aliased unsigned;
      field_29 : aliased unsigned;
      field_30 : aliased unsigned;
      sig_len : Extensions.Unsigned_12;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:83
      anon4365 : Extensions.Unsigned_12;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:84
      rx_state : aliased unsigned_char;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:85
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:86

   type wifi_csi_config_t is record
      lltf_en : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:97
      htltf_en : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:98
      stbc_htltf2_en : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:99
      ltf_merge_en : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:100
      channel_filter_en : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:101
      manu_scale : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:102
      shift : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:103
      dump_ack_en : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:104
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:105

   type anon_array1724 is array (0 .. 0) of aliased sys_ustdint_h.uint8_t;
   type wifi_promiscuous_pkt_t is record
      rx_ctrl : aliased wifi_pkt_rx_ctrl_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:111
      payload : aliased anon_array1724;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:112
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:113

   type anon_array1481 is array (0 .. 5) of aliased sys_ustdint_h.uint8_t;
   type wifi_csi_info_t is record
      rx_ctrl : aliased wifi_pkt_rx_ctrl_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:120
      mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:121
      dmac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:122
      first_word_invalid : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:123
      buf : access sys_ustdint_h.int8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:124
      len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:125
      hdr : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:126
      payload : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:127
      payload_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:128
      rx_seq : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:129
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/local/esp_wifi_types_native.h:119

end local_esp_wifi_types_native_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
