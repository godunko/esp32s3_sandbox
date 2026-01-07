pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sd_protocol_types_h;
with esp_err_h;
limited with sys_reent_h;
with System;
with stddef_h;
with sys_ustdint_h;
with freertos_portmacro_h;

package sdmmc_cmd_h is

   --  unsupported macro: SDMMC_IO_FIXED_ADDR BIT(31)
   function sdmmc_card_init (host : access constant sd_protocol_types_h.sdmmc_host_t; out_card : access sd_protocol_types_h.sdmmc_card_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_card_init";

   procedure sdmmc_card_print_info (stream : access sys_reent_h.uu_sFILE; card : access constant sd_protocol_types_h.sdmmc_card_t)  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_card_print_info";

   function sdmmc_get_status (card : access sd_protocol_types_h.sdmmc_card_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_get_status";

   function sdmmc_write_sectors
     (card : access sd_protocol_types_h.sdmmc_card_t;
      src : System.Address;
      start_sector : stddef_h.size_t;
      sector_count : stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_write_sectors";

   function sdmmc_read_sectors
     (card : access sd_protocol_types_h.sdmmc_card_t;
      dst : System.Address;
      start_sector : stddef_h.size_t;
      sector_count : stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_read_sectors";

   function sdmmc_erase_sectors
     (card : access sd_protocol_types_h.sdmmc_card_t;
      start_sector : stddef_h.size_t;
      sector_count : stddef_h.size_t;
      arg : sd_protocol_types_h.sdmmc_erase_arg_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_erase_sectors";

   function sdmmc_can_discard (card : access sd_protocol_types_h.sdmmc_card_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_can_discard";

   function sdmmc_can_trim (card : access sd_protocol_types_h.sdmmc_card_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_can_trim";

   function sdmmc_mmc_can_sanitize (card : access sd_protocol_types_h.sdmmc_card_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_mmc_can_sanitize";

   function sdmmc_mmc_sanitize (card : access sd_protocol_types_h.sdmmc_card_t; timeout_ms : sys_ustdint_h.uint32_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_mmc_sanitize";

   function sdmmc_full_erase (card : access sd_protocol_types_h.sdmmc_card_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_full_erase";

   function sdmmc_io_read_byte
     (card : access sd_protocol_types_h.sdmmc_card_t;
      c_function : sys_ustdint_h.uint32_t;
      reg : sys_ustdint_h.uint32_t;
      out_byte : access sys_ustdint_h.uint8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_read_byte";

   function sdmmc_io_write_byte
     (card : access sd_protocol_types_h.sdmmc_card_t;
      c_function : sys_ustdint_h.uint32_t;
      reg : sys_ustdint_h.uint32_t;
      in_byte : sys_ustdint_h.uint8_t;
      out_byte : access sys_ustdint_h.uint8_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_write_byte";

   function sdmmc_io_read_bytes
     (card : access sd_protocol_types_h.sdmmc_card_t;
      c_function : sys_ustdint_h.uint32_t;
      addr : sys_ustdint_h.uint32_t;
      dst : System.Address;
      size : stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_read_bytes";

   function sdmmc_io_write_bytes
     (card : access sd_protocol_types_h.sdmmc_card_t;
      c_function : sys_ustdint_h.uint32_t;
      addr : sys_ustdint_h.uint32_t;
      src : System.Address;
      size : stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_write_bytes";

   function sdmmc_io_read_blocks
     (card : access sd_protocol_types_h.sdmmc_card_t;
      c_function : sys_ustdint_h.uint32_t;
      addr : sys_ustdint_h.uint32_t;
      dst : System.Address;
      size : stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_read_blocks";

   function sdmmc_io_write_blocks
     (card : access sd_protocol_types_h.sdmmc_card_t;
      c_function : sys_ustdint_h.uint32_t;
      addr : sys_ustdint_h.uint32_t;
      src : System.Address;
      size : stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_write_blocks";

   function sdmmc_io_enable_int (card : access sd_protocol_types_h.sdmmc_card_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_enable_int";

   function sdmmc_io_wait_int (card : access sd_protocol_types_h.sdmmc_card_t; timeout_ticks : freertos_portmacro_h.TickType_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_wait_int";

   function sdmmc_io_get_cis_data
     (card : access sd_protocol_types_h.sdmmc_card_t;
      out_buffer : access sys_ustdint_h.uint8_t;
      buffer_size : stddef_h.size_t;
      inout_cis_size : access stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_get_cis_data";

   function sdmmc_io_print_cis_info
     (buffer : access sys_ustdint_h.uint8_t;
      buffer_size : stddef_h.size_t;
      fp : access sys_reent_h.uu_sFILE) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sdmmc_cmd.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "sdmmc_io_print_cis_info";

end sdmmc_cmd_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
