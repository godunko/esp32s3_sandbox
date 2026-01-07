pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;

package spinlock_h is

   SPINLOCK_FREE : constant := 16#B33FFFFF#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:31
   SPINLOCK_WAIT_FOREVER : constant := (-1);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:32
   SPINLOCK_NO_WAIT : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:33
   --  unsupported macro: SPINLOCK_INITIALIZER {.owner = SPINLOCK_FREE,.count = 0}

   SPINLOCK_OWNER_ID_0 : constant := 16#CDCD#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:36
   SPINLOCK_OWNER_ID_1 : constant := 16#ABAB#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:37

   --  CORE_ID_REGVAL_XOR_SWAP : constant := (16#CDCD# xor 16#ABAB#);  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:39
   --  unsupported macro: SPINLOCK_OWNER_ID_XOR_SWAP CORE_ID_REGVAL_XOR_SWAP

   type spinlock_t is record
      owner : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:43
      count : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:45

   procedure spinlock_initialize (lock : access spinlock_t)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:51
   with Import => True,
        Convention => C,
        External_Name => "spinlock_initialize";

   function spinlock_acquire (lock : access spinlock_t; timeout : sys_ustdint_h.int32_t) return Extensions.bool  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:74
   with Import => True,
        Convention => C,
        External_Name => "spinlock_acquire";

   procedure spinlock_release (lock : access spinlock_t)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_hw_support/include/spinlock.h:174
   with Import => True,
        Convention => C,
        External_Name => "spinlock_release";

end spinlock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
