pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_types_h;
with lwip_arch_h;

package lwip_inet_h is

   --  unsupported macro: s6_addr un.u8_addr
   --  unsupported macro: INADDR_NONE IPADDR_NONE
   --  unsupported macro: INADDR_LOOPBACK IPADDR_LOOPBACK
   --  unsupported macro: INADDR_ANY IPADDR_ANY
   --  unsupported macro: INADDR_BROADCAST IPADDR_BROADCAST
   --  unsupported macro: IN6ADDR_ANY_INIT {{{0,0,0,0}}}
   --  unsupported macro: IN6ADDR_LOOPBACK_INIT {{{0,0,0,PP_HTONL(1)}}}
   --  arg-macro: procedure IN_CLASSA (a)
   --    IP_CLASSA(a)
   --  unsupported macro: IN_CLASSA_NET IP_CLASSA_NET
   --  unsupported macro: IN_CLASSA_NSHIFT IP_CLASSA_NSHIFT
   --  unsupported macro: IN_CLASSA_HOST IP_CLASSA_HOST
   --  unsupported macro: IN_CLASSA_MAX IP_CLASSA_MAX
   --  arg-macro: procedure IN_CLASSB (b)
   --    IP_CLASSB(b)
   --  unsupported macro: IN_CLASSB_NET IP_CLASSB_NET
   --  unsupported macro: IN_CLASSB_NSHIFT IP_CLASSB_NSHIFT
   --  unsupported macro: IN_CLASSB_HOST IP_CLASSB_HOST
   --  unsupported macro: IN_CLASSB_MAX IP_CLASSB_MAX
   --  arg-macro: procedure IN_CLASSC (c)
   --    IP_CLASSC(c)
   --  unsupported macro: IN_CLASSC_NET IP_CLASSC_NET
   --  unsupported macro: IN_CLASSC_NSHIFT IP_CLASSC_NSHIFT
   --  unsupported macro: IN_CLASSC_HOST IP_CLASSC_HOST
   --  unsupported macro: IN_CLASSC_MAX IP_CLASSC_MAX
   --  arg-macro: procedure IN_CLASSD (d)
   --    IP_CLASSD(d)
   --  unsupported macro: IN_CLASSD_NET IP_CLASSD_NET
   --  unsupported macro: IN_CLASSD_NSHIFT IP_CLASSD_NSHIFT
   --  unsupported macro: IN_CLASSD_HOST IP_CLASSD_HOST
   --  unsupported macro: IN_CLASSD_MAX IP_CLASSD_MAX
   --  arg-macro: procedure IN_MULTICAST (a)
   --    IP_MULTICAST(a)
   --  arg-macro: procedure IN_EXPERIMENTAL (a)
   --    IP_EXPERIMENTAL(a)
   --  arg-macro: procedure IN_BADCLASS (a)
   --    IP_BADCLASS(a)
   --  unsupported macro: IN_LOOPBACKNET IP_LOOPBACKNET
   --  arg-macro: procedure IN6_IS_ADDR_UNSPECIFIED (a)
   --    ip6_addr_isany((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_LOOPBACK (a)
   --    ip6_addr_isloopback((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_MULTICAST (a)
   --    ip6_addr_ismulticast((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_LINKLOCAL (a)
   --    ip6_addr_islinklocal((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_SITELOCAL (a)
   --    ip6_addr_issitelocal((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_V4MAPPED (a)
   --    ip6_addr_isipv4mappedipv6((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_V4COMPAT (a)
   --    ip6_addr_isipv4compat((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_MC_NODELOCAL (a)
   --    ip6_addr_ismulticast_iflocal((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_MC_LINKLOCAL (a)
   --    ip6_addr_ismulticast_linklocal((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_MC_SITELOCAL (a)
   --    ip6_addr_ismulticast_sitelocal((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_MC_ORGLOCAL (a)
   --    ip6_addr_ismulticast_orglocal((ip6_addr_t*)(a))
   --  arg-macro: procedure IN6_IS_ADDR_MC_GLOBAL (a)
   --    ip6_addr_ismulticast_global((ip6_addr_t*)(a))
   --  unsupported macro: INET_ADDRSTRLEN IP4ADDR_STRLEN_MAX
   --  unsupported macro: INET6_ADDRSTRLEN IP6ADDR_STRLEN_MAX
   --  arg-macro: function inet_addr_from_ip4addr (target_inaddr, source_ipaddr)
   --    return (target_inaddr).s_addr := ip4_addr_get_u32(source_ipaddr);
   --  arg-macro: function inet_addr_to_ip4addr (target_ipaddr, source_inaddr)
   --    return ip4_addr_set_u32(target_ipaddr, (source_inaddr).s_addr);
   --  arg-macro: procedure inet_addr (cp)
   --    ipaddr_addr(cp)
   --  arg-macro: procedure inet_aton (cp, addr)
   --    ip4addr_aton(cp, (ip4_addr_t*)addr)
   --  arg-macro: procedure inet_ntoa (addr)
   --    ip4addr_ntoa((const ip4_addr_t*)and(addr))
   --  arg-macro: procedure inet_ntoa_r (addr, buf, buflen)
   --    ip4addr_ntoa_r((const ip4_addr_t*)and(addr), buf, buflen)
   --  arg-macro: procedure inet6_addr_from_ip6addr (target_in6addr, source_ip6addr)
   --    {(target_in6addr).un.u32_addr(0) := (source_ip6addr).addr(0); (target_in6addr).un.u32_addr(1) := (source_ip6addr).addr(1); (target_in6addr).un.u32_addr(2) := (source_ip6addr).addr(2); (target_in6addr).un.u32_addr(3) := (source_ip6addr).addr(3);}
   --  arg-macro: procedure inet6_addr_to_ip6addr (target_ip6addr, source_in6addr)
   --    {(target_ip6addr).addr(0) := (source_in6addr).un.u32_addr(0); (target_ip6addr).addr(1) := (source_in6addr).un.u32_addr(1); (target_ip6addr).addr(2) := (source_in6addr).un.u32_addr(2); (target_ip6addr).addr(3) := (source_in6addr).un.u32_addr(3); ip6_addr_clear_zone(target_ip6addr);}
   --  arg-macro: procedure inet6_aton (cp, addr)
   --    ip6addr_aton(cp, (ip6_addr_t*)addr)
   --  arg-macro: procedure inet6_ntoa (addr)
   --    ip6addr_ntoa((const ip6_addr_t*)and(addr))
   --  arg-macro: procedure inet6_ntoa_r (addr, buf, buflen)
   --    ip6addr_ntoa_r((const ip6_addr_t*)and(addr), buf, buflen)
   type in_addr is record
      s_addr : aliased sys_types_h.in_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/inet.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/inet.h:63

   type anon_array2844 is array (0 .. 3) of aliased lwip_arch_h.u32_t;
   type anon_array3068 is array (0 .. 15) of aliased lwip_arch_h.u8_t;
   type anon_union3067 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u32_addr : aliased anon_array2844;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/inet.h:69
         when others =>
            u8_addr : aliased anon_array3068;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/inet.h:70
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type in6_addr is record
      un : aliased anon_union3067;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/inet.h:71
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/inet.h:67

   in6addr_any : aliased constant in6_addr  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/inet.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "in6addr_any";

end lwip_inet_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
