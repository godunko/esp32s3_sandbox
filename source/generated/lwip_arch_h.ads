pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package lwip_arch_h is

   LWIP_NO_STDDEF_H : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:103

   LWIP_NO_STDINT_H : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:115

   LWIP_HAVE_INT64 : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:123

   LWIP_NO_INTTYPES_H : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:143
   --  unsupported macro: X8_F "02" PRIx8
   --  unsupported macro: SZT_F PRIuPTR

   LWIP_NO_LIMITS_H : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:180
   --  unsupported macro: SSIZE_MAX INT_MAX

   LWIP_UINT32_MAX : constant := 16#ffffffff#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:207

   LWIP_NO_CTYPE_H : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:215
   --  arg-macro: procedure lwip_isdigit (c)
   --    isdigit((unsigned char)(c))
   --  arg-macro: procedure lwip_isxdigit (c)
   --    isxdigit((unsigned char)(c))
   --  arg-macro: procedure lwip_islower (c)
   --    islower((unsigned char)(c))
   --  arg-macro: procedure lwip_isspace (c)
   --    isspace((unsigned char)(c))
   --  arg-macro: procedure lwip_isupper (c)
   --    isupper((unsigned char)(c))
   --  arg-macro: procedure lwip_tolower (c)
   --    tolower((unsigned char)(c))
   --  arg-macro: procedure lwip_toupper (c)
   --    toupper((unsigned char)(c))
   --  arg-macro: function LWIP_CONST_CAST (target_type, val)
   --    return (target_type)((ptrdiff_t)val);
   --  arg-macro: procedure LWIP_ALIGNMENT_CAST (target_type, val)
   --    LWIP_CONST_CAST(target_type, val)
   --  arg-macro: procedure LWIP_PTR_NUMERIC_CAST (target_type, val)
   --    LWIP_CONST_CAST(target_type, val)
   --  arg-macro: procedure LWIP_PACKED_CAST (target_type, val)
   --    LWIP_CONST_CAST(target_type, val)
   --  arg-macro: procedure LWIP_DECLARE_MEMORY_ALIGNED (variable_name, size)
   --    u8_t variable_name(LWIP_MEM_ALIGN_BUFFER(size))
   --  arg-macro: function LWIP_MEM_ALIGN_SIZE (size)
   --    return ((size) + MEM_ALIGNMENT - 1) and ~(MEM_ALIGNMENT-1);
   --  arg-macro: function LWIP_MEM_ALIGN_BUFFER (size)
   --    return ((size) + MEM_ALIGNMENT - 1);
   --  arg-macro: function LWIP_MEM_ALIGN (addr)
   --    return (void *)(((mem_ptr_t)(addr) + MEM_ALIGNMENT - 1) and ~(mem_ptr_t)(MEM_ALIGNMENT-1));
   --  arg-macro: procedure PACK_STRUCT_FLD_8 (x)
   --    PACK_STRUCT_FIELD(x)
   --  arg-macro: procedure PACK_STRUCT_FLD_S (x)
   --    PACK_STRUCT_FIELD(x)
   --  arg-macro: procedure LWIP_UNUSED_ARG (x)
   --    (void)x

   subtype u8_t is sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:125

   subtype s8_t is sys_ustdint_h.int8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:126

   subtype u16_t is sys_ustdint_h.uint16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:127

   subtype s16_t is sys_ustdint_h.int16_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:128

   subtype u32_t is sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:129

   subtype s32_t is sys_ustdint_h.int32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:130

   subtype u64_t is sys_ustdint_h.uint64_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:132

   subtype s64_t is sys_ustdint_h.int64_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:133

   subtype mem_ptr_t is sys_ustdint_h.uintptr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/arch.h:135

end lwip_arch_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
