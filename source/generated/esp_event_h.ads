pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Strings;
with freertos_portmacro_h;
with System;
with esp_err_h;
with esp_event_base_h;
with stddef_h;
limited with sys_reent_h;

package esp_event_h is

   type esp_event_loop_args_t is record
      queue_size : aliased sys_ustdint_h.int32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:25
      task_name : Interfaces.C.Strings.chars_ptr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:26
      task_priority : aliased freertos_portmacro_h.UBaseType_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:28
      task_stack_size : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:29
      task_core_id : aliased freertos_portmacro_h.BaseType_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:32

   function esp_event_loop_create (event_loop_args : access constant esp_event_loop_args_t; event_loop : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_loop_create";

   function esp_event_loop_delete (event_loop : esp_event_base_h.esp_event_loop_handle_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_loop_delete";

   function esp_event_loop_create_default return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_loop_create_default";

   function esp_event_loop_delete_default return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_loop_delete_default";

   function esp_event_loop_run (event_loop : esp_event_base_h.esp_event_loop_handle_t; ticks_to_run : freertos_portmacro_h.TickType_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_loop_run";

   function esp_event_handler_register
     (event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_handler : esp_event_base_h.esp_event_handler_t;
      event_handler_arg : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_handler_register";

   function esp_event_handler_register_with
     (event_loop : esp_event_base_h.esp_event_loop_handle_t;
      event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_handler : esp_event_base_h.esp_event_handler_t;
      event_handler_arg : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_handler_register_with";

   function esp_event_handler_instance_register_with
     (event_loop : esp_event_base_h.esp_event_loop_handle_t;
      event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_handler : esp_event_base_h.esp_event_handler_t;
      event_handler_arg : System.Address;
      instance : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_handler_instance_register_with";

   function esp_event_handler_instance_register
     (event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_handler : esp_event_base_h.esp_event_handler_t;
      event_handler_arg : System.Address;
      instance : System.Address) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_handler_instance_register";

   function esp_event_handler_unregister
     (event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_handler : esp_event_base_h.esp_event_handler_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_handler_unregister";

   function esp_event_handler_unregister_with
     (event_loop : esp_event_base_h.esp_event_loop_handle_t;
      event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_handler : esp_event_base_h.esp_event_handler_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_handler_unregister_with";

   function esp_event_handler_instance_unregister_with
     (event_loop : esp_event_base_h.esp_event_loop_handle_t;
      event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      instance : esp_event_base_h.esp_event_handler_instance_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_handler_instance_unregister_with";

   function esp_event_handler_instance_unregister
     (event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      instance : esp_event_base_h.esp_event_handler_instance_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_handler_instance_unregister";

   function esp_event_post
     (event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_data : System.Address;
      event_data_size : stddef_h.size_t;
      ticks_to_wait : freertos_portmacro_h.TickType_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_post";

   function esp_event_post_to
     (event_loop : esp_event_base_h.esp_event_loop_handle_t;
      event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_data : System.Address;
      event_data_size : stddef_h.size_t;
      ticks_to_wait : freertos_portmacro_h.TickType_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_post_to";

   function esp_event_isr_post
     (event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_data : System.Address;
      event_data_size : stddef_h.size_t;
      task_unblocked : access freertos_portmacro_h.BaseType_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:423
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_isr_post";

   function esp_event_isr_post_to
     (event_loop : esp_event_base_h.esp_event_loop_handle_t;
      event_base : esp_event_base_h.esp_event_base_t;
      event_id : sys_ustdint_h.int32_t;
      event_data : System.Address;
      event_data_size : stddef_h.size_t;
      task_unblocked : access freertos_portmacro_h.BaseType_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:452
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_isr_post_to";

   function esp_event_dump (the_file : access sys_reent_h.uu_sFILE) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_event/include/esp_event.h:504
   with Import => True, 
        Convention => C, 
        External_Name => "esp_event_dump";

end esp_event_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
