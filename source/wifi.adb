--
--  Copyright (C) 2026, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Ada_2022;

with Ada.Text_IO;
with Interfaces.C;
with System;

with esp_err_h;
with esp_event_h;
with esp_event_base_h;
with esp_wifi_h;
with esp_wifi_types_generic_h;
with sys_ustdint_h;

with ESP.WiFi;

package body WiFi is

   CONFIG_ESP_WIFI_CHANNEL       : constant := 1;
   CONFIG_ESP_MAX_STA_CONN       : constant := 4;
   CONFIG_ESP_GTK_REKEY_INTERVAL : constant := 600;

   procedure Check (Err : esp_err_h.esp_err_t; Msg : String);

   procedure Handler
     (arg1 : System.Address;
      arg2 : esp_event_base_h.esp_event_base_t;
      arg3 : sys_ustdint_h.int32_t;
      arg4 : System.Address) with Convention => C;

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

   -------------
   -- Handler --
   -------------

   procedure Handler
     (arg1 : System.Address;
      arg2 : esp_event_base_h.esp_event_base_t;
      arg3 : sys_ustdint_h.int32_t;
      arg4 : System.Address) is
   begin
      Ada.Text_IO.Put_Line ("Handler");
   end Handler;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      Err         : esp_err_h.esp_err_t;
      Init_Config : aliased esp_wifi_h.wifi_init_config_t := ESP.WiFi.Default;
      AP_Config   : aliased esp_wifi_types_generic_h.wifi_config_t;

   begin
      --  Err := nvs_flash_h.nvs_flash_init;

      --  Check (Err, "nvs_flash_init failed");

      --  Initialize WiFi component

      Init_Config.nvs_enable := 0;  --  Disable NVS

      Err := esp_wifi_h.esp_wifi_init (Init_Config'Access);
      Check (Err, "esp_wifi_init failed");

      Err :=
        esp_event_h.esp_event_handler_instance_register
          (esp_wifi_types_generic_h.WIFI_EVENT,
           esp_event_base_h.ESP_EVENT_ANY_ID,
           Handler'Access,
           System.Null_Address,
           System.Null_Address);

      --  Configure WiFi Access Point

      AP_Config :=
        (discr => 0,
         ap    =>
           (ssid               =>
              [Character'Pos ('C'),
               Character'Pos ('N'),
               Character'Pos ('C'),
               Character'Pos ('.'),
               Character'Pos ('N'),
               Character'Pos ('e'),
               Character'Pos ('t'),
               others => 0],
            password           =>
              [Character'Pos ('1'),
               Character'Pos ('2'),
               Character'Pos ('3'),
               Character'Pos ('4'),
               Character'Pos ('5'),
               Character'Pos ('6'),
               Character'Pos ('7'),
               Character'Pos ('8'),
               others => 0],
            ssid_len           => 7,
            channel            => CONFIG_ESP_WIFI_CHANNEL,
            authmode           =>
              esp_wifi_types_generic_h.wifi_auth_mode_t_WIFI_AUTH_WPA3_PSK,
            --  ssid_hidden        => sys_ustdint_h.uint8_t,
            max_connection     => CONFIG_ESP_MAX_STA_CONN,
            --  beacon_interval    => sys_ustdint_h.uint16_t,
            --  csa_count          => sys_ustdint_h.uint8_t,
            --  dtim_period        => sys_ustdint_h.uint8_t,
            --  pairwise_cipher    => wifi_cipher_type_t,
            --  ftm_responder      => Extensions.bool,
            pmf_cfg            =>
              (capable  => <>,
               required => Interfaces.C.True),
            sae_pwe_h2e        => esp_wifi_types_generic_h.WPA3_SAE_PWE_BOTH,
            --  transition_disable => sys_ustdint_h.uint8_t,
            --  sae_ext            => sys_ustdint_h.uint8_t,
            --  bss_max_idle_cfg   => wifi_bss_max_idle_config_t,
            gtk_rekey_interval => CONFIG_ESP_GTK_REKEY_INTERVAL,
           others => <>));

      Ada.Text_IO.Put_Line ("esp_wifi_set_mode()");
      Err :=
        esp_wifi_h.esp_wifi_set_mode (esp_wifi_types_generic_h.WIFI_MODE_AP);
      Check (Err, "esp_wifi_set_mode failed");

      Ada.Text_IO.Put_Line ("esp_wifi_set_config()");
      Err :=
        esp_wifi_h.esp_wifi_set_config
          (c_interface => esp_wifi_types_generic_h.WIFI_IF_AP,
           conf        => AP_Config'Access);
      Check (Err, "esp_wifi_set_config failed");

      Ada.Text_IO.Put_Line ("esp_wifi_start()");
      Err := esp_wifi_h.esp_wifi_start;
      Check (Err, "esp_wifi_start");
   end Initialize;

end WiFi;