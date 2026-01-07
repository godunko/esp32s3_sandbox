pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with soc_gpio_num_h;
with sys_ustdint_h;
with Interfaces.C.Extensions;
with esp_err_h;
with stddef_h;
with sd_protocol_types_h;
with freertos_portmacro_h;
limited with esp_dma_utils_h;
with System;

package driver_sdmmc_host_h is

   --  unsupported macro: SDMMC_SLOT_FLAG_INTERNAL_PULLUP BIT(0)
   --  unsupported macro: SDMMC_SLOT_FLAG_WP_ACTIVE_HIGH BIT(1)
   --  unsupported macro: SDMMC_SLOT_FLAG_UHS1 BIT(2)
   type anon_union2607 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            gpio_cd : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:39
         when others =>
            cd : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:40
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_union2608 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            gpio_wp : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:43
         when others =>
            wp : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:44
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type sdmmc_slot_config_t is record
      clk : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:28
      cmd : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:29
      d0 : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:30
      d1 : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:31
      d2 : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:32
      d3 : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:33
      d4 : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:34
      d5 : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:35
      d6 : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:36
      d7 : aliased soc_gpio_num_h.gpio_num_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:37
      anon6291 : aliased anon_union2607;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:41
      anon6295 : aliased anon_union2608;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:45
      width : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:46
      flags : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:60

   type sdmmc_host_state_t is record
      host_initialized : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:66
      num_of_init_slots : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:67
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:68

   function sdmmc_host_init return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_init";

   function sdmmc_host_init_slot (slot : int; slot_config : access constant sdmmc_slot_config_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_init_slot";

   function sdmmc_host_set_bus_width (slot : int; width : stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_set_bus_width";

   function sdmmc_host_get_slot_width (slot : int) return stddef_h.size_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_get_slot_width";

   function sdmmc_host_set_card_clk (slot : int; freq_khz : sys_ustdint_h.uint32_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_set_card_clk";

   function sdmmc_host_set_bus_ddr_mode (slot : int; ddr_enabled : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_set_bus_ddr_mode";

   function sdmmc_host_set_cclk_always_on (slot : int; cclk_always_on : Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_set_cclk_always_on";

   function sdmmc_host_do_transaction (slot : int; cmdinfo : access sd_protocol_types_h.sdmmc_command_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_do_transaction";

   function sdmmc_host_io_int_enable (slot : int) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_io_int_enable";

   function sdmmc_host_io_int_wait (slot : int; timeout_ticks : freertos_portmacro_h.TickType_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_io_int_wait";

   function sdmmc_host_deinit_slot (slot : int) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_deinit_slot";

   function sdmmc_host_deinit return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_deinit";

   function sdmmc_host_get_real_freq (slot : int; real_freq_khz : access int) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_get_real_freq";

   function sdmmc_host_set_input_delay (slot : int; delay_phase : sd_protocol_types_h.sdmmc_delay_phase_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_set_input_delay";

   function sdmmc_host_get_dma_info (slot : int; dma_mem_info : access esp_dma_utils_h.esp_dma_mem_info_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_get_dma_info";

   function sdmmc_host_check_buffer_alignment
     (slot : int;
      buf : System.Address;
      size : stddef_h.size_t) return Extensions.bool  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_check_buffer_alignment";

   function sdmmc_host_is_slot_set_to_uhs1 (slot : int; is_uhs1 : access Extensions.bool) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:312
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_is_slot_set_to_uhs1";

   function sdmmc_host_get_state (state : access sdmmc_host_state_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_host.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_host_get_state";

end driver_sdmmc_host_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
