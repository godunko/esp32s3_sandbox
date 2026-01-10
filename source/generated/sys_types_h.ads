pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with machine_udefault_types_h;
with sys_utypes_h;
with Interfaces.C.Strings;

package sys_types_h is

   --  unsupported macro: physadr physadr_t
   --  unsupported macro: quad quad_t
   subtype u_int8_t is machine_udefault_types_h.uu_uint8_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:28

   subtype u_int16_t is machine_udefault_types_h.uu_uint16_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:31

   subtype u_int32_t is machine_udefault_types_h.uu_uint32_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:34

   subtype u_int64_t is machine_udefault_types_h.uu_uint64_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:37

   subtype register_t is machine_udefault_types_h.uu_intptr_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:39

   subtype in_addr_t is machine_udefault_types_h.uu_uint32_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:55

   subtype in_port_t is machine_udefault_types_h.uu_uint16_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:60

   subtype u_register_t is machine_udefault_types_h.uu_uintptr_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:64

   subtype u_char is unsigned_char;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:71

   subtype u_short is unsigned_short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:75

   subtype u_int is unsigned;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:79

   subtype u_long is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:83

   subtype ushort is unsigned_short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:91

   subtype uint is unsigned;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:92

   subtype ulong is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:93

   subtype blkcnt_t is sys_utypes_h.uu_blkcnt_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:97

   subtype blksize_t is sys_utypes_h.uu_blksize_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:102

   subtype clock_t is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:107

   subtype daddr_t is sys_utypes_h.uu_daddr_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:118

   type caddr_t is new Interfaces.C.Strings.chars_ptr;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:121

   subtype fsblkcnt_t is sys_utypes_h.uu_fsblkcnt_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:126

   subtype fsfilcnt_t is sys_utypes_h.uu_fsfilcnt_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:127

   subtype id_t is sys_utypes_h.uu_id_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:132

   subtype ino_t is sys_utypes_h.uu_ino_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:137

   subtype off_t is sys_utypes_h.uu_off_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:155

   subtype dev_t is sys_utypes_h.uu_dev_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:159

   subtype uid_t is sys_utypes_h.uu_uid_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:163

   subtype gid_t is sys_utypes_h.uu_gid_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:167

   subtype pid_t is sys_utypes_h.uu_pid_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:172

   subtype key_t is sys_utypes_h.uu_key_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:177

   subtype ssize_t is sys_utypes_h.u_ssize_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:182

   subtype mode_t is sys_utypes_h.uu_mode_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:187

   subtype nlink_t is sys_utypes_h.uu_nlink_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:192

   subtype clockid_t is sys_utypes_h.uu_clockid_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:197

   subtype timer_t is sys_utypes_h.uu_timer_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:203

   subtype useconds_t is sys_utypes_h.uu_useconds_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:209

   subtype sbintime_t is machine_udefault_types_h.uu_int64_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/types.h:218

end sys_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
