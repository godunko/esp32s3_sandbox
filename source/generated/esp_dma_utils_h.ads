pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with System;
with esp_err_h;
with Interfaces.C.Extensions;
with sys_ustdint_h;

package esp_dma_utils_h is

   --  unsupported macro: ESP_DMA_MALLOC_FLAG_PSRAM BIT(0)
   type esp_dma_mem_info_t is record
      extra_heap_caps : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:22
      dma_alignment_bytes : aliased stddef_h.size_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:23
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:24

   function esp_dma_capable_malloc
     (size : stddef_h.size_t;
      dma_mem_info : access constant esp_dma_mem_info_t;
      out_ptr : System.Address;
      actual_size : access stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "esp_dma_capable_malloc";

   function esp_dma_capable_calloc
     (calloc_num : stddef_h.size_t;
      size : stddef_h.size_t;
      dma_mem_info : access constant esp_dma_mem_info_t;
      out_ptr : System.Address;
      actual_size : access stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "esp_dma_capable_calloc";

   function esp_dma_is_buffer_alignment_satisfied
     (ptr : System.Address;
      size : stddef_h.size_t;
      dma_mem_info : esp_dma_mem_info_t) return Extensions.bool  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "esp_dma_is_buffer_alignment_satisfied";

   type dma_alignment_info_t is record
      is_desc : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:78
      on_psram : aliased Extensions.bool;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:79
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:80

   function esp_dma_malloc
     (size : stddef_h.size_t;
      flags : sys_ustdint_h.uint32_t;
      out_ptr : System.Address;
      actual_size : access stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "esp_dma_malloc";

   function esp_dma_calloc
     (n : stddef_h.size_t;
      size : stddef_h.size_t;
      flags : sys_ustdint_h.uint32_t;
      out_ptr : System.Address;
      actual_size : access stddef_h.size_t) return esp_err_h.esp_err_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "esp_dma_calloc";

   type esp_dma_buf_location_t is 
     (ESP_DMA_BUF_LOCATION_INTERNAL,
      ESP_DMA_BUF_LOCATION_PSRAM,
      ESP_DMA_BUF_LOCATION_AUTO)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:110

   function esp_dma_is_buffer_aligned
     (ptr : System.Address;
      size : stddef_h.size_t;
      location : esp_dma_buf_location_t) return Extensions.bool  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/dma/include/esp_dma_utils.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "esp_dma_is_buffer_aligned";

end esp_dma_utils_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
