pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with esp_netif_types_h;
with esp_err_h;
with System;
with esp_wifi_types_generic_h;

package esp_wifi_default_h is

   function esp_netif_attach_wifi_station (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_attach_wifi_station";

   function esp_netif_attach_wifi_ap (esp_netif : access esp_netif_types_h.esp_netif_obj) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_attach_wifi_ap";

   function esp_wifi_set_default_wifi_sta_handlers return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "esp_wifi_set_default_wifi_sta_handlers";

   function esp_wifi_set_default_wifi_ap_handlers return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "esp_wifi_set_default_wifi_ap_handlers";

   function esp_wifi_set_default_wifi_nan_handlers return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "esp_wifi_set_default_wifi_nan_handlers";

   function esp_wifi_clear_default_wifi_driver_and_handlers (esp_netif : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "esp_wifi_clear_default_wifi_driver_and_handlers";

   function esp_netif_create_default_wifi_ap return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_create_default_wifi_ap";

   function esp_netif_create_default_wifi_sta return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_create_default_wifi_sta";

   function esp_netif_create_default_wifi_nan return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_create_default_wifi_nan";

   procedure esp_netif_destroy_default_wifi (esp_netif : System.Address)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_destroy_default_wifi";

   function esp_netif_create_wifi (wifi_if : esp_wifi_types_generic_h.wifi_interface_t; esp_netif_config : access constant esp_netif_types_h.esp_netif_inherent_config) return access esp_netif_types_h.esp_netif_obj  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_create_wifi";

   function esp_netif_create_default_wifi_mesh_netifs (p_netif_sta : System.Address; p_netif_ap : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_wifi/include/esp_wifi_default.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_create_default_wifi_mesh_netifs";

end esp_wifi_default_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
