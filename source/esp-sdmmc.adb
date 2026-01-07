--
--  Copyright (C) 2026, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with Interfaces.C;
with System;

with driver_sdmmc_default_configs_h;
with driver_sdmmc_host_h;
with soc_gpio_num_h;

package body ESP.SDMMC is

   SDMMC_HOST_FLAG_1BIT       : constant := 2#0000_0001#;
   SDMMC_HOST_FLAG_4BIT       : constant := 2#0000_0010#;
   SDMMC_HOST_FLAG_8BIT       : constant := 2#0000_0100#;
   SDMMC_HOST_FLAG_DDR        : constant := 2#0001_0000#;
   SDMMC_HOST_FLAG_DEINIT_ARG : constant := 2#0010_0000#;
   --  `sd_protocol_types.h`: not generated

   SDMMC_HOST_SLOT_1 : constant := 1;
   --  `sdmmc_config_defaults.h`: not generated

   SDMMC_SLOT_NO_CD  : constant := soc_gpio_num_h.gpio_num_t_GPIO_NUM_NC;
   -- `sdmmc_config_defaults.h`: not generated
   SDMMC_SLOT_NO_WP  : constant := soc_gpio_num_h.gpio_num_t_GPIO_NUM_NC;
   -- `sdmmc_config_defaults.h`: not generated
   SDMMC_SLOT_WIDTH_DEFAULT : constant := 0;
   -- `sdmmc_config_defaults.h`: not generated

   -------------
   -- Default --
   -------------

   function Default return sd_protocol_types_h.sdmmc_host_t is
      use type Interfaces.C.unsigned_long;

   begin
      return
        (flags                  =>
           SDMMC_HOST_FLAG_8BIT
             or SDMMC_HOST_FLAG_4BIT
             or SDMMC_HOST_FLAG_1BIT
             or SDMMC_HOST_FLAG_DDR
             or SDMMC_HOST_FLAG_DEINIT_ARG,
         slot                   => SDMMC_HOST_SLOT_1,
         max_freq_khz           => sd_protocol_types_h.SDMMC_FREQ_DEFAULT,
         io_voltage             => 3.3,
         driver_strength        => sd_protocol_types_h.SDMMC_DRIVER_STRENGTH_B,
         current_limit          =>
           sd_protocol_types_h.SDMMC_CURRENT_LIMIT_200MA,
         init                   => driver_sdmmc_host_h.sdmmc_host_init'Access,
         set_bus_width          =>
           driver_sdmmc_host_h.sdmmc_host_set_bus_width'Access,
         get_bus_width          =>
           driver_sdmmc_host_h.sdmmc_host_get_slot_width'Access,
         set_bus_ddr_mode       =>
           driver_sdmmc_host_h.sdmmc_host_set_bus_ddr_mode'Access,
         set_card_clk           =>
           driver_sdmmc_host_h.sdmmc_host_set_card_clk'Access,
         set_cclk_always_on     =>
           driver_sdmmc_host_h.sdmmc_host_set_cclk_always_on'Access,
         do_transaction         =>
           driver_sdmmc_host_h.sdmmc_host_do_transaction'Access,
         anon5927               =>
           (discr => 0, deinit => driver_sdmmc_host_h.sdmmc_host_deinit'Access),
         io_int_enable          =>
           driver_sdmmc_host_h.sdmmc_host_io_int_enable'Access,
         io_int_wait            =>
           driver_sdmmc_host_h.sdmmc_host_io_int_wait'Access,
         command_timeout_ms     => 0,
         get_real_freq          =>
           driver_sdmmc_host_h.sdmmc_host_get_real_freq'Access,
         input_delay_phase      => sd_protocol_types_h.SDMMC_DELAY_PHASE_0,
         set_input_delay        =>
           driver_sdmmc_host_h.sdmmc_host_set_input_delay'Access,
         dma_aligned_buffer     => System.Null_Address,
         pwr_ctrl_handle        => null,
         get_dma_info           => null,
         check_buffer_alignment =>
           driver_sdmmc_host_h.sdmmc_host_check_buffer_alignment'Access,
         is_slot_set_to_uhs1    =>
           driver_sdmmc_host_h.sdmmc_host_is_slot_set_to_uhs1'Access);
   end Default;

   -------------
   -- Default --
   -------------

   function Default return driver_sdmmc_host_h.sdmmc_slot_config_t is
   begin
      --  XXX ESP32S3 specific
      return
        (clk      => soc_gpio_num_h.gpio_num_t_GPIO_NUM_14,
         cmd      => soc_gpio_num_h.gpio_num_t_GPIO_NUM_15,
         d0       => soc_gpio_num_h.gpio_num_t_GPIO_NUM_2,
         d1       => soc_gpio_num_h.gpio_num_t_GPIO_NUM_4,
         d2       => soc_gpio_num_h.gpio_num_t_GPIO_NUM_12,
         d3       => soc_gpio_num_h.gpio_num_t_GPIO_NUM_13,
         d4       => soc_gpio_num_h.gpio_num_t_GPIO_NUM_33,
         d5       => soc_gpio_num_h.gpio_num_t_GPIO_NUM_34,
         d6       => soc_gpio_num_h.gpio_num_t_GPIO_NUM_35,
         d7       => soc_gpio_num_h.gpio_num_t_GPIO_NUM_36,
         anon6291 => (discr => 1, cd => SDMMC_SLOT_NO_CD),
         anon6295 => (discr => 1, wp => SDMMC_SLOT_NO_WP),
         width    => SDMMC_SLOT_WIDTH_DEFAULT,
         flags    => 0);
   end Default;

end ESP.SDMMC;
