pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package sys_usigset_h is

   subtype uu_sigset_t is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_sigset.h:41

end sys_usigset_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
