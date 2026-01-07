
pragma Ada_2022;

with Ada.Text_IO;
with Interfaces.C;

with driver_sdmmc_host_h;
with esp_err_h;
with esp_event_h;
with sd_protocol_types_h;
with sdmmc_cmd_h;
with soc_gpio_num_h;

with ESP.SDMMC;

with WiFi;

procedure Main is

   procedure Check (Err : esp_err_h.esp_err_t; Msg : String);

   -----------
   -- Check --
   -----------

   procedure Check (Err : esp_err_h.esp_err_t; Msg : String) is
      use type Interfaces.C.int;

   begin
      if Err /= esp_err_h.ESP_OK then
         Ada.Text_IO.Put_Line
           ("Error occurred: " & esp_err_h.esp_err_t'Image (Err) & " - " & Msg);
         Ada.Text_IO.New_Line;

         raise Program_Error with "Aborting due to error";
      end if;
   end Check;

begin
   Ada.Text_IO.New_Line;
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("Hello, Ada world!");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line
     ("This application tests few features of the Ada runtime");
   Ada.Text_IO.Put_Line
     ("Feel free to replace it by your application!");
   Ada.Text_IO.New_Line;

   declare
      Host : aliased sd_protocol_types_h.sdmmc_host_t := ESP.SDMMC.Default;
      Slot : aliased driver_sdmmc_host_h.sdmmc_slot_config_t :=
        ESP.SDMMC.Default;
      Card : aliased sd_protocol_types_h.sdmmc_card_t;
      Err  : esp_err_h.esp_err_t;

   begin
      Slot.width := 1;
      Slot.clk := soc_gpio_num_h.gpio_num_t_GPIO_NUM_5;
      Slot.cmd := soc_gpio_num_h.gpio_num_t_GPIO_NUM_6;
      Slot.d0  := soc_gpio_num_h.gpio_num_t_GPIO_NUM_4;
      Slot.d3  := soc_gpio_num_h.gpio_num_t_GPIO_NUM_7;

      Err := Host.init.all;  --  driver_sdmmc_host_h.sdmmc_host_init

      Check (Err, "sdmmc_host_init failed");

      Err := driver_sdmmc_host_h.sdmmc_host_init_slot (Host.slot, Slot'Access);

      Check (Err, "sdmmc_host_init_slot failed");

      Err := sdmmc_cmd_h.sdmmc_card_init (host'Access, card'Access);

      Check (Err, "sdmmc_card_init failed");
   end;

   declare
      Err  : esp_err_h.esp_err_t;

   begin
      Err := esp_event_h.esp_event_loop_create_default;
   end;

   WiFi.Initialize;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("Excellent, done!");
   Ada.Text_IO.New_Line;
end Main;
