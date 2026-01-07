pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with esp_err_h;

package sd_pwr_ctrl_h is

   type sd_pwr_ctrl_drv_t is null record;   -- incomplete struct

   type sd_pwr_ctrl_handle_t is access all sd_pwr_ctrl_drv_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_pwr_ctrl.h:19

   function sd_pwr_ctrl_set_io_voltage (handle : sd_pwr_ctrl_handle_t; voltage_mv : int) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/sdmmc/include/sd_pwr_ctrl.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "sd_pwr_ctrl_set_io_voltage";

end sd_pwr_ctrl_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
