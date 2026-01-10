pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_usigset_h;
limited with sys_utimeval_h;
limited with sys_utimespec_h;

package sys_select_h is

   FD_SETSIZE : constant := 64;  --  /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/select.h:34
   --  unsupported macro: NFDBITS _NFDBITS
   --  unsupported macro: fds_bits __fds_bits
   --  arg-macro: function FD_COPY (f, t)
   --    return void)(*(t) := *(f);
   --  arg-macro: procedure FD_ZERO (p)
   --    do { fd_set *_p; __size_t _n; _p := (p); _n := _howmany(FD_SETSIZE, _NFDBITS); while (_n > 0) _p.__fds_bits(--_n) := 0; } while (0)

   subtype sigset_t is sys_usigset_h.uu_sigset_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/select.h:20

   subtype uu_fd_mask is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/select.h:38

   subtype fd_mask is uu_fd_mask;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/select.h:40

   type anon_array1141 is array (0 .. 1) of aliased uu_fd_mask;
   type fd_set is record
      uu_fds_bits : aliased anon_array1141;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/select.h:53
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/select.h:52

   function c_select
     (uu_n : int;
      uu_readfds : access fd_set;
      uu_writefds : access fd_set;
      uu_exceptfds : access fd_set;
      uu_timeout : access sys_utimeval_h.timeval) return int  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/select.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "select";

   function pselect
     (uu_n : int;
      uu_readfds : access fd_set;
      uu_writefds : access fd_set;
      uu_exceptfds : access fd_set;
      uu_timeout : access constant sys_utimespec_h.timespec;
      uu_set : access sigset_t) return int  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/select.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "pselect";

end sys_select_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
