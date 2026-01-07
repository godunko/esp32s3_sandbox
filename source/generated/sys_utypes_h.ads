pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with machine_udefault_types_h;
with stddef_h;
with System;

package sys_utypes_h is

   subtype uu_blkcnt_t is long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:30

   subtype uu_blksize_t is long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:34

   subtype uu_fsblkcnt_t is machine_udefault_types_h.uu_uint64_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:38

   subtype uu_fsfilcnt_t is machine_udefault_types_h.uu_uint32_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:42

   subtype u_off_t is long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:46

   subtype uu_pid_t is int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:52

   subtype uu_dev_t is short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:56

   subtype uu_uid_t is unsigned_short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:60

   subtype uu_gid_t is unsigned_short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:63

   subtype uu_id_t is machine_udefault_types_h.uu_uint32_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:67

   subtype uu_ino_t is unsigned_short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:75

   subtype uu_mode_t is machine_udefault_types_h.uu_uint32_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:90

   subtype u_off64_t is Long_Long_Integer;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:96

   subtype uu_off_t is u_off_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:102

   subtype uu_loff_t is u_off64_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:105

   subtype uu_key_t is long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:108

   subtype u_fpos_t is long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:116

   subtype uu_size_t is unsigned;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:131

   subtype u_ssize_t is int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:147

   subtype uu_ssize_t is u_ssize_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:158

   type anon_array768 is array (0 .. 3) of aliased unsigned_char;
   type anon_union766 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_wch : aliased stddef_h.wint_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:167
         when others =>
            uu_wchb : aliased anon_array768;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:168
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type u_mbstate_t is record
      uu_count : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:164
      uu_value : aliased anon_union766;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:169
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:170

   type u_iconv_t is new System.Address;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:175

   subtype uu_clock_t is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:182

   subtype uu_time_t is machine_udefault_types_h.uu_int_least64_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:189

   subtype uu_clockid_t is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:195

   subtype uu_daddr_t is long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:198

   subtype uu_timer_t is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:202

   subtype uu_sa_family_t is machine_udefault_types_h.uu_uint8_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:205

   subtype uu_socklen_t is machine_udefault_types_h.uu_uint32_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:209

   subtype uu_nl_item is int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:212

   subtype uu_nlink_t is unsigned_short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:213

   subtype uu_suseconds_t is long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:214

   subtype uu_useconds_t is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:215

   subtype uu_va_list is System.Address;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/_types.h:223

end sys_utypes_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
