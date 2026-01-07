pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_lock_h;

package lock_h is

   type anon_array796 is array (0 .. 20) of aliased int;
   type uu_lock is record
      reserved : aliased anon_array796;  -- /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/lock.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/lock.h:24

   subtype u_lock_t is sys_lock_h.u_LOCK_T;  -- /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/lock.h:42

   --  skipped func _lock_init

   --  skipped func _lock_init_recursive

   --  skipped func _lock_close

   --  skipped func _lock_close_recursive

   --  skipped func _lock_acquire

   --  skipped func _lock_acquire_recursive

   --  skipped func _lock_try_acquire

   --  skipped func _lock_try_acquire_recursive

   --  skipped func _lock_release

   --  skipped func _lock_release_recursive

end lock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
