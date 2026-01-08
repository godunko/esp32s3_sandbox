pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with esp_err_h;
with esp_netif_types_h;
with System;
with stddef_h;
with esp_event_base_h;
with sys_ustdint_h;
with esp_netif_ip_addr_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

package esp_netif_h is

   function esp_netif_init return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_init";

   function esp_netif_deinit return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_deinit";

   function esp_netif_new (esp_netif_config : access constant esp_netif_types_h.esp_netif_config) return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_new";

   procedure esp_netif_destroy (esp_netif : access esp_netif_types_h.esp_netif_obj)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_destroy";

   function esp_netif_set_driver_config (esp_netif : access esp_netif_types_h.esp_netif_obj; driver_config : access constant esp_netif_types_h.esp_netif_driver_ifconfig) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_set_driver_config";

   function esp_netif_attach (esp_netif : access esp_netif_types_h.esp_netif_obj; driver_handle : esp_netif_types_h.esp_netif_iodriver_handle) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_attach";

   function esp_netif_receive
     (esp_netif : access esp_netif_types_h.esp_netif_obj;
      buffer : System.Address;
      len : stddef_h.size_t;
      eb : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_receive";

   function esp_netif_tx_rx_event_enable (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_tx_rx_event_enable";

   function esp_netif_tx_rx_event_disable (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_tx_rx_event_disable";

   procedure esp_netif_action_start
     (esp_netif : System.Address;
      base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      data : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_action_start";

   procedure esp_netif_action_stop
     (esp_netif : System.Address;
      base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      data : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_action_stop";

   procedure esp_netif_action_connected
     (esp_netif : System.Address;
      base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      data : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_action_connected";

   procedure esp_netif_action_disconnected
     (esp_netif : System.Address;
      base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      data : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_action_disconnected";

   procedure esp_netif_action_got_ip
     (esp_netif : System.Address;
      base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      data : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_action_got_ip";

   procedure esp_netif_action_join_ip6_multicast_group
     (esp_netif : System.Address;
      base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      data : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_action_join_ip6_multicast_group";

   procedure esp_netif_action_leave_ip6_multicast_group
     (esp_netif : System.Address;
      base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      data : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_action_leave_ip6_multicast_group";

   procedure esp_netif_action_add_ip6_address
     (esp_netif : System.Address;
      base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      data : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_action_add_ip6_address";

   procedure esp_netif_action_remove_ip6_address
     (esp_netif : System.Address;
      base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      data : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_action_remove_ip6_address";

   function esp_netif_set_default_netif (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_set_default_netif";

   function esp_netif_get_default_netif return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_default_netif";

   function esp_netif_join_ip6_multicast_group (esp_netif : access esp_netif_types_h.esp_netif_obj; addr : access constant esp_netif_ip_addr_h.esp_ip6_addr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_join_ip6_multicast_group";

   function esp_netif_leave_ip6_multicast_group (esp_netif : access esp_netif_types_h.esp_netif_obj; addr : access constant esp_netif_ip_addr_h.esp_ip6_addr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_leave_ip6_multicast_group";

   function esp_netif_set_mac (esp_netif : access esp_netif_types_h.esp_netif_obj; mac : access sys_ustdint_h.uint8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_set_mac";

   function esp_netif_get_mac (esp_netif : access esp_netif_types_h.esp_netif_obj; mac : access sys_ustdint_h.uint8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_mac";

   function esp_netif_set_hostname (esp_netif : access esp_netif_types_h.esp_netif_obj; hostname : Interfaces.C.Strings.chars_ptr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_set_hostname";

   function esp_netif_get_hostname (esp_netif : access esp_netif_types_h.esp_netif_obj; hostname : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_hostname";

   function esp_netif_is_netif_up (esp_netif : access esp_netif_types_h.esp_netif_obj) return Extensions.bool  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_is_netif_up";

   function esp_netif_get_ip_info (esp_netif : access esp_netif_types_h.esp_netif_obj; ip_info : access esp_netif_types_h.esp_netif_ip_info_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_ip_info";

   function esp_netif_get_old_ip_info (esp_netif : access esp_netif_types_h.esp_netif_obj; ip_info : access esp_netif_types_h.esp_netif_ip_info_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:420
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_old_ip_info";

   function esp_netif_set_ip_info (esp_netif : access esp_netif_types_h.esp_netif_obj; ip_info : access constant esp_netif_types_h.esp_netif_ip_info_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:444
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_set_ip_info";

   function esp_netif_set_old_ip_info (esp_netif : access esp_netif_types_h.esp_netif_obj; ip_info : access constant esp_netif_types_h.esp_netif_ip_info_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:463
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_set_old_ip_info";

   function esp_netif_get_netif_impl_index (esp_netif : access esp_netif_types_h.esp_netif_obj) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:475
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_netif_impl_index";

   function esp_netif_get_netif_impl_name (esp_netif : access esp_netif_types_h.esp_netif_obj; name : Interfaces.C.Strings.chars_ptr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:491
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_netif_impl_name";

   function esp_netif_napt_enable (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:507
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_napt_enable";

   function esp_netif_napt_disable (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:519
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_napt_disable";

   function esp_netif_dhcps_option
     (esp_netif : access esp_netif_types_h.esp_netif_obj;
      opt_op : esp_netif_types_h.esp_netif_dhcp_option_mode_t;
      opt_id : esp_netif_types_h.esp_netif_dhcp_option_id_t;
      opt_val : System.Address;
      opt_len : sys_ustdint_h.uint32_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:559
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_dhcps_option";

   function esp_netif_dhcpc_option
     (esp_netif : access esp_netif_types_h.esp_netif_obj;
      opt_op : esp_netif_types_h.esp_netif_dhcp_option_mode_t;
      opt_id : esp_netif_types_h.esp_netif_dhcp_option_id_t;
      opt_val : System.Address;
      opt_len : sys_ustdint_h.uint32_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:592
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_dhcpc_option";

   function esp_netif_dhcpc_start (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:608
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_dhcpc_start";

   function esp_netif_dhcpc_stop (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:623
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_dhcpc_stop";

   function esp_netif_dhcpc_get_status (esp_netif : access esp_netif_types_h.esp_netif_obj; status : access esp_netif_types_h.esp_netif_dhcp_status_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:634
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_dhcpc_get_status";

   function esp_netif_dhcps_get_status (esp_netif : access esp_netif_types_h.esp_netif_obj; status : access esp_netif_types_h.esp_netif_dhcp_status_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:645
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_dhcps_get_status";

   function esp_netif_dhcps_start (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:657
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_dhcps_start";

   function esp_netif_dhcps_stop (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:670
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_dhcps_stop";

   function esp_netif_dhcps_get_clients_by_mac
     (esp_netif : access esp_netif_types_h.esp_netif_obj;
      num : int;
      mac_ip_pair : access esp_netif_types_h.esp_netif_pair_mac_ip_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:683
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_dhcps_get_clients_by_mac";

   function esp_netif_set_dns_info
     (esp_netif : access esp_netif_types_h.esp_netif_obj;
      c_type : esp_netif_types_h.esp_netif_dns_type_t;
      dns : access esp_netif_types_h.esp_netif_dns_info_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:717
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_set_dns_info";

   function esp_netif_get_dns_info
     (esp_netif : access esp_netif_types_h.esp_netif_obj;
      c_type : esp_netif_types_h.esp_netif_dns_type_t;
      dns : access esp_netif_types_h.esp_netif_dns_info_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:740
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_dns_info";

   function esp_netif_create_ip6_linklocal (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:760
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_create_ip6_linklocal";

   function esp_netif_get_ip6_linklocal (esp_netif : access esp_netif_types_h.esp_netif_obj; if_ip6 : access esp_netif_ip_addr_h.esp_ip6_addr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:776
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_ip6_linklocal";

   function esp_netif_get_ip6_global (esp_netif : access esp_netif_types_h.esp_netif_obj; if_ip6 : access esp_netif_ip_addr_h.esp_ip6_addr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:792
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_ip6_global";

   function esp_netif_get_all_ip6 (esp_netif : access esp_netif_types_h.esp_netif_obj; if_ip6 : access esp_netif_ip_addr_h.esp_ip6_addr) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:803
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_all_ip6";

   function esp_netif_get_all_preferred_ip6 (esp_netif : access esp_netif_types_h.esp_netif_obj; if_ip6 : access esp_netif_ip_addr_h.esp_ip6_addr) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:814
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_all_preferred_ip6";

   function esp_netif_add_ip6_address
     (esp_netif : access esp_netif_types_h.esp_netif_obj;
      addr : esp_netif_ip_addr_h.esp_ip6_addr_t;
      preferred : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:829
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_add_ip6_address";

   function esp_netif_remove_ip6_address (esp_netif : access esp_netif_types_h.esp_netif_obj; addr : access constant esp_netif_ip_addr_h.esp_ip6_addr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:843
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_remove_ip6_address";

   procedure esp_netif_set_ip4_addr
     (addr : access esp_netif_ip_addr_h.esp_ip4_addr;
      a : sys_ustdint_h.uint8_t;
      b : sys_ustdint_h.uint8_t;
      c : sys_ustdint_h.uint8_t;
      d : sys_ustdint_h.uint8_t)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:855
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_set_ip4_addr";

   function esp_ip4addr_ntoa
     (addr : access constant esp_netif_ip_addr_h.esp_ip4_addr;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : int) return Interfaces.C.Strings.chars_ptr  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:867
   with Import => True, 
        Convention => C, 
        External_Name => "esp_ip4addr_ntoa";

   function esp_ip4addr_aton (addr : Interfaces.C.Strings.chars_ptr) return sys_ustdint_h.uint32_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:876
   with Import => True, 
        Convention => C, 
        External_Name => "esp_ip4addr_aton";

   function esp_netif_str_to_ip4 (src : Interfaces.C.Strings.chars_ptr; dst : access esp_netif_ip_addr_h.esp_ip4_addr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:888
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_str_to_ip4";

   function esp_netif_str_to_ip6 (src : Interfaces.C.Strings.chars_ptr; dst : access esp_netif_ip_addr_h.esp_ip6_addr) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:901
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_str_to_ip6";

   function esp_netif_get_io_driver (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_netif_types_h.esp_netif_iodriver_handle  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:914
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_io_driver";

   function esp_netif_get_handle_from_ifkey (if_key : Interfaces.C.Strings.chars_ptr) return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:923
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_handle_from_ifkey";

   function esp_netif_get_flags (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_netif_types_h.esp_netif_flags_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:932
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_flags";

   function esp_netif_get_ifkey (esp_netif : access esp_netif_types_h.esp_netif_obj) return Interfaces.C.Strings.chars_ptr  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:941
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_ifkey";

   function esp_netif_get_desc (esp_netif : access esp_netif_types_h.esp_netif_obj) return Interfaces.C.Strings.chars_ptr  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:950
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_desc";

   function esp_netif_get_route_prio (esp_netif : access esp_netif_types_h.esp_netif_obj) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:959
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_route_prio";

   function esp_netif_set_route_prio (esp_netif : access esp_netif_types_h.esp_netif_obj; route_prio : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:969
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_set_route_prio";

   function esp_netif_get_event_id (esp_netif : access esp_netif_types_h.esp_netif_obj; event_type : esp_netif_types_h.esp_netif_ip_event_type_t) return sys_ustdint_h.int32_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:981
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_event_id";

   function esp_netif_next (esp_netif : access esp_netif_types_h.esp_netif_obj) return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:1000
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_next";

   function esp_netif_next_unsafe (esp_netif : access esp_netif_types_h.esp_netif_obj) return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:1013
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_next_unsafe";

   type esp_netif_find_predicate_t is access function (arg1 : access esp_netif_types_h.esp_netif_obj; arg2 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:1019

   function esp_netif_find_if (fn : esp_netif_find_predicate_t; ctx : System.Address) return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:1029
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_find_if";

   function esp_netif_get_nr_of_ifs return stddef_h.size_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:1036
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_get_nr_of_ifs";

   procedure esp_netif_netstack_buf_ref (netstack_buf : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:1044
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_netstack_buf_ref";

   procedure esp_netif_netstack_buf_free (netstack_buf : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:1052
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_netstack_buf_free";

   type esp_netif_callback_fn is access function (arg1 : System.Address) return esp_err_h.esp_err_t
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:1058

   function esp_netif_tcpip_exec (fn : esp_netif_callback_fn; ctx : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif.h:1066
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_tcpip_exec";

end esp_netif_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
