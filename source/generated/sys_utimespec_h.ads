pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_utimeval_h;

package sys_utimespec_h is

   type timespec is record
      tv_sec : aliased sys_utimeval_h.time_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_timespec.h:48
      tv_nsec : aliased long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_timespec.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_timespec.h:47

end sys_utimespec_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
