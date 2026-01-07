pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with sys_ustdint_h;

package esp_event_base_h is

   --  arg-macro: procedure ESP_EVENT_DECLARE_BASE (id)
   --    extern esp_event_base_t const id
   --  unsupported macro: ESP_EVENT_DEFINE_BASE(id) esp_event_base_t const id = #id
   --  unsupported macro: ESP_EVENT_ANY_BASE NULL
   ESP_EVENT_ANY_ID : constant := -1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event_base.h:30

   type esp_event_base_t is new Interfaces.C.Strings.chars_ptr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event_base.h:20

   type esp_event_loop_handle_t is new System.Address;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event_base.h:21

   type esp_event_handler_t is access procedure
        (arg1 : System.Address;
         arg2 : esp_event_base_t;
         arg3 : sys_ustdint_h.int32_t;
         arg4 : System.Address)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event_base.h:22

   type esp_event_handler_instance_t is new System.Address;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event_base.h:26

end esp_event_base_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
