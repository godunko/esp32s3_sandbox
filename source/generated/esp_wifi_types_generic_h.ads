pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;
with stddef_h;
with esp_event_base_h;

package esp_wifi_types_generic_h is

   WIFI_AP_DEFAULT_MAX_IDLE_PERIOD : constant := 292;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:20

   WIFI_ACTIVE_SCAN_MIN_DEFAULT_TIME : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:189
   WIFI_ACTIVE_SCAN_MAX_DEFAULT_TIME : constant := 120;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:190
   WIFI_PASSIVE_SCAN_DEFAULT_TIME : constant := 360;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:191
   WIFI_SCAN_HOME_CHANNEL_DWELL_DEFAULT_TIME : constant := 30;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:192
   --  arg-macro: procedure WIFI_SCAN_PARAMS_DEFAULT_CONFIG ()
   --    { .scan_time.active.min := WIFI_ACTIVE_SCAN_MIN_DEFAULT_TIME, .scan_time.active.max := WIFI_ACTIVE_SCAN_MAX_DEFAULT_TIME, .scan_time.passive := WIFI_PASSIVE_SCAN_DEFAULT_TIME, .home_chan_dwell_time := WIFI_SCAN_HOME_CHANNEL_DWELL_DEFAULT_TIME}
   --  arg-macro: function BIT (nr)
   --    return 2 ** (nr);
   --  arg-macro: function CHANNEL_TO_BIT_NUMBER (channel)
   --    return (channel >= 1  and then  channel <= 14) ? (channel) : ((channel >= 36  and then  channel <= 64  and then  (channel - 36) mod 4 = 0) ? ((channel - 36) / 4 + 1) : ((channel >= 100  and then  channel <= 144  and then  (channel - 100) mod 4 = 0) ? ((channel - 100) / 4 + 9) : ((channel >= 149  and then  channel <= 177  and then  (channel - 149) mod 4 = 0) ? ((channel - 149) / 4 + 21) : 0)));
   --  arg-macro: function BIT_NUMBER_TO_CHANNEL (bit_number, band)
   --    return (band = WIFI_BAND_2G) ? (bit_number) : ((bit_number >= 1  and then  bit_number <= 8) ? ((bit_number - 1) * 4 + 36) : ((bit_number >= 9  and then  bit_number <= 20) ? ((bit_number - 9) * 4 + 100) : ((bit_number >= 21  and then  bit_number <= 28) ? ((bit_number - 21) * 4 + 149) : 0)));
   --  arg-macro: function CHANNEL_TO_BIT (channel)
   --    return BIT(CHANNEL_TO_BIT_NUMBER(channel));

   WIFI_PROTOCOL_11B : constant := 16#1#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:463
   WIFI_PROTOCOL_11G : constant := 16#2#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:464
   WIFI_PROTOCOL_11N : constant := 16#4#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:465
   WIFI_PROTOCOL_LR : constant := 16#8#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:466
   WIFI_PROTOCOL_11A : constant := 16#10#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:467
   WIFI_PROTOCOL_11AC : constant := 16#20#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:468
   WIFI_PROTOCOL_11AX : constant := 16#40#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:469

   SAE_H2E_IDENTIFIER_LEN : constant := 32;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:546

   WIFI_VENDOR_IE_ELEMENT_ID : constant := 16#DD#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:659

   WIFI_PROMIS_FILTER_MASK_ALL : constant := (16#FFFFFFFF#);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:701
   WIFI_PROMIS_FILTER_MASK_MGMT : constant := (1);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:702
   WIFI_PROMIS_FILTER_MASK_CTRL : constant := (2**1);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:703
   WIFI_PROMIS_FILTER_MASK_DATA : constant := (2**2);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:704
   WIFI_PROMIS_FILTER_MASK_MISC : constant := (2**3);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:705
   WIFI_PROMIS_FILTER_MASK_DATA_MPDU : constant := (2**4);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:706
   WIFI_PROMIS_FILTER_MASK_DATA_AMPDU : constant := (2**5);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:707
   WIFI_PROMIS_FILTER_MASK_FCSFAIL : constant := (2**6);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:708

   WIFI_PROMIS_CTRL_FILTER_MASK_ALL : constant := (16#FF800000#);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:710
   WIFI_PROMIS_CTRL_FILTER_MASK_WRAPPER : constant := (2**23);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:711
   WIFI_PROMIS_CTRL_FILTER_MASK_BAR : constant := (2**24);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:712
   WIFI_PROMIS_CTRL_FILTER_MASK_BA : constant := (2**25);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:713
   WIFI_PROMIS_CTRL_FILTER_MASK_PSPOLL : constant := (2**26);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:714
   WIFI_PROMIS_CTRL_FILTER_MASK_RTS : constant := (2**27);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:715
   WIFI_PROMIS_CTRL_FILTER_MASK_CTS : constant := (2**28);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:716
   WIFI_PROMIS_CTRL_FILTER_MASK_ACK : constant := (2**29);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:717
   WIFI_PROMIS_CTRL_FILTER_MASK_CFEND : constant := (2**30);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:718
   WIFI_PROMIS_CTRL_FILTER_MASK_CFENDACK : constant := (2**31);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:719

   WIFI_EVENT_MASK_ALL : constant := (16#FFFFFFFF#);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:728
   WIFI_EVENT_MASK_NONE : constant := (0);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:729
   --  unsupported macro: WIFI_EVENT_MASK_AP_PROBEREQRECVED (BIT(0))

   ESP_WIFI_NAN_MAX_SVC_SUPPORTED : constant := 2;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:852
   ESP_WIFI_NAN_DATAPATH_MAX_PEERS : constant := 2;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:853

   ESP_WIFI_NDP_ROLE_INITIATOR : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:855
   ESP_WIFI_NDP_ROLE_RESPONDER : constant := 2;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:856

   ESP_WIFI_MAX_SVC_NAME_LEN : constant := 256;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:858
   ESP_WIFI_MAX_FILTER_LEN : constant := 256;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:859
   ESP_WIFI_MAX_SVC_INFO_LEN : constant := 64;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:860
   ESP_WIFI_MAX_FUP_SSI_LEN : constant := 2048;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:861
   ESP_WIFI_MAX_SVC_SSI_LEN : constant := 512;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:862
   ESP_WIFI_MAX_NEIGHBOR_REP_LEN : constant := 64;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:863
   WIFI_OUI_LEN : constant := 3;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:864

   MAX_SSID_LEN : constant := 32;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1189
   MAX_PASSPHRASE_LEN : constant := 64;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1190
   MAX_WPS_AP_CRED : constant := 3;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1191

   WIFI_STATIS_BUFFER : constant := (2**0);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1293
   WIFI_STATIS_RXTX : constant := (2**1);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1294
   WIFI_STATIS_HW : constant := (2**2);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1295
   WIFI_STATIS_DIAG : constant := (2**3);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1296
   WIFI_STATIS_PS : constant := (2**4);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1297
   WIFI_STATIS_ALL : constant := (-1);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1298

   WIFI_MAX_SUPPORT_COUNTRY_NUM : constant := 176;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1471

   WIFI_MAX_REGULATORY_RULE_NUM : constant := 2;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1475

   type wifi_mode_t is 
     (WIFI_MODE_NULL,
      WIFI_MODE_STA,
      WIFI_MODE_AP,
      WIFI_MODE_APSTA,
      WIFI_MODE_NAN,
      WIFI_MODE_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:32

   type wifi_interface_t is 
     (WIFI_IF_STA,
      WIFI_IF_AP,
      WIFI_IF_NAN,
      WIFI_IF_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:44

   type wifi_action_tx_t is 
     (WIFI_OFFCHAN_TX_CANCEL,
      WIFI_OFFCHAN_TX_REQ)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:49

   type wifi_roc_t is 
     (WIFI_ROC_CANCEL,
      WIFI_ROC_REQ)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:54

   type wifi_country_policy_t is 
     (WIFI_COUNTRY_POLICY_AUTO,
      WIFI_COUNTRY_POLICY_MANUAL)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:61

   subtype anon_array1448 is Interfaces.C.char_array (0 .. 2);
   type wifi_country_t is record
      cc : aliased anon_array1448;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:67
      schan : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:68
      nchan : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:69
      max_tx_power : aliased sys_ustdint_h.int8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:70
      policy : aliased wifi_country_policy_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:71
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:78

   subtype wifi_auth_mode_t is unsigned;
   wifi_auth_mode_t_WIFI_AUTH_OPEN : constant wifi_auth_mode_t := 0;
   wifi_auth_mode_t_WIFI_AUTH_WEP : constant wifi_auth_mode_t := 1;
   wifi_auth_mode_t_WIFI_AUTH_WPA_PSK : constant wifi_auth_mode_t := 2;
   wifi_auth_mode_t_WIFI_AUTH_WPA2_PSK : constant wifi_auth_mode_t := 3;
   wifi_auth_mode_t_WIFI_AUTH_WPA_WPA2_PSK : constant wifi_auth_mode_t := 4;
   wifi_auth_mode_t_WIFI_AUTH_ENTERPRISE : constant wifi_auth_mode_t := 5;
   wifi_auth_mode_t_WIFI_AUTH_WPA2_ENTERPRISE : constant wifi_auth_mode_t := 5;
   wifi_auth_mode_t_WIFI_AUTH_WPA3_PSK : constant wifi_auth_mode_t := 6;
   wifi_auth_mode_t_WIFI_AUTH_WPA2_WPA3_PSK : constant wifi_auth_mode_t := 7;
   wifi_auth_mode_t_WIFI_AUTH_WAPI_PSK : constant wifi_auth_mode_t := 8;
   wifi_auth_mode_t_WIFI_AUTH_OWE : constant wifi_auth_mode_t := 9;
   wifi_auth_mode_t_WIFI_AUTH_WPA3_ENT_192 : constant wifi_auth_mode_t := 10;
   wifi_auth_mode_t_WIFI_AUTH_WPA3_EXT_PSK : constant wifi_auth_mode_t := 11;
   wifi_auth_mode_t_WIFI_AUTH_WPA3_EXT_PSK_MIXED_MODE : constant wifi_auth_mode_t := 12;
   wifi_auth_mode_t_WIFI_AUTH_DPP : constant wifi_auth_mode_t := 13;
   wifi_auth_mode_t_WIFI_AUTH_WPA3_ENTERPRISE : constant wifi_auth_mode_t := 14;
   wifi_auth_mode_t_WIFI_AUTH_WPA2_WPA3_ENTERPRISE : constant wifi_auth_mode_t := 15;
   wifi_auth_mode_t_WIFI_AUTH_WPA_ENTERPRISE : constant wifi_auth_mode_t := 16;
   wifi_auth_mode_t_WIFI_AUTH_MAX : constant wifi_auth_mode_t := 17;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:106

   subtype wifi_err_reason_t is unsigned;
   wifi_err_reason_t_WIFI_REASON_UNSPECIFIED : constant wifi_err_reason_t := 1;
   wifi_err_reason_t_WIFI_REASON_AUTH_EXPIRE : constant wifi_err_reason_t := 2;
   wifi_err_reason_t_WIFI_REASON_AUTH_LEAVE : constant wifi_err_reason_t := 3;
   wifi_err_reason_t_WIFI_REASON_ASSOC_EXPIRE : constant wifi_err_reason_t := 4;
   wifi_err_reason_t_WIFI_REASON_DISASSOC_DUE_TO_INACTIVITY : constant wifi_err_reason_t := 4;
   wifi_err_reason_t_WIFI_REASON_ASSOC_TOOMANY : constant wifi_err_reason_t := 5;
   wifi_err_reason_t_WIFI_REASON_NOT_AUTHED : constant wifi_err_reason_t := 6;
   wifi_err_reason_t_WIFI_REASON_CLASS2_FRAME_FROM_NONAUTH_STA : constant wifi_err_reason_t := 6;
   wifi_err_reason_t_WIFI_REASON_NOT_ASSOCED : constant wifi_err_reason_t := 7;
   wifi_err_reason_t_WIFI_REASON_CLASS3_FRAME_FROM_NONASSOC_STA : constant wifi_err_reason_t := 7;
   wifi_err_reason_t_WIFI_REASON_ASSOC_LEAVE : constant wifi_err_reason_t := 8;
   wifi_err_reason_t_WIFI_REASON_ASSOC_NOT_AUTHED : constant wifi_err_reason_t := 9;
   wifi_err_reason_t_WIFI_REASON_DISASSOC_PWRCAP_BAD : constant wifi_err_reason_t := 10;
   wifi_err_reason_t_WIFI_REASON_DISASSOC_SUPCHAN_BAD : constant wifi_err_reason_t := 11;
   wifi_err_reason_t_WIFI_REASON_BSS_TRANSITION_DISASSOC : constant wifi_err_reason_t := 12;
   wifi_err_reason_t_WIFI_REASON_IE_INVALID : constant wifi_err_reason_t := 13;
   wifi_err_reason_t_WIFI_REASON_MIC_FAILURE : constant wifi_err_reason_t := 14;
   wifi_err_reason_t_WIFI_REASON_4WAY_HANDSHAKE_TIMEOUT : constant wifi_err_reason_t := 15;
   wifi_err_reason_t_WIFI_REASON_GROUP_KEY_UPDATE_TIMEOUT : constant wifi_err_reason_t := 16;
   wifi_err_reason_t_WIFI_REASON_IE_IN_4WAY_DIFFERS : constant wifi_err_reason_t := 17;
   wifi_err_reason_t_WIFI_REASON_GROUP_CIPHER_INVALID : constant wifi_err_reason_t := 18;
   wifi_err_reason_t_WIFI_REASON_PAIRWISE_CIPHER_INVALID : constant wifi_err_reason_t := 19;
   wifi_err_reason_t_WIFI_REASON_AKMP_INVALID : constant wifi_err_reason_t := 20;
   wifi_err_reason_t_WIFI_REASON_UNSUPP_RSN_IE_VERSION : constant wifi_err_reason_t := 21;
   wifi_err_reason_t_WIFI_REASON_INVALID_RSN_IE_CAP : constant wifi_err_reason_t := 22;
   wifi_err_reason_t_WIFI_REASON_802_1X_AUTH_FAILED : constant wifi_err_reason_t := 23;
   wifi_err_reason_t_WIFI_REASON_CIPHER_SUITE_REJECTED : constant wifi_err_reason_t := 24;
   wifi_err_reason_t_WIFI_REASON_TDLS_PEER_UNREACHABLE : constant wifi_err_reason_t := 25;
   wifi_err_reason_t_WIFI_REASON_TDLS_UNSPECIFIED : constant wifi_err_reason_t := 26;
   wifi_err_reason_t_WIFI_REASON_SSP_REQUESTED_DISASSOC : constant wifi_err_reason_t := 27;
   wifi_err_reason_t_WIFI_REASON_NO_SSP_ROAMING_AGREEMENT : constant wifi_err_reason_t := 28;
   wifi_err_reason_t_WIFI_REASON_BAD_CIPHER_OR_AKM : constant wifi_err_reason_t := 29;
   wifi_err_reason_t_WIFI_REASON_NOT_AUTHORIZED_THIS_LOCATION : constant wifi_err_reason_t := 30;
   wifi_err_reason_t_WIFI_REASON_SERVICE_CHANGE_PERCLUDES_TS : constant wifi_err_reason_t := 31;
   wifi_err_reason_t_WIFI_REASON_UNSPECIFIED_QOS : constant wifi_err_reason_t := 32;
   wifi_err_reason_t_WIFI_REASON_NOT_ENOUGH_BANDWIDTH : constant wifi_err_reason_t := 33;
   wifi_err_reason_t_WIFI_REASON_MISSING_ACKS : constant wifi_err_reason_t := 34;
   wifi_err_reason_t_WIFI_REASON_EXCEEDED_TXOP : constant wifi_err_reason_t := 35;
   wifi_err_reason_t_WIFI_REASON_STA_LEAVING : constant wifi_err_reason_t := 36;
   wifi_err_reason_t_WIFI_REASON_END_BA : constant wifi_err_reason_t := 37;
   wifi_err_reason_t_WIFI_REASON_UNKNOWN_BA : constant wifi_err_reason_t := 38;
   wifi_err_reason_t_WIFI_REASON_TIMEOUT : constant wifi_err_reason_t := 39;
   wifi_err_reason_t_WIFI_REASON_PEER_INITIATED : constant wifi_err_reason_t := 46;
   wifi_err_reason_t_WIFI_REASON_AP_INITIATED : constant wifi_err_reason_t := 47;
   wifi_err_reason_t_WIFI_REASON_INVALID_FT_ACTION_FRAME_COUNT : constant wifi_err_reason_t := 48;
   wifi_err_reason_t_WIFI_REASON_INVALID_PMKID : constant wifi_err_reason_t := 49;
   wifi_err_reason_t_WIFI_REASON_INVALID_MDE : constant wifi_err_reason_t := 50;
   wifi_err_reason_t_WIFI_REASON_INVALID_FTE : constant wifi_err_reason_t := 51;
   wifi_err_reason_t_WIFI_REASON_TRANSMISSION_LINK_ESTABLISH_FAILED : constant wifi_err_reason_t := 67;
   wifi_err_reason_t_WIFI_REASON_ALTERATIVE_CHANNEL_OCCUPIED : constant wifi_err_reason_t := 68;
   wifi_err_reason_t_WIFI_REASON_BEACON_TIMEOUT : constant wifi_err_reason_t := 200;
   wifi_err_reason_t_WIFI_REASON_NO_AP_FOUND : constant wifi_err_reason_t := 201;
   wifi_err_reason_t_WIFI_REASON_AUTH_FAIL : constant wifi_err_reason_t := 202;
   wifi_err_reason_t_WIFI_REASON_ASSOC_FAIL : constant wifi_err_reason_t := 203;
   wifi_err_reason_t_WIFI_REASON_HANDSHAKE_TIMEOUT : constant wifi_err_reason_t := 204;
   wifi_err_reason_t_WIFI_REASON_CONNECTION_FAIL : constant wifi_err_reason_t := 205;
   wifi_err_reason_t_WIFI_REASON_AP_TSF_RESET : constant wifi_err_reason_t := 206;
   wifi_err_reason_t_WIFI_REASON_ROAMING : constant wifi_err_reason_t := 207;
   wifi_err_reason_t_WIFI_REASON_ASSOC_COMEBACK_TIME_TOO_LONG : constant wifi_err_reason_t := 208;
   wifi_err_reason_t_WIFI_REASON_SA_QUERY_TIMEOUT : constant wifi_err_reason_t := 209;
   wifi_err_reason_t_WIFI_REASON_NO_AP_FOUND_W_COMPATIBLE_SECURITY : constant wifi_err_reason_t := 210;
   wifi_err_reason_t_WIFI_REASON_NO_AP_FOUND_IN_AUTHMODE_THRESHOLD : constant wifi_err_reason_t := 211;
   wifi_err_reason_t_WIFI_REASON_NO_AP_FOUND_IN_RSSI_THRESHOLD : constant wifi_err_reason_t := 212;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:178

   type wifi_second_chan_t is 
     (WIFI_SECOND_CHAN_NONE,
      WIFI_SECOND_CHAN_ABOVE,
      WIFI_SECOND_CHAN_BELOW)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:187

   type wifi_scan_type_t is 
     (WIFI_SCAN_TYPE_ACTIVE,
      WIFI_SCAN_TYPE_PASSIVE)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:207

   type wifi_active_scan_time_t is record
      min : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:213
      max : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:214
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:216

   type wifi_scan_time_t is record
      active : aliased wifi_active_scan_time_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:222
      passive : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:223
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:225

   type wifi_scan_channel_bitmap_t is record
      ghz_2_channels : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:231
      ghz_5_channels : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:232
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:233

   type wifi_scan_config_t is record
      ssid : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:239
      bssid : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:240
      channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:241
      show_hidden : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:242
      scan_type : aliased wifi_scan_type_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:243
      scan_time : aliased wifi_scan_time_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:244
      home_chan_dwell_time : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:245
      channel_bitmap : aliased wifi_scan_channel_bitmap_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:246
      coex_background_scan : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:249
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:250

   type wifi_scan_default_params_t is record
      scan_time : aliased wifi_scan_time_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:256
      home_chan_dwell_time : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:257
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:258

   type wifi_cipher_type_t is 
     (WIFI_CIPHER_TYPE_NONE,
      WIFI_CIPHER_TYPE_WEP40,
      WIFI_CIPHER_TYPE_WEP104,
      WIFI_CIPHER_TYPE_TKIP,
      WIFI_CIPHER_TYPE_CCMP,
      WIFI_CIPHER_TYPE_TKIP_CCMP,
      WIFI_CIPHER_TYPE_AES_CMAC128,
      WIFI_CIPHER_TYPE_SMS4,
      WIFI_CIPHER_TYPE_GCMP,
      WIFI_CIPHER_TYPE_GCMP256,
      WIFI_CIPHER_TYPE_AES_GMAC128,
      WIFI_CIPHER_TYPE_AES_GMAC256,
      WIFI_CIPHER_TYPE_UNKNOWN)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:277

   subtype wifi_bandwidth_t is unsigned;
   wifi_bandwidth_t_WIFI_BW_HT20 : constant wifi_bandwidth_t := 1;
   wifi_bandwidth_t_WIFI_BW20 : constant wifi_bandwidth_t := 1;
   wifi_bandwidth_t_WIFI_BW_HT40 : constant wifi_bandwidth_t := 2;
   wifi_bandwidth_t_WIFI_BW40 : constant wifi_bandwidth_t := 2;
   wifi_bandwidth_t_WIFI_BW80 : constant wifi_bandwidth_t := 3;
   wifi_bandwidth_t_WIFI_BW160 : constant wifi_bandwidth_t := 4;
   wifi_bandwidth_t_WIFI_BW80_BW80 : constant wifi_bandwidth_t := 5;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:290

   type wifi_ant_t is 
     (WIFI_ANT_ANT0,
      WIFI_ANT_ANT1,
      WIFI_ANT_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:299

   type wifi_he_ap_info_t is record
      bss_color : Extensions.Unsigned_6;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:305
      partial_bss_color : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:306
      bss_color_disabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:307
      bssid_index : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:308
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:309

   type anon_array1481 is array (0 .. 5) of aliased sys_ustdint_h.uint8_t;
   type anon_array1484 is array (0 .. 32) of aliased sys_ustdint_h.uint8_t;
   type wifi_ap_record_t is record
      bssid : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:315
      ssid : aliased anon_array1484;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:316
      primary : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:317
      second : aliased wifi_second_chan_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:318
      rssi : aliased sys_ustdint_h.int8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:319
      authmode : aliased wifi_auth_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:320
      pairwise_cipher : aliased wifi_cipher_type_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:321
      group_cipher : aliased wifi_cipher_type_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:322
      ant : aliased wifi_ant_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:323
      phy_11b : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:324
      phy_11g : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:325
      phy_11n : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:326
      phy_lr : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:327
      phy_11a : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:328
      phy_11ac : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:329
      phy_11ax : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:330
      wps : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:331
      ftm_responder : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:332
      ftm_initiator : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:333
      reserved : Extensions.Unsigned_22;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:334
      country : aliased wifi_country_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:335
      he_ap : aliased wifi_he_ap_info_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:336
      bandwidth : aliased wifi_bandwidth_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:337
      vht_ch_freq1 : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:338
      vht_ch_freq2 : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:341
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:343

   type wifi_scan_method_t is 
     (WIFI_FAST_SCAN,
      WIFI_ALL_CHANNEL_SCAN)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:351

   type wifi_sort_method_t is 
     (WIFI_CONNECT_AP_BY_SIGNAL,
      WIFI_CONNECT_AP_BY_SECURITY)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:359

   type wifi_scan_threshold_t is record
      rssi : aliased sys_ustdint_h.int8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:365
      authmode : aliased wifi_auth_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:366
      rssi_5g_adjustment : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:368
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:369

   type wifi_ps_type_t is 
     (WIFI_PS_NONE,
      WIFI_PS_MIN_MODEM,
      WIFI_PS_MAX_MODEM)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:378

   subtype wifi_band_t is unsigned;
   wifi_band_t_WIFI_BAND_2G : constant wifi_band_t := 1;
   wifi_band_t_WIFI_BAND_5G : constant wifi_band_t := 2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:386

   subtype wifi_band_mode_t is unsigned;
   wifi_band_mode_t_WIFI_BAND_MODE_2G_ONLY : constant wifi_band_mode_t := 1;
   wifi_band_mode_t_WIFI_BAND_MODE_5G_ONLY : constant wifi_band_mode_t := 2;
   wifi_band_mode_t_WIFI_BAND_MODE_AUTO : constant wifi_band_mode_t := 3;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:395

   subtype wifi_2g_channel_bit_t is unsigned;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_1 : constant wifi_2g_channel_bit_t := 2;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_2 : constant wifi_2g_channel_bit_t := 4;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_3 : constant wifi_2g_channel_bit_t := 8;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_4 : constant wifi_2g_channel_bit_t := 16;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_5 : constant wifi_2g_channel_bit_t := 32;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_6 : constant wifi_2g_channel_bit_t := 64;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_7 : constant wifi_2g_channel_bit_t := 128;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_8 : constant wifi_2g_channel_bit_t := 256;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_9 : constant wifi_2g_channel_bit_t := 512;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_10 : constant wifi_2g_channel_bit_t := 1024;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_11 : constant wifi_2g_channel_bit_t := 2048;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_12 : constant wifi_2g_channel_bit_t := 4096;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_13 : constant wifi_2g_channel_bit_t := 8192;
   wifi_2g_channel_bit_t_WIFI_CHANNEL_14 : constant wifi_2g_channel_bit_t := 16384;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:429

   subtype wifi_5g_channel_bit_t is unsigned;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_36 : constant wifi_5g_channel_bit_t := 2;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_40 : constant wifi_5g_channel_bit_t := 4;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_44 : constant wifi_5g_channel_bit_t := 8;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_48 : constant wifi_5g_channel_bit_t := 16;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_52 : constant wifi_5g_channel_bit_t := 32;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_56 : constant wifi_5g_channel_bit_t := 64;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_60 : constant wifi_5g_channel_bit_t := 128;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_64 : constant wifi_5g_channel_bit_t := 256;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_100 : constant wifi_5g_channel_bit_t := 512;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_104 : constant wifi_5g_channel_bit_t := 1024;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_108 : constant wifi_5g_channel_bit_t := 2048;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_112 : constant wifi_5g_channel_bit_t := 4096;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_116 : constant wifi_5g_channel_bit_t := 8192;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_120 : constant wifi_5g_channel_bit_t := 16384;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_124 : constant wifi_5g_channel_bit_t := 32768;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_128 : constant wifi_5g_channel_bit_t := 65536;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_132 : constant wifi_5g_channel_bit_t := 131072;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_136 : constant wifi_5g_channel_bit_t := 262144;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_140 : constant wifi_5g_channel_bit_t := 524288;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_144 : constant wifi_5g_channel_bit_t := 1048576;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_149 : constant wifi_5g_channel_bit_t := 2097152;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_153 : constant wifi_5g_channel_bit_t := 4194304;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_157 : constant wifi_5g_channel_bit_t := 8388608;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_161 : constant wifi_5g_channel_bit_t := 16777216;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_165 : constant wifi_5g_channel_bit_t := 33554432;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_169 : constant wifi_5g_channel_bit_t := 67108864;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_173 : constant wifi_5g_channel_bit_t := 134217728;
   wifi_5g_channel_bit_t_WIFI_CHANNEL_177 : constant wifi_5g_channel_bit_t := 268435456;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:461

   type wifi_protocols_t is record
      ghz_2g : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:475
      ghz_5g : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:476
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:477

   type wifi_bandwidths_t is record
      ghz_2g : aliased wifi_bandwidth_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:483
      ghz_5g : aliased wifi_bandwidth_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:484
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:485

   type wifi_pmf_config_t is record
      capable : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:491
      required : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:492
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:493

   type wifi_sae_pwe_method_t is 
     (WPA3_SAE_PWE_UNSPECIFIED,
      WPA3_SAE_PWE_HUNT_AND_PECK,
      WPA3_SAE_PWE_HASH_TO_ELEMENT,
      WPA3_SAE_PWE_BOTH)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:503

   type wifi_sae_pk_mode_t is 
     (WPA3_SAE_PK_MODE_AUTOMATIC,
      WPA3_SAE_PK_MODE_ONLY,
      WPA3_SAE_PK_MODE_DISABLED)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:512

   type wifi_bss_max_idle_config_t is record
      period : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:518
      protected_keep_alive : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:519
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:520

   type anon_array1517 is array (0 .. 31) of aliased sys_ustdint_h.uint8_t;
   type anon_array1520 is array (0 .. 63) of aliased sys_ustdint_h.uint8_t;
   type wifi_ap_config_t is record
      ssid : aliased anon_array1517;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:526
      password : aliased anon_array1520;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:527
      ssid_len : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:528
      channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:529
      authmode : aliased wifi_auth_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:530
      ssid_hidden : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:531
      max_connection : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:532
      beacon_interval : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:533
      csa_count : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:534
      dtim_period : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:535
      pairwise_cipher : aliased wifi_cipher_type_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:536
      ftm_responder : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:537
      pmf_cfg : aliased wifi_pmf_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:538
      sae_pwe_h2e : aliased wifi_sae_pwe_method_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:539
      transition_disable : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:540
      sae_ext : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:541
      bss_max_idle_cfg : aliased wifi_bss_max_idle_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:542
      gtk_rekey_interval : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:543
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:544

   type wifi_sta_config_t is record
      ssid : aliased anon_array1517;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:552
      password : aliased anon_array1520;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:553
      scan_method : aliased wifi_scan_method_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:554
      bssid_set : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:555
      bssid : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:556
      channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:557
      listen_interval : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:558
      sort_method : aliased wifi_sort_method_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:559
      threshold : aliased wifi_scan_threshold_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:560
      pmf_cfg : aliased wifi_pmf_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:561
      rm_enabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:562
      btm_enabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:563
      mbo_enabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:564
      ft_enabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:565
      owe_enabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:566
      transition_disable : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:567
      reserved1 : Extensions.Unsigned_26;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:568
      sae_pwe_h2e : aliased wifi_sae_pwe_method_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:569
      sae_pk_mode : aliased wifi_sae_pk_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:570
      failure_retry_cnt : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:571
      he_dcm_set : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:573
      he_dcm_max_constellation_tx : Extensions.Unsigned_2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:574
      he_dcm_max_constellation_rx : Extensions.Unsigned_2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:575
      he_mcs9_enabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:576
      he_su_beamformee_disabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:577
      he_trig_su_bmforming_feedback_disabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:578
      he_trig_mu_bmforming_partial_feedback_disabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:579
      he_trig_cqi_feedback_disabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:580
      vht_su_beamformee_disabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:581
      vht_mu_beamformee_disabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:582
      vht_mcs8_enabled : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:583
      reserved2 : Extensions.Unsigned_19;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:584
      sae_h2e_identifier : aliased anon_array1517;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:585
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:586

   type wifi_nan_config_t is record
      op_channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:592
      master_pref : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:593
      scan_time : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:594
      warm_up_sec : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:595
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:596

   type wifi_config_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ap : aliased wifi_ap_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:606
         when 1 =>
            sta : aliased wifi_sta_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:607
         when others =>
            nan : aliased wifi_nan_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:608
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:609

   type wifi_sta_info_t is record
      mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:615
      rssi : aliased sys_ustdint_h.int8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:616
      phy_11b : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:617
      phy_11g : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:618
      phy_11n : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:619
      phy_lr : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:620
      phy_11a : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:621
      phy_11ac : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:622
      phy_11ax : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:623
      is_mesh_child : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:624
      reserved : Extensions.Unsigned_24;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:625
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:626

   type wifi_storage_t is 
     (WIFI_STORAGE_FLASH,
      WIFI_STORAGE_RAM)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:634

   type wifi_vendor_ie_type_t is 
     (WIFI_VND_IE_TYPE_BEACON,
      WIFI_VND_IE_TYPE_PROBE_REQ,
      WIFI_VND_IE_TYPE_PROBE_RESP,
      WIFI_VND_IE_TYPE_ASSOC_REQ,
      WIFI_VND_IE_TYPE_ASSOC_RESP)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:647

   type wifi_vendor_ie_id_t is 
     (WIFI_VND_IE_ID_0,
      WIFI_VND_IE_ID_1)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:657

   type wifi_phy_mode_t is 
     (WIFI_PHY_MODE_LR,
      WIFI_PHY_MODE_11B,
      WIFI_PHY_MODE_11G,
      WIFI_PHY_MODE_11A,
      WIFI_PHY_MODE_HT20,
      WIFI_PHY_MODE_HT40,
      WIFI_PHY_MODE_HE20,
      WIFI_PHY_MODE_VHT20)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:673

   type anon_array1544 is array (0 .. 2) of aliased sys_ustdint_h.uint8_t;
   type anon_array1549 is array (0 .. 0) of aliased sys_ustdint_h.uint8_t;
   type vendor_ie_data_t is record
      element_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:681
      length : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:682
      vendor_oui : aliased anon_array1544;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:683
      vendor_oui_type : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:684
      payload : aliased anon_array1549;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:685
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:686

   type wifi_promiscuous_pkt_type_t is 
     (WIFI_PKT_MGMT,
      WIFI_PKT_CTRL,
      WIFI_PKT_DATA,
      WIFI_PKT_MISC)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:699

   type wifi_promiscuous_filter_t is record
      filter_mask : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:725
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:726

   type wifi_ant_gpio_t is record
      gpio_select : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:743
      gpio_num : Extensions.Unsigned_7;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:744
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:745

   type anon_array1561 is array (0 .. 3) of aliased wifi_ant_gpio_t;
   type wifi_ant_gpio_config_t is record
      gpio_cfg : aliased anon_array1561;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:752
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:753

   type wifi_ant_mode_t is 
     (WIFI_ANT_MODE_ANT0,
      WIFI_ANT_MODE_ANT1,
      WIFI_ANT_MODE_AUTO,
      WIFI_ANT_MODE_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:764

   type wifi_ant_config_t is record
      rx_ant_mode : aliased wifi_ant_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:771
      rx_ant_default : aliased wifi_ant_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:772
      tx_ant_mode : aliased wifi_ant_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:773
      enabled_ant0 : Extensions.Unsigned_4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:774
      enabled_ant1 : Extensions.Unsigned_4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:775
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:776

   type wifi_action_rx_cb_t is access function
        (arg1 : access sys_ustdint_h.uint8_t;
         arg2 : access sys_ustdint_h.uint8_t;
         arg3 : stddef_h.size_t;
         arg4 : sys_ustdint_h.uint8_t) return int
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:787

   type anon_array1575 is array (0 .. 0) of aliased sys_ustdint_h.uint8_t;
   type wifi_action_tx_req_t is record
      ifx : aliased wifi_interface_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:793
      dest_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:794
      c_type : aliased wifi_action_tx_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:795
      channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:796
      sec_channel : aliased wifi_second_chan_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:797
      wait_time_ms : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:798
      no_ack : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:799
      rx_cb : wifi_action_rx_cb_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:800
      op_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:801
      data_len : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:802
      data : aliased anon_array1575;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:803
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:804

   type wifi_roc_done_status_t is 
     (WIFI_ROC_DONE,
      WIFI_ROC_FAIL)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:810

   type wifi_action_roc_done_cb_t is access procedure
        (arg1 : sys_ustdint_h.uint32_t;
         arg2 : sys_ustdint_h.uint8_t;
         arg3 : wifi_roc_done_status_t)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:820

   type wifi_roc_req_t is record
      ifx : aliased wifi_interface_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:829
      c_type : aliased wifi_roc_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:830
      channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:831
      sec_channel : aliased wifi_second_chan_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:832
      wait_time_ms : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:833
      rx_cb : wifi_action_rx_cb_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:834
      op_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:835
      done_cb : wifi_action_roc_done_cb_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:836
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:837

   type wifi_ftm_initiator_cfg_t is record
      resp_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:844
      channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:845
      frm_count : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:846
      burst_period : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:847
      use_get_report_api : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:848
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:850

   type wifi_nan_svc_proto_t is 
     (WIFI_SVC_PROTO_RESERVED,
      WIFI_SVC_PROTO_BONJOUR,
      WIFI_SVC_PROTO_GENERIC,
      WIFI_SVC_PROTO_CSA_MATTER,
      WIFI_SVC_PROTO_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:876

   type anon_array1591 is array (0 .. 0) of aliased sys_ustdint_h.uint8_t;
   type wifi_nan_wfa_ssi_t is record
      wfa_oui : aliased anon_array1544;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:883
      proto : aliased wifi_nan_svc_proto_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:884
      payload : aliased anon_array1591;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:885
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:886

   type wifi_nan_service_type_t is 
     (NAN_PUBLISH_SOLICITED,
      NAN_PUBLISH_UNSOLICITED,
      NAN_SUBSCRIBE_ACTIVE,
      NAN_SUBSCRIBE_PASSIVE)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:897

   subtype anon_array1597 is Interfaces.C.char_array (0 .. 255);
   subtype anon_array1598 is Interfaces.C.char_array (0 .. 63);
   type wifi_nan_publish_cfg_t is record
      service_name : aliased anon_array1597;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:904
      c_type : aliased wifi_nan_service_type_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:905
      matching_filter : aliased anon_array1597;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:906
      svc_info : aliased anon_array1598;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:907
      single_replied_event : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:908
      datapath_reqd : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:909
      fsd_reqd : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:910
      fsd_gas : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:911
      reserved : Extensions.Unsigned_4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:912
      ssi_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:913
      ssi : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:914
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:915

   type wifi_nan_subscribe_cfg_t is record
      service_name : aliased anon_array1597;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:922
      c_type : aliased wifi_nan_service_type_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:923
      matching_filter : aliased anon_array1597;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:924
      svc_info : aliased anon_array1598;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:925
      single_match_event : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:926
      datapath_reqd : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:927
      fsd_reqd : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:928
      fsd_gas : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:929
      reserved : Extensions.Unsigned_4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:930
      ssi_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:931
      ssi : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:932
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:933

   type wifi_nan_followup_params_t is record
      inst_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:940
      peer_inst_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:941
      peer_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:942
      svc_info : aliased anon_array1598;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:943
      ssi_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:944
      ssi : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:945
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:946

   type wifi_nan_datapath_req_t is record
      pub_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:953
      peer_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:954
      confirm_required : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:955
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:956

   type wifi_nan_datapath_resp_t is record
      c_accept : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:963
      ndp_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:964
      peer_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:965
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:966

   type wifi_nan_datapath_end_req_t is record
      ndp_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:973
      peer_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:974
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:975

   subtype wifi_phy_rate_t is unsigned;
   wifi_phy_rate_t_WIFI_PHY_RATE_1M_L : constant wifi_phy_rate_t := 0;
   wifi_phy_rate_t_WIFI_PHY_RATE_2M_L : constant wifi_phy_rate_t := 1;
   wifi_phy_rate_t_WIFI_PHY_RATE_5M_L : constant wifi_phy_rate_t := 2;
   wifi_phy_rate_t_WIFI_PHY_RATE_11M_L : constant wifi_phy_rate_t := 3;
   wifi_phy_rate_t_WIFI_PHY_RATE_2M_S : constant wifi_phy_rate_t := 5;
   wifi_phy_rate_t_WIFI_PHY_RATE_5M_S : constant wifi_phy_rate_t := 6;
   wifi_phy_rate_t_WIFI_PHY_RATE_11M_S : constant wifi_phy_rate_t := 7;
   wifi_phy_rate_t_WIFI_PHY_RATE_48M : constant wifi_phy_rate_t := 8;
   wifi_phy_rate_t_WIFI_PHY_RATE_24M : constant wifi_phy_rate_t := 9;
   wifi_phy_rate_t_WIFI_PHY_RATE_12M : constant wifi_phy_rate_t := 10;
   wifi_phy_rate_t_WIFI_PHY_RATE_6M : constant wifi_phy_rate_t := 11;
   wifi_phy_rate_t_WIFI_PHY_RATE_54M : constant wifi_phy_rate_t := 12;
   wifi_phy_rate_t_WIFI_PHY_RATE_36M : constant wifi_phy_rate_t := 13;
   wifi_phy_rate_t_WIFI_PHY_RATE_18M : constant wifi_phy_rate_t := 14;
   wifi_phy_rate_t_WIFI_PHY_RATE_9M : constant wifi_phy_rate_t := 15;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS0_LGI : constant wifi_phy_rate_t := 16;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS1_LGI : constant wifi_phy_rate_t := 17;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS2_LGI : constant wifi_phy_rate_t := 18;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS3_LGI : constant wifi_phy_rate_t := 19;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS4_LGI : constant wifi_phy_rate_t := 20;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS5_LGI : constant wifi_phy_rate_t := 21;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS6_LGI : constant wifi_phy_rate_t := 22;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS7_LGI : constant wifi_phy_rate_t := 23;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS0_SGI : constant wifi_phy_rate_t := 24;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS1_SGI : constant wifi_phy_rate_t := 25;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS2_SGI : constant wifi_phy_rate_t := 26;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS3_SGI : constant wifi_phy_rate_t := 27;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS4_SGI : constant wifi_phy_rate_t := 28;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS5_SGI : constant wifi_phy_rate_t := 29;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS6_SGI : constant wifi_phy_rate_t := 30;
   wifi_phy_rate_t_WIFI_PHY_RATE_MCS7_SGI : constant wifi_phy_rate_t := 31;
   wifi_phy_rate_t_WIFI_PHY_RATE_LORA_250K : constant wifi_phy_rate_t := 41;
   wifi_phy_rate_t_WIFI_PHY_RATE_LORA_500K : constant wifi_phy_rate_t := 42;
   wifi_phy_rate_t_WIFI_PHY_RATE_MAX : constant wifi_phy_rate_t := 43;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1054

   type wifi_event_t is 
     (WIFI_EVENT_WIFI_READY,
      WIFI_EVENT_SCAN_DONE,
      WIFI_EVENT_STA_START,
      WIFI_EVENT_STA_STOP,
      WIFI_EVENT_STA_CONNECTED,
      WIFI_EVENT_STA_DISCONNECTED,
      WIFI_EVENT_STA_AUTHMODE_CHANGE,
      WIFI_EVENT_STA_WPS_ER_SUCCESS,
      WIFI_EVENT_STA_WPS_ER_FAILED,
      WIFI_EVENT_STA_WPS_ER_TIMEOUT,
      WIFI_EVENT_STA_WPS_ER_PIN,
      WIFI_EVENT_STA_WPS_ER_PBC_OVERLAP,
      WIFI_EVENT_AP_START,
      WIFI_EVENT_AP_STOP,
      WIFI_EVENT_AP_STACONNECTED,
      WIFI_EVENT_AP_STADISCONNECTED,
      WIFI_EVENT_AP_PROBEREQRECVED,
      WIFI_EVENT_FTM_REPORT,
      WIFI_EVENT_STA_BSS_RSSI_LOW,
      WIFI_EVENT_ACTION_TX_STATUS,
      WIFI_EVENT_ROC_DONE,
      WIFI_EVENT_STA_BEACON_TIMEOUT,
      WIFI_EVENT_CONNECTIONLESS_MODULE_WAKE_INTERVAL_START,
      WIFI_EVENT_AP_WPS_RG_SUCCESS,
      WIFI_EVENT_AP_WPS_RG_FAILED,
      WIFI_EVENT_AP_WPS_RG_TIMEOUT,
      WIFI_EVENT_AP_WPS_RG_PIN,
      WIFI_EVENT_AP_WPS_RG_PBC_OVERLAP,
      WIFI_EVENT_ITWT_SETUP,
      WIFI_EVENT_ITWT_TEARDOWN,
      WIFI_EVENT_ITWT_PROBE,
      WIFI_EVENT_ITWT_SUSPEND,
      WIFI_EVENT_TWT_WAKEUP,
      WIFI_EVENT_BTWT_SETUP,
      WIFI_EVENT_BTWT_TEARDOWN,
      WIFI_EVENT_NAN_STARTED,
      WIFI_EVENT_NAN_STOPPED,
      WIFI_EVENT_NAN_SVC_MATCH,
      WIFI_EVENT_NAN_REPLIED,
      WIFI_EVENT_NAN_RECEIVE,
      WIFI_EVENT_NDP_INDICATION,
      WIFI_EVENT_NDP_CONFIRM,
      WIFI_EVENT_NDP_TERMINATED,
      WIFI_EVENT_HOME_CHANNEL_CHANGE,
      WIFI_EVENT_STA_NEIGHBOR_REP,
      WIFI_EVENT_AP_WRONG_PASSWORD,
      WIFI_EVENT_STA_BEACON_OFFSET_UNSTABLE,
      WIFI_EVENT_DPP_URI_READY,
      WIFI_EVENT_DPP_CFG_RECVD,
      WIFI_EVENT_DPP_FAILED,
      WIFI_EVENT_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1125

   WIFI_EVENT : constant esp_event_base_h.esp_event_base_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1129
   with Import => True, 
        Convention => C, 
        External_Name => "WIFI_EVENT";

   type wifi_event_sta_scan_done_t is record
      status : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1136
      number : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1137
      scan_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1138
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1139

   type wifi_event_sta_connected_t is record
      ssid : aliased anon_array1517;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1145
      ssid_len : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1146
      bssid : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1147
      channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1148
      authmode : aliased wifi_auth_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1149
      aid : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1150
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1151

   type wifi_event_sta_disconnected_t is record
      ssid : aliased anon_array1517;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1157
      ssid_len : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1158
      bssid : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1159
      reason : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1160
      rssi : aliased sys_ustdint_h.int8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1161
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1162

   type wifi_event_sta_authmode_change_t is record
      old_mode : aliased wifi_auth_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1168
      new_mode : aliased wifi_auth_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1169
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1170

   type anon_array1625 is array (0 .. 7) of aliased sys_ustdint_h.uint8_t;
   type wifi_event_sta_wps_er_pin_t is record
      pin_code : aliased anon_array1625;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1176
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1177

   type wifi_event_sta_wps_fail_reason_t is 
     (WPS_FAIL_REASON_NORMAL,
      WPS_FAIL_REASON_RECV_M2D,
      WPS_FAIL_REASON_RECV_DEAUTH,
      WPS_FAIL_REASON_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1187

   type anon_struct1631 is record
      ssid : aliased anon_array1517;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1199
      passphrase : aliased anon_array1520;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1200
   end record
   with Convention => C_Pass_By_Copy;
   type anon_array1632 is array (0 .. 2) of aliased anon_struct1631;
   type wifi_event_sta_wps_er_success_t is record
      ap_cred_cnt : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1197
      ap_cred : aliased anon_array1632;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1201
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1202

   type wifi_event_ap_staconnected_t is record
      mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1208
      aid : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1209
      is_mesh_child : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1210
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1211

   type wifi_event_ap_stadisconnected_t is record
      mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1217
      aid : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1218
      is_mesh_child : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1219
      reason : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1220
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1221

   type wifi_event_ap_probe_req_rx_t is record
      rssi : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1227
      mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1228
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1229

   type wifi_event_bss_rssi_low_t is record
      rssi : aliased sys_ustdint_h.int32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1235
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1236

   type wifi_event_home_channel_change_t is record
      old_chan : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1242
      old_snd : aliased wifi_second_chan_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1243
      new_chan : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1244
      new_snd : aliased wifi_second_chan_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1245
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1246

   type wifi_ftm_status_t is 
     (FTM_STATUS_SUCCESS,
      FTM_STATUS_UNSUPPORTED,
      FTM_STATUS_CONF_REJECTED,
      FTM_STATUS_NO_RESPONSE,
      FTM_STATUS_FAIL,
      FTM_STATUS_NO_VALID_MSMT,
      FTM_STATUS_USER_TERM)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1260

   type wifi_ftm_report_entry_t is record
      dlog_token : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1270
      rssi : aliased sys_ustdint_h.int8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1271
      rtt : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1272
      t1 : aliased sys_ustdint_h.uint64_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1273
      t2 : aliased sys_ustdint_h.uint64_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1274
      t3 : aliased sys_ustdint_h.uint64_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1275
      t4 : aliased sys_ustdint_h.uint64_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1276
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1277

   type wifi_event_ftm_report_t is record
      peer_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1283
      status : aliased wifi_ftm_status_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1284
      rtt_raw : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1285
      rtt_est : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1286
      dist_est : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1287
      ftm_report_data : access wifi_ftm_report_entry_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1288
      ftm_report_num_entries : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1290
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1291

   type wifi_action_tx_status_type_t is 
     (WIFI_ACTION_TX_DONE,
      WIFI_ACTION_TX_FAILED,
      WIFI_ACTION_TX_DURATION_COMPLETED,
      WIFI_ACTION_TX_OP_CANCELLED)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1307

   type wifi_event_action_tx_status_t is record
      ifx : aliased wifi_interface_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1311
      context : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1312
      status : aliased wifi_action_tx_status_type_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1313
      op_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1314
      channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1315
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1316

   type wifi_event_roc_done_t is record
      context : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1322
      status : aliased wifi_roc_done_status_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1323
      op_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1324
      channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1325
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1326

   type wifi_event_ap_wps_rg_pin_t is record
      pin_code : aliased anon_array1625;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1332
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1333

   type wps_fail_reason_t is 
     (WPS_AP_FAIL_REASON_NORMAL,
      WPS_AP_FAIL_REASON_CONFIG,
      WPS_AP_FAIL_REASON_AUTH,
      WPS_AP_FAIL_REASON_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1343

   type wifi_event_ap_wps_rg_fail_reason_t is record
      reason : aliased wps_fail_reason_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1349
      peer_macaddr : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1350
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1351

   type wifi_event_ap_wps_rg_success_t is record
      peer_macaddr : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1357
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1358

   type anon_array1547 is array (0 .. 0) of aliased sys_ustdint_h.uint8_t;
   type wifi_event_nan_svc_match_t is record
      subscribe_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1364
      publish_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1365
      pub_if_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1366
      update_pub_id : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1367
      datapath_reqd : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1368
      fsd_reqd : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1369
      fsd_gas : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1370
      reserved : Extensions.Unsigned_5;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1371
      reserved_1 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1372
      reserved_2 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1373
      ssi_version : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1374
      ssi_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1375
      ssi : aliased anon_array1547;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1376
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1377

   type wifi_event_nan_replied_t is record
      publish_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1383
      subscribe_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1384
      sub_if_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1385
      reserved_1 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1386
      reserved_2 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1387
      ssi_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1388
      ssi : aliased anon_array1547;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1389
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1390

   type wifi_event_nan_receive_t is record
      inst_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1396
      peer_inst_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1397
      peer_if_mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1398
      peer_svc_info : aliased anon_array1520;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1399
      reserved_1 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1400
      reserved_2 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1401
      ssi_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1402
      ssi : aliased anon_array1547;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1403
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1404

   type wifi_event_ndp_indication_t is record
      publish_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1410
      ndp_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1411
      peer_nmi : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1412
      peer_ndi : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1413
      svc_info : aliased anon_array1520;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1414
      reserved_1 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1415
      reserved_2 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1416
      ssi_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1417
      ssi : aliased anon_array1547;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1418
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1419

   type wifi_event_ndp_confirm_t is record
      status : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1425
      ndp_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1426
      peer_nmi : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1427
      peer_ndi : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1428
      own_ndi : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1429
      svc_info : aliased anon_array1520;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1430
      reserved_1 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1431
      reserved_2 : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1432
      ssi_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1433
      ssi : aliased anon_array1547;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1434
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1435

   type wifi_event_ndp_terminated_t is record
      reason : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1441
      ndp_id : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1442
      init_ndi : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1443
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1444

   type wifi_event_neighbor_report_t is record
      report : aliased anon_array1520;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1450
      report_len : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1451
      n_report : aliased anon_array1547;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1452
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1453

   type wifi_event_ap_wrong_password_t is record
      mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1457
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1458

   type wifi_tx_rate_config_t is record
      phymode : aliased wifi_phy_mode_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1464
      rate : aliased wifi_phy_rate_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1465
      ersu : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1466
      dcm : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1468
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1469

   type wifi_reg_rule_t is record
      start_channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1480
      end_channel : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1481
      max_bandwidth : Extensions.Unsigned_3;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1482
      max_eirp : Extensions.Unsigned_6;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1483
      is_dfs : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1484
      reserved : Extensions.Unsigned_6;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1485
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1486

   type anon_array1690 is array (0 .. 1) of aliased wifi_reg_rule_t;
   type wifi_regulatory_t is record
      n_reg_rules : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1490
      reg_rules : aliased anon_array1690;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1491
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1492

   subtype anon_array1694 is Interfaces.C.char_array (0 .. 1);
   type wifi_regdomain_t is record
      cn : aliased anon_array1694;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1496
      regulatory_type : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1497
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1498

   type wifi_tx_status_t is 
     (WIFI_SEND_SUCCESS,
      WIFI_SEND_FAIL)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1506

   type wifi_tx_info_t is record
      des_addr : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1512
      src_addr : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1513
      ifidx : aliased wifi_interface_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1514
      data : access sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1515
      data_len : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1516
      rate : aliased wifi_phy_rate_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1517
      tx_status : aliased wifi_tx_status_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1518
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1519

   subtype esp_80211_tx_info_t is wifi_tx_info_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1521

   type wifi_event_sta_beacon_offset_unstable_t is record
      beacon_success_rate : aliased float;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1525
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1526

   subtype anon_array1704 is Interfaces.C.char_array (0 .. 0);
   type wifi_event_dpp_uri_ready_t is record
      uri_data_len : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1530
      uri : aliased anon_array1704;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1531
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1532

   type wifi_event_dpp_config_received_t is record
      wifi_cfg : aliased wifi_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1536
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1537

   type wifi_event_dpp_failed_t is record
      failure_reason : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1541
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_types_generic.h:1542

end esp_wifi_types_generic_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
