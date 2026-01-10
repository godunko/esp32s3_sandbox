pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_utypes_h;
with machine_udefault_types_h;

package sys_utimeval_h is

   subtype suseconds_t is sys_utypes_h.uu_suseconds_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_timeval.h:37

   subtype time_t is machine_udefault_types_h.uu_int_least64_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_timeval.h:42

   type timeval is record
      tv_sec : aliased time_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_timeval.h:55
      tv_usec : aliased suseconds_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_timeval.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_timeval.h:54

end sys_utimeval_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
