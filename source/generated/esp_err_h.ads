pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with stddef_h;

package esp_err_h is

   ESP_OK : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:22
   ESP_FAIL : constant := -1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:23

   ESP_ERR_NO_MEM : constant := 16#101#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:25
   ESP_ERR_INVALID_ARG : constant := 16#102#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:26
   ESP_ERR_INVALID_STATE : constant := 16#103#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:27
   ESP_ERR_INVALID_SIZE : constant := 16#104#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:28
   ESP_ERR_NOT_FOUND : constant := 16#105#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:29
   ESP_ERR_NOT_SUPPORTED : constant := 16#106#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:30
   ESP_ERR_TIMEOUT : constant := 16#107#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:31
   ESP_ERR_INVALID_RESPONSE : constant := 16#108#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:32
   ESP_ERR_INVALID_CRC : constant := 16#109#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:33
   ESP_ERR_INVALID_VERSION : constant := 16#10A#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:34
   ESP_ERR_INVALID_MAC : constant := 16#10B#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:35
   ESP_ERR_NOT_FINISHED : constant := 16#10C#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:36
   ESP_ERR_NOT_ALLOWED : constant := 16#10D#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:37

   ESP_ERR_WIFI_BASE : constant := 16#3000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:39
   ESP_ERR_MESH_BASE : constant := 16#4000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:40
   ESP_ERR_FLASH_BASE : constant := 16#6000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:41
   ESP_ERR_HW_CRYPTO_BASE : constant := 16#c000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:42
   ESP_ERR_MEMPROT_BASE : constant := 16#d000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:43
   --  unsupported macro: ESP_ERROR_CHECK(x) do { esp_err_t err_rc_ = (x); if (unlikely(err_rc_ != ESP_OK)) { _esp_error_check_failed(err_rc_, __FILE__, __LINE__, __ASSERT_FUNC, #x); } } while(0)
   --  unsupported macro: ESP_ERROR_CHECK_WITHOUT_ABORT(x) ({ esp_err_t err_rc_ = (x); if (unlikely(err_rc_ != ESP_OK)) { _esp_error_check_failed_without_abort(err_rc_, __FILE__, __LINE__, __ASSERT_FUNC, #x); } err_rc_; })

   subtype esp_err_t is int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:19

   function esp_err_to_name (code : esp_err_t) return Interfaces.C.Strings.chars_ptr  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "esp_err_to_name";

   function esp_err_to_name_r
     (code : esp_err_t;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_common/include/esp_err.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "esp_err_to_name_r";

   --  skipped func _esp_error_check_failed

   --  skipped func _esp_error_check_failed_without_abort

end esp_err_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
