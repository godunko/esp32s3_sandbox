pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package stddef_h is

   --  unsupported macro: NULL ((void *)0)
   --  arg-macro: procedure offsetof (TYPE, MEMBER)
   --    __builtin_offsetof (TYPE, MEMBER)
   subtype ptrdiff_t is int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/lib/gcc/xtensa-esp32-elf/15.2.0/include/stddef.h:160

   subtype size_t is unsigned;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/lib/gcc/xtensa-esp32-elf/15.2.0/include/stddef.h:229

   subtype wchar_t is unsigned_short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/lib/gcc/xtensa-esp32-elf/15.2.0/include/stddef.h:344

   subtype wint_t is unsigned;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/lib/gcc/xtensa-esp32-elf/15.2.0/include/stddef.h:374

   type max_align_t is record
      uu_max_align_ll : aliased Long_Long_Integer;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/lib/gcc/xtensa-esp32-elf/15.2.0/include/stddef.h:441
      uu_max_align_ld : aliased long_double;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/lib/gcc/xtensa-esp32-elf/15.2.0/include/stddef.h:442
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/lib/gcc/xtensa-esp32-elf/15.2.0/include/stddef.h:451

end stddef_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
