pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with esp_netif_ip_addr_h;
with esp_event_base_h;
with Interfaces.C.Extensions;
with sys_ustdint_h;
with stddef_h;
with Interfaces.C.Strings;
with System;
with esp_err_h;

package esp_netif_types_h is

   ESP_ERR_ESP_NETIF_BASE : constant := 16#5000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:23
   --  unsupported macro: ESP_ERR_ESP_NETIF_INVALID_PARAMS ESP_ERR_ESP_NETIF_BASE + 0x01
   --  unsupported macro: ESP_ERR_ESP_NETIF_IF_NOT_READY ESP_ERR_ESP_NETIF_BASE + 0x02
   --  unsupported macro: ESP_ERR_ESP_NETIF_DHCPC_START_FAILED ESP_ERR_ESP_NETIF_BASE + 0x03
   --  unsupported macro: ESP_ERR_ESP_NETIF_DHCP_ALREADY_STARTED ESP_ERR_ESP_NETIF_BASE + 0x04
   --  unsupported macro: ESP_ERR_ESP_NETIF_DHCP_ALREADY_STOPPED ESP_ERR_ESP_NETIF_BASE + 0x05
   --  unsupported macro: ESP_ERR_ESP_NETIF_NO_MEM ESP_ERR_ESP_NETIF_BASE + 0x06
   --  unsupported macro: ESP_ERR_ESP_NETIF_DHCP_NOT_STOPPED ESP_ERR_ESP_NETIF_BASE + 0x07
   --  unsupported macro: ESP_ERR_ESP_NETIF_DRIVER_ATTACH_FAILED ESP_ERR_ESP_NETIF_BASE + 0x08
   --  unsupported macro: ESP_ERR_ESP_NETIF_INIT_FAILED ESP_ERR_ESP_NETIF_BASE + 0x09
   --  unsupported macro: ESP_ERR_ESP_NETIF_DNS_NOT_CONFIGURED ESP_ERR_ESP_NETIF_BASE + 0x0A
   --  unsupported macro: ESP_ERR_ESP_NETIF_MLD6_FAILED ESP_ERR_ESP_NETIF_BASE + 0x0B
   --  unsupported macro: ESP_ERR_ESP_NETIF_IP6_ADDR_FAILED ESP_ERR_ESP_NETIF_BASE + 0x0C
   --  unsupported macro: ESP_ERR_ESP_NETIF_DHCPS_START_FAILED ESP_ERR_ESP_NETIF_BASE + 0x0D
   --  unsupported macro: ESP_ERR_ESP_NETIF_TX_FAILED ESP_ERR_ESP_NETIF_BASE + 0x0E

   ESP_NETIF_BR_FLOOD : constant := -1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:44
   ESP_NETIF_BR_DROP : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:45
   ESP_NETIF_BR_FDW_CPU : constant := (2 ** 63);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:46

   type esp_netif_obj is null record;   -- incomplete struct

   subtype esp_netif_t is esp_netif_obj;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:51

   type esp_netif_dns_type_t is 
     (ESP_NETIF_DNS_MAIN,
      ESP_NETIF_DNS_BACKUP,
      ESP_NETIF_DNS_FALLBACK,
      ESP_NETIF_DNS_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:60

   type esp_netif_dns_info_t is record
      ip : aliased esp_netif_ip_addr_h.esp_ip_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:65

   type esp_netif_dhcp_status_t is 
     (ESP_NETIF_DHCP_INIT,
      ESP_NETIF_DHCP_STARTED,
      ESP_NETIF_DHCP_STOPPED,
      ESP_NETIF_DHCP_STATUS_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:73

   type esp_netif_dhcp_option_mode_t is 
     (ESP_NETIF_OP_START,
      ESP_NETIF_OP_SET,
      ESP_NETIF_OP_GET,
      ESP_NETIF_OP_MAX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:82

   subtype esp_netif_dhcp_option_id_t is unsigned;
   esp_netif_dhcp_option_id_t_ESP_NETIF_SUBNET_MASK : constant esp_netif_dhcp_option_id_t := 1;
   esp_netif_dhcp_option_id_t_ESP_NETIF_DOMAIN_NAME_SERVER : constant esp_netif_dhcp_option_id_t := 6;
   esp_netif_dhcp_option_id_t_ESP_NETIF_ROUTER_SOLICITATION_ADDRESS : constant esp_netif_dhcp_option_id_t := 32;
   esp_netif_dhcp_option_id_t_ESP_NETIF_REQUESTED_IP_ADDRESS : constant esp_netif_dhcp_option_id_t := 50;
   esp_netif_dhcp_option_id_t_ESP_NETIF_IP_ADDRESS_LEASE_TIME : constant esp_netif_dhcp_option_id_t := 51;
   esp_netif_dhcp_option_id_t_ESP_NETIF_IP_REQUEST_RETRY_TIME : constant esp_netif_dhcp_option_id_t := 52;
   esp_netif_dhcp_option_id_t_ESP_NETIF_VENDOR_CLASS_IDENTIFIER : constant esp_netif_dhcp_option_id_t := 60;
   esp_netif_dhcp_option_id_t_ESP_NETIF_VENDOR_SPECIFIC_INFO : constant esp_netif_dhcp_option_id_t := 43;
   esp_netif_dhcp_option_id_t_ESP_NETIF_CAPTIVEPORTAL_URI : constant esp_netif_dhcp_option_id_t := 114;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:95

   type ip_event_t is 
     (IP_EVENT_STA_GOT_IP,
      IP_EVENT_STA_LOST_IP,
      IP_EVENT_AP_STAIPASSIGNED,
      IP_EVENT_GOT_IP6,
      IP_EVENT_ETH_GOT_IP,
      IP_EVENT_ETH_LOST_IP,
      IP_EVENT_PPP_GOT_IP,
      IP_EVENT_PPP_LOST_IP,
      IP_EVENT_TX_RX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:108

   IP_EVENT : constant esp_event_base_h.esp_event_base_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "IP_EVENT";

   type esp_netif_ip_info_t is record
      ip : aliased esp_netif_ip_addr_h.esp_ip4_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:116
      netmask : aliased esp_netif_ip_addr_h.esp_ip4_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:117
      gw : aliased esp_netif_ip_addr_h.esp_ip4_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:118
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:119

   type esp_netif_ip6_info_t is record
      ip : aliased esp_netif_ip_addr_h.esp_ip6_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:124
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:125

   type ip_event_got_ip_t is record
      esp_netif : access esp_netif_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:133
      ip_info : aliased esp_netif_ip_info_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:134
      ip_changed : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:135
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:136

   type ip_event_got_ip6_t is record
      esp_netif : access esp_netif_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:140
      ip6_info : aliased esp_netif_ip6_info_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:141
      ip_index : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:142
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:143

   type ip_event_add_ip6_t is record
      addr : aliased esp_netif_ip_addr_h.esp_ip6_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:147
      preferred : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:148
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:149

   type anon_array1481 is array (0 .. 5) of aliased sys_ustdint_h.uint8_t;
   type ip_event_ap_staipassigned_t is record
      esp_netif : access esp_netif_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:153
      ip : aliased esp_netif_ip_addr_h.esp_ip4_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:154
      mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:155
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:156

   type esp_netif_tx_rx_direction_t is 
     (ESP_NETIF_TX,
      ESP_NETIF_RX)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:161

   type ip_event_tx_rx_t is record
      esp_netif : access esp_netif_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:166
      len : aliased stddef_h.size_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:167
      dir : aliased esp_netif_tx_rx_direction_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:168
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:169

   subtype esp_netif_flags is unsigned;
   esp_netif_flags_ESP_NETIF_DHCP_CLIENT : constant esp_netif_flags := 1;
   esp_netif_flags_ESP_NETIF_DHCP_SERVER : constant esp_netif_flags := 2;
   esp_netif_flags_ESP_NETIF_FLAG_AUTOUP : constant esp_netif_flags := 4;
   esp_netif_flags_ESP_NETIF_FLAG_GARP : constant esp_netif_flags := 8;
   esp_netif_flags_ESP_NETIF_FLAG_EVENT_IP_MODIFIED : constant esp_netif_flags := 16;
   esp_netif_flags_ESP_NETIF_FLAG_IS_PPP : constant esp_netif_flags := 32;
   esp_netif_flags_ESP_NETIF_FLAG_IS_BRIDGE : constant esp_netif_flags := 64;
   esp_netif_flags_ESP_NETIF_FLAG_MLDV6_REPORT : constant esp_netif_flags := 128;
   esp_netif_flags_ESP_NETIF_FLAG_IPV6_AUTOCONFIG_ENABLED : constant esp_netif_flags := 256;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:172

   subtype esp_netif_flags_t is esp_netif_flags;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:182

   subtype esp_netif_ip_event_type is unsigned;
   esp_netif_ip_event_type_ESP_NETIF_IP_EVENT_GOT_IP : constant esp_netif_ip_event_type := 1;
   esp_netif_ip_event_type_ESP_NETIF_IP_EVENT_LOST_IP : constant esp_netif_ip_event_type := 2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:184

   subtype esp_netif_ip_event_type_t is esp_netif_ip_event_type;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:187

   type bridgeif_config is record
      max_fdb_dyn_entries : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:192
      max_fdb_sta_entries : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:193
      max_ports : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:194
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:191

   subtype bridgeif_config_t is bridgeif_config;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:195

   type esp_netif_inherent_config is record
      flags : aliased esp_netif_flags_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:209
      mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:210
      ip_info : access constant esp_netif_ip_info_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:211
      get_ip_event : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:212
      lost_ip_event : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:213
      if_key : Interfaces.C.Strings.chars_ptr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:214
      if_desc : Interfaces.C.Strings.chars_ptr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:215
      route_prio : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:216
      bridge_info : access bridgeif_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:220
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:208

   subtype esp_netif_inherent_config_t is esp_netif_inherent_config;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:221

   type esp_netif_config;
   subtype esp_netif_config_t is esp_netif_config;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:223

   type esp_netif_iodriver_handle is new System.Address;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:228

   type esp_netif_driver_base_s is record
      post_attach : access function (arg1 : access esp_netif_t; arg2 : esp_netif_iodriver_handle) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:235
      netif : access esp_netif_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:236
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:234

   subtype esp_netif_driver_base_t is esp_netif_driver_base_s;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:237

   type esp_netif_driver_ifconfig is record
      handle : esp_netif_iodriver_handle;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:243
      transmit : access function
           (arg1 : System.Address;
            arg2 : System.Address;
            arg3 : stddef_h.size_t) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:244
      transmit_wrap : access function
           (arg1 : System.Address;
            arg2 : System.Address;
            arg3 : stddef_h.size_t;
            arg4 : System.Address) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:245
      driver_free_rx_buffer : access procedure (arg1 : System.Address; arg2 : System.Address);  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:246
      driver_set_mac_filter : access function
           (arg1 : System.Address;
            arg2 : access sys_ustdint_h.uint8_t;
            arg3 : stddef_h.size_t;
            arg4 : Extensions.bool) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:247
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:242

   subtype esp_netif_driver_ifconfig_t is esp_netif_driver_ifconfig;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:250

   type esp_netif_netstack_config is null record;   -- incomplete struct

   subtype esp_netif_netstack_config_t is esp_netif_netstack_config;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:256

   type esp_netif_config is record
      base : access constant esp_netif_inherent_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:262
      driver : access constant esp_netif_driver_ifconfig_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:263
      stack : access constant esp_netif_netstack_config_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:264
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:261

   type esp_netif_pair_mac_ip_t is record
      mac : aliased anon_array1481;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:271
      ip : aliased esp_netif_ip_addr_h.esp_ip4_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:272
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:273

   type esp_netif_receive_t is access function
        (arg1 : access esp_netif_t;
         arg2 : System.Address;
         arg3 : stddef_h.size_t;
         arg4 : System.Address) return esp_err_h.esp_err_t
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_types.h:278

end esp_netif_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
