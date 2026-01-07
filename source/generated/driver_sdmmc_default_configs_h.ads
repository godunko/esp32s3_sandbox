pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package driver_sdmmc_default_configs_h is

   SDMMC_HOST_SLOT_0 : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_default_configs.h:17
   SDMMC_HOST_SLOT_1 : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_default_configs.h:18
   --  arg-macro: procedure SDMMC_HOST_DEFAULT ()
   --    { .flags := SDMMC_HOST_FLAG_8BIT or SDMMC_HOST_FLAG_4BIT or SDMMC_HOST_FLAG_1BIT or SDMMC_HOST_FLAG_DDR or SDMMC_HOST_FLAG_DEINIT_ARG, .slot := SDMMC_HOST_SLOT_1, .max_freq_khz := SDMMC_FREQ_DEFAULT, .io_voltage := 3.3, .driver_strength := SDMMC_DRIVER_STRENGTH_B, .current_limit := SDMMC_CURRENT_LIMIT_200MA, .init := andsdmmc_host_init, .set_bus_width := andsdmmc_host_set_bus_width, .get_bus_width := andsdmmc_host_get_slot_width, .set_bus_ddr_mode := andsdmmc_host_set_bus_ddr_mode, .set_card_clk := andsdmmc_host_set_card_clk, .set_cclk_always_on := andsdmmc_host_set_cclk_always_on, .do_transaction := andsdmmc_host_do_transaction, .deinit_p := andsdmmc_host_deinit_slot, .io_int_enable := sdmmc_host_io_int_enable, .io_int_wait := sdmmc_host_io_int_wait, .command_timeout_ms := 0, .get_real_freq := andsdmmc_host_get_real_freq, .input_delay_phase := SDMMC_DELAY_PHASE_0, .set_input_delay := andsdmmc_host_set_input_delay, .dma_aligned_buffer := NULL, .pwr_ctrl_handle := NULL, .get_dma_info := NULL, .check_buffer_alignment := andsdmmc_host_check_buffer_alignment, .is_slot_set_to_uhs1 := andsdmmc_host_is_slot_set_to_uhs1, }
   --  unsupported macro: SDMMC_SLOT_NO_CD GPIO_NUM_NC
   --  unsupported macro: SDMMC_SLOT_NO_WP GPIO_NUM_NC

   SDMMC_SLOT_WIDTH_DEFAULT : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_driver_sdmmc/include/driver/sdmmc_default_configs.h:59
   --  arg-macro: procedure SDMMC_SLOT_CONFIG_DEFAULT ()
   --    { .clk := GPIO_NUM_14, .cmd := GPIO_NUM_15, .d0 := GPIO_NUM_2, .d1 := GPIO_NUM_4, .d2 := GPIO_NUM_12, .d3 := GPIO_NUM_13, .d4 := GPIO_NUM_33, .d5 := GPIO_NUM_34, .d6 := GPIO_NUM_35, .d7 := GPIO_NUM_36, .cd := SDMMC_SLOT_NO_CD, .wp := SDMMC_SLOT_NO_WP, .width := SDMMC_SLOT_WIDTH_DEFAULT, .flags := 0, }

end driver_sdmmc_default_configs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
