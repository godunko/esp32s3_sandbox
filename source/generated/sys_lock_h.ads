pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with lock_h;

package sys_lock_h is

   type u_LOCK_T is access all lock_h.uu_lock;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/lock.h:34

   --  skipped func __retarget_lock_init

   --  skipped func __retarget_lock_init_recursive

   --  skipped func __retarget_lock_close

   --  skipped func __retarget_lock_close_recursive

   --  skipped func __retarget_lock_acquire

   --  skipped func __retarget_lock_acquire_recursive

   --  skipped func __retarget_lock_try_acquire

   --  skipped func __retarget_lock_try_acquire_recursive

   --  skipped func __retarget_lock_release

   --  skipped func __retarget_lock_release_recursive

end sys_lock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
