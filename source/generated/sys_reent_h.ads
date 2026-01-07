pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_lock_h;
with System;
with Interfaces.C.Strings;
with sys_utypes_h;
with Interfaces.C.Extensions;

package sys_reent_h is

   subtype uu_ULong is unsigned_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:23

   subtype u_flock_t is sys_lock_h.u_LOCK_T;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:36

   type uu_locale_t is null record;   -- incomplete struct

   type u_Bigint;
   type anon_array808 is array (0 .. 0) of aliased uu_ULong;
   type u_Bigint is record
      u_next : access u_Bigint;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:55
      u_k : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:56
      u_maxwds : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:56
      u_sign : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:56
      u_wds : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:56
      u_x : aliased anon_array808;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:57
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:53

   type uu_tm is record
      uu_tm_sec : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:63
      uu_tm_min : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:64
      uu_tm_hour : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:65
      uu_tm_mday : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:66
      uu_tm_mon : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:67
      uu_tm_year : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:68
      uu_tm_wday : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:69
      uu_tm_yday : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:70
      uu_tm_isdst : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:71
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:61

   type anon_array813 is array (0 .. 31) of System.Address;
   type u_on_exit_args is record
      u_fnargs : anon_array813;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:81
      u_dso_handle : anon_array813;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:82
      u_fntypes : aliased uu_ULong;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:84
      u_is_cxa : aliased uu_ULong;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:87
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:80

   type u_atexit;
   type anon_array817 is array (0 .. 31) of access procedure;
   type u_atexit is record
      u_next : access u_atexit;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:100
      u_ind : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:101
      u_fns : anon_array817;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:103
      the_u_on_exit_args : aliased u_on_exit_args;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:104
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:99

   type uu_sbuf is record
      u_base : access unsigned_char;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:117
      u_size : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:118
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:116

   type u_reent;
   type anon_array833 is array (0 .. 2) of aliased unsigned_char;
   type anon_array834 is array (0 .. 0) of aliased unsigned_char;
   type uu_sFILE is record
      u_p : access unsigned_char;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:154
      u_r : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:155
      u_w : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:156
      u_flags : aliased short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:157
      u_file : aliased short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:158
      u_bf : aliased uu_sbuf;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:159
      u_lbfsize : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:160
      u_cookie : System.Address;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:167
      u_read : access function
           (arg1 : access u_reent;
            arg2 : System.Address;
            arg3 : Interfaces.C.Strings.chars_ptr;
            arg4 : int) return int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:169
      u_write : access function
           (arg1 : access u_reent;
            arg2 : System.Address;
            arg3 : Interfaces.C.Strings.chars_ptr;
            arg4 : int) return int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:171
      u_seek : access function
           (arg1 : access u_reent;
            arg2 : System.Address;
            arg3 : sys_utypes_h.u_fpos_t;
            arg4 : int) return sys_utypes_h.u_fpos_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:174
      u_close : access function (arg1 : access u_reent; arg2 : System.Address) return int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:175
      u_ub : aliased uu_sbuf;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:178
      u_up : access unsigned_char;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:179
      u_ur : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:180
      u_ubuf : aliased anon_array833;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:183
      u_nbuf : aliased anon_array834;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:184
      u_lb : aliased uu_sbuf;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:187
      u_blksize : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:190
      u_offset : aliased sys_utypes_h.u_off_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:191
      u_data : access u_reent;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:194
      u_lock : u_flock_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:198
      u_mbstate : aliased sys_utypes_h.u_mbstate_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:200
      u_flags2 : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:201
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:153

   subtype uu_FILE is uu_sFILE;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:270

   type u_glue;
   type u_glue is record
      u_next : access u_glue;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:278
      u_niobs : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:279
      u_iobs : access uu_FILE;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:280
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:276

   type anon_array843 is array (0 .. 2) of aliased unsigned_short;
   type u_rand48 is record
      u_seed : aliased anon_array843;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:307
      u_mult : aliased anon_array843;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:308
      u_add : aliased unsigned_short;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:309
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:306

   subtype anon_array845 is Interfaces.C.char_array (0 .. 24);
   subtype anon_array853 is Interfaces.C.char_array (0 .. 25);
   subtype anon_array855 is Interfaces.C.char_array (0 .. 7);
   subtype anon_array857 is Interfaces.C.char_array (0 .. 23);
   type anon_struct851 is record
      u_reserved_2 : aliased unsigned;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:606
      u_strtok_last : Interfaces.C.Strings.chars_ptr;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:608
      u_asctime_buf : aliased anon_array853;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:609
      u_localtime_buf : aliased uu_tm;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:610
      u_gamma_signgam : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:611
      u_rand_next : aliased Extensions.unsigned_long_long;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:612
      u_r48 : aliased u_rand48;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:613
      u_mblen_state : aliased sys_utypes_h.u_mbstate_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:614
      u_mbtowc_state : aliased sys_utypes_h.u_mbstate_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:615
      u_wctomb_state : aliased sys_utypes_h.u_mbstate_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:616
      u_l64a_buf : aliased anon_array855;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:617
      u_signal_buf : aliased anon_array857;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:618
      u_getdate_err : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:619
      u_mbrlen_state : aliased sys_utypes_h.u_mbstate_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:620
      u_mbrtowc_state : aliased sys_utypes_h.u_mbstate_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:621
      u_mbsrtowcs_state : aliased sys_utypes_h.u_mbstate_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:622
      u_wcrtomb_state : aliased sys_utypes_h.u_mbstate_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:623
      u_wcsrtombs_state : aliased sys_utypes_h.u_mbstate_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:624
      u_h_errno : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:625
   end record
   with Convention => C_Pass_By_Copy;
   type anon_array860 is array (0 .. 29) of access unsigned_char;
   type anon_array861 is array (0 .. 29) of aliased unsigned;
   type anon_struct858 is record
      u_reserved_3 : anon_array860;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:638
      u_reserved_4 : aliased anon_array861;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:639
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union850 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u_reent : aliased anon_struct851;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:634
         when others =>
            u_reserved_5 : aliased anon_struct858;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:640
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type u_reent is record
      u_errno : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:570
      u_stdin : access uu_FILE;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:575
      u_stdout : access uu_FILE;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:575
      u_stderr : access uu_FILE;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:575
      u_inc : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:577
      u_emergency : aliased anon_array845;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:578
      u_reserved_1 : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:581
      u_locale : access uu_locale_t;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:583
      u_reserved_0 : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:586
      uu_cleanup : access procedure (arg1 : access u_reent);  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:589
      u_result : access u_Bigint;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:592
      u_result_k : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:593
      u_p5s : access u_Bigint;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:594
      u_freelist : System.Address;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:595
      u_cvtlen : aliased int;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:598
      u_cvtbuf : Interfaces.C.Strings.chars_ptr;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:599
      u_new : aliased anon_union850;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:642
      u_reserved_6 : access u_atexit;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:645
      u_reserved_7 : aliased u_atexit;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:646
      u_sig_func : System.Address;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:650
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/.local/share/alire/toolchains/gnat_xtensa_esp32_elf_15.2.1_0eebc758/xtensa-esp32-elf/include/sys/reent.h:568

   --  skipped func _reclaim_reent

   --  skipped func _fwalk_sglue

end sys_reent_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
