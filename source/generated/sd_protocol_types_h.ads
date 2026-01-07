pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with sys_ustdint_h;
with System;
with stddef_h;
with esp_err_h;
with freertos_portmacro_h;
with sd_pwr_ctrl_h;
limited with esp_dma_utils_h;

package sd_protocol_types_h is

   SCF_ITSDONE : constant := 16#0001#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:124
   --  arg-macro: function SCF_CMD (flags)
   --    return (flags) and 16#00f0#;

   SCF_CMD_AC : constant := 16#0000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:126
   SCF_CMD_ADTC : constant := 16#0010#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:127
   SCF_CMD_BC : constant := 16#0020#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:128
   SCF_CMD_BCR : constant := 16#0030#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:129
   SCF_CMD_READ : constant := 16#0040#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:130
   SCF_RSP_BSY : constant := 16#0100#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:131
   SCF_RSP_136 : constant := 16#0200#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:132
   SCF_RSP_CRC : constant := 16#0400#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:133
   SCF_RSP_IDX : constant := 16#0800#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:134
   SCF_RSP_PRESENT : constant := 16#1000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:135

   SCF_RSP_R0 : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:137
   --  unsupported macro: SCF_RSP_R1 (SCF_RSP_PRESENT|SCF_RSP_CRC|SCF_RSP_IDX)
   --  unsupported macro: SCF_RSP_R1B (SCF_RSP_PRESENT|SCF_RSP_CRC|SCF_RSP_IDX|SCF_RSP_BSY)
   --  unsupported macro: SCF_RSP_R2 (SCF_RSP_PRESENT|SCF_RSP_CRC|SCF_RSP_136)
   --  unsupported macro: SCF_RSP_R3 (SCF_RSP_PRESENT)
   --  unsupported macro: SCF_RSP_R4 (SCF_RSP_PRESENT)
   --  unsupported macro: SCF_RSP_R5 (SCF_RSP_PRESENT|SCF_RSP_CRC|SCF_RSP_IDX)
   --  unsupported macro: SCF_RSP_R5B (SCF_RSP_PRESENT|SCF_RSP_CRC|SCF_RSP_IDX|SCF_RSP_BSY)
   --  unsupported macro: SCF_RSP_R6 (SCF_RSP_PRESENT|SCF_RSP_CRC|SCF_RSP_IDX)
   --  unsupported macro: SCF_RSP_R7 (SCF_RSP_PRESENT|SCF_RSP_CRC|SCF_RSP_IDX)

   SCF_WAIT_BUSY : constant := 16#2000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:148
   --  unsupported macro: SDMMC_HOST_FLAG_1BIT BIT(0)
   --  unsupported macro: SDMMC_HOST_FLAG_4BIT BIT(1)
   --  unsupported macro: SDMMC_HOST_FLAG_8BIT BIT(2)
   --  unsupported macro: SDMMC_HOST_FLAG_SPI BIT(3)
   --  unsupported macro: SDMMC_HOST_FLAG_DDR BIT(4)
   --  unsupported macro: SDMMC_HOST_FLAG_DEINIT_ARG BIT(5)
   --  unsupported macro: SDMMC_HOST_FLAG_ALLOC_ALIGNED_BUF BIT(6)

   SDMMC_FREQ_DEFAULT : constant := 20000;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:215
   SDMMC_FREQ_HIGHSPEED : constant := 40000;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:216
   SDMMC_FREQ_PROBING : constant := 400;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:217
   SDMMC_FREQ_52M : constant := 52000;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:218
   SDMMC_FREQ_26M : constant := 26000;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:219
   SDMMC_FREQ_DDR50 : constant := 50000;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:220
   SDMMC_FREQ_SDR50 : constant := 100000;  --  /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:221

   type sdmmc_csd_t is record
      csd_ver : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:41
      mmc_ver : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:42
      capacity : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:43
      sector_size : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:44
      read_block_len : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:45
      card_command_class : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:46
      tr_speed : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:48

   subtype anon_array855 is Interfaces.C.char_array (0 .. 7);
   type sdmmc_cid_t is record
      mfg_id : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:54
      oem_id : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:55
      name : aliased anon_array855;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:56
      revision : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:57
      serial : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:58
      date : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:60

   type sdmmc_scr_t is record
      sd_spec : Extensions.Unsigned_4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:67
      erase_mem_state : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:68
      bus_width : Extensions.Unsigned_4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:69
      reserved : Extensions.Unsigned_23;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:70
      rsvd_mnf : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:71
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:72

   type sdmmc_ssr_t is record
      alloc_unit_kb : aliased unsigned_short;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:79
      erase_size_au : aliased unsigned_short;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:80
      cur_bus_width : Extensions.Unsigned_2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:81
      discard_support : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:82
      fule_support : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:83
      erase_timeout : Extensions.Unsigned_6;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:84
      erase_offset : Extensions.Unsigned_2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:85
      reserved : Extensions.Unsigned_20;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:86
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:87

   type sdmmc_ext_csd_t is record
      rev : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:93
      power_class : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:94
      erase_mem_state : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:95
      sec_feature : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:96
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:97

   type sdmmc_response_t is array (0 .. 3) of aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:102

   type anon_array2420 is array (0 .. 15) of aliased sys_ustdint_h.uint32_t;
   type sdmmc_switch_func_rsp_t is record
      data : aliased anon_array2420;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:108
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:109

   type sdmmc_command_t is record
      opcode : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:115
      arg : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:116
      response : aliased sdmmc_response_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:117
      data : System.Address;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:118
      datalen : aliased stddef_h.size_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:119
      buflen : aliased stddef_h.size_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:120
      blklen : aliased stddef_h.size_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:121
      flags : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:122
      error : aliased esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:150
      timeout_ms : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:151
      volt_switch_cb : access function (arg1 : System.Address; arg2 : int) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:152
      volt_switch_cb_arg : System.Address;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:153
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:154

   type sdmmc_delay_phase_t is
     (SDMMC_DELAY_PHASE_0,
      SDMMC_DELAY_PHASE_1,
      SDMMC_DELAY_PHASE_2,
      SDMMC_DELAY_PHASE_3,
      SDMMC_DELAY_PHASE_AUTO)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:172

   type sdmmc_driver_strength_t is
     (SDMMC_DRIVER_STRENGTH_B,
      SDMMC_DRIVER_STRENGTH_A,
      SDMMC_DRIVER_STRENGTH_C,
      SDMMC_DRIVER_STRENGTH_D)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:182

   type sdmmc_current_limit_t is
     (SDMMC_CURRENT_LIMIT_200MA,
      SDMMC_CURRENT_LIMIT_400MA,
      SDMMC_CURRENT_LIMIT_600MA,
      SDMMC_CURRENT_LIMIT_800MA)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:192

   type anon_union2456 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            deinit : access function return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:233
         when others =>
            deinit_p : access function (arg1 : int) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:234
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type sdmmc_host_t is record
      flags : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:201
      slot : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:213
      max_freq_khz : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:214
      io_voltage : aliased float;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:222
      driver_strength : aliased sdmmc_driver_strength_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:223
      current_limit : aliased sdmmc_current_limit_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:224
      init : access function return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:225
      set_bus_width : access function (arg1 : int; arg2 : stddef_h.size_t) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:226
      get_bus_width : access function (arg1 : int) return stddef_h.size_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:227
      set_bus_ddr_mode : access function (arg1 : int; arg2 : Extensions.bool) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:228
      set_card_clk : access function (arg1 : int; arg2 : sys_ustdint_h.uint32_t) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:229
      set_cclk_always_on : access function (arg1 : int; arg2 : Extensions.bool) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:230
      do_transaction : access function (arg1 : int; arg2 : access sdmmc_command_t) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:231
      anon5927 : aliased anon_union2456;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:235
      io_int_enable : access function (arg1 : int) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:236
      io_int_wait : access function (arg1 : int; arg2 : freertos_portmacro_h.TickType_t) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:237
      command_timeout_ms : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:238
      get_real_freq : access function (arg1 : int; arg2 : access int) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:239
      input_delay_phase : aliased sdmmc_delay_phase_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:240
      set_input_delay : access function (arg1 : int; arg2 : sdmmc_delay_phase_t) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:241
      dma_aligned_buffer : System.Address;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:242
      pwr_ctrl_handle : sd_pwr_ctrl_h.sd_pwr_ctrl_handle_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:243
      get_dma_info : access function (arg1 : int; arg2 : access esp_dma_utils_h.esp_dma_mem_info_t) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:244
      check_buffer_alignment : access function
           (arg1 : int;
            arg2 : System.Address;
            arg3 : stddef_h.size_t) return Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:245
      is_slot_set_to_uhs1 : access function (arg1 : int; arg2 : access Extensions.bool) return esp_err_h.esp_err_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:246
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:247

   type anon_union2484 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            cid : aliased sdmmc_cid_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:256
         when others =>
            raw_cid : aliased sdmmc_response_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:257
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type sdmmc_card_t is record
      host : aliased sdmmc_host_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:253
      ocr : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:254
      anon5960 : aliased anon_union2484;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:259
      csd : aliased sdmmc_csd_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:260
      scr : aliased sdmmc_scr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:261
      ssr : aliased sdmmc_ssr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:262
      ext_csd : aliased sdmmc_ext_csd_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:263
      rca : aliased sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:264
      max_freq_khz : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:265
      real_freq_khz : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:266
      is_mem : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:267
      is_sdio : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:268
      is_mmc : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:269
      num_io_functions : Extensions.Unsigned_3;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:270
      log_bus_width : Extensions.Unsigned_2;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:271
      is_ddr : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:272
      is_uhs1 : Extensions.Unsigned_1;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:273
      reserved : Extensions.Unsigned_22;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:274
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:275

   type sdmmc_erase_arg_t is
     (SDMMC_ERASE_ARG,
      SDMMC_DISCARD_ARG)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_protocol_types.h:299

end sd_protocol_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
