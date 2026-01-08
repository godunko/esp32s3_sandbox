pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package esp_netif_ip_addr_h is

   --  arg-macro: function esp_netif_htonl (x)
   --    return (((x) and (uint32_t)16#000000ff#) << 24) or (((x) and (uint32_t)16#0000ff00#) << 8) or (((x) and (uint32_t)16#00ff0000#) >> 8) or (((x) and (uint32_t)16#ff000000#) >> 24);
   --  arg-macro: function esp_netif_ip4_makeu32 (a, b, c, d)
   --    return ((uint32_t)((a) and 16#ff#) << 24) or ((uint32_t)((b) and 16#ff#) << 16) or ((uint32_t)((c) and 16#ff#) << 8) or (uint32_t)((d) and 16#ff#);
   --  arg-macro: function ESP_IP6_ADDR_BLOCK1 (ip6addr)
   --    return (uint16_t)((esp_netif_htonl((ip6addr).addr(0)) >> 16) and 16#ffff#);
   --  arg-macro: function ESP_IP6_ADDR_BLOCK2 (ip6addr)
   --    return (uint16_t)((esp_netif_htonl((ip6addr).addr(0))) and 16#ffff#);
   --  arg-macro: function ESP_IP6_ADDR_BLOCK3 (ip6addr)
   --    return (uint16_t)((esp_netif_htonl((ip6addr).addr(1)) >> 16) and 16#ffff#);
   --  arg-macro: function ESP_IP6_ADDR_BLOCK4 (ip6addr)
   --    return (uint16_t)((esp_netif_htonl((ip6addr).addr(1))) and 16#ffff#);
   --  arg-macro: function ESP_IP6_ADDR_BLOCK5 (ip6addr)
   --    return (uint16_t)((esp_netif_htonl((ip6addr).addr(2)) >> 16) and 16#ffff#);
   --  arg-macro: function ESP_IP6_ADDR_BLOCK6 (ip6addr)
   --    return (uint16_t)((esp_netif_htonl((ip6addr).addr(2))) and 16#ffff#);
   --  arg-macro: function ESP_IP6_ADDR_BLOCK7 (ip6addr)
   --    return (uint16_t)((esp_netif_htonl((ip6addr).addr(3)) >> 16) and 16#ffff#);
   --  arg-macro: function ESP_IP6_ADDR_BLOCK8 (ip6addr)
   --    return (uint16_t)((esp_netif_htonl((ip6addr).addr(3))) and 16#ffff#);
   IPSTR : aliased constant String := "%d.%d.%d.%d" & ASCII.NUL;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:42
   --  arg-macro: function esp_ip4_addr_get_byte (ipaddr, idx)
   --    return ((const uint8_t*)(and(ipaddr).addr))(idx);
   --  arg-macro: procedure esp_ip4_addr1 (ipaddr)
   --    esp_ip4_addr_get_byte(ipaddr, 0)
   --  arg-macro: procedure esp_ip4_addr2 (ipaddr)
   --    esp_ip4_addr_get_byte(ipaddr, 1)
   --  arg-macro: procedure esp_ip4_addr3 (ipaddr)
   --    esp_ip4_addr_get_byte(ipaddr, 2)
   --  arg-macro: procedure esp_ip4_addr4 (ipaddr)
   --    esp_ip4_addr_get_byte(ipaddr, 3)
   --  arg-macro: function esp_ip4_addr1_16 (ipaddr)
   --    return (uint16_t)esp_ip4_addr1(ipaddr);
   --  arg-macro: function esp_ip4_addr2_16 (ipaddr)
   --    return (uint16_t)esp_ip4_addr2(ipaddr);
   --  arg-macro: function esp_ip4_addr3_16 (ipaddr)
   --    return (uint16_t)esp_ip4_addr3(ipaddr);
   --  arg-macro: function esp_ip4_addr4_16 (ipaddr)
   --    return (uint16_t)esp_ip4_addr4(ipaddr);
   --  arg-macro: procedure IP2STR (ipaddr)
   --    esp_ip4_addr1_16(ipaddr), esp_ip4_addr2_16(ipaddr), esp_ip4_addr3_16(ipaddr), esp_ip4_addr4_16(ipaddr)

   IPV6STR : aliased constant String := "%04x:%04x:%04x:%04x:%04x:%04x:%04x:%04x" & ASCII.NUL;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:60
   --  arg-macro: procedure IPV62STR (ipaddr)
   --    ESP_IP6_ADDR_BLOCK1(and(ipaddr)), ESP_IP6_ADDR_BLOCK2(and(ipaddr)), ESP_IP6_ADDR_BLOCK3(and(ipaddr)), ESP_IP6_ADDR_BLOCK4(and(ipaddr)), ESP_IP6_ADDR_BLOCK5(and(ipaddr)), ESP_IP6_ADDR_BLOCK6(and(ipaddr)), ESP_IP6_ADDR_BLOCK7(and(ipaddr)), ESP_IP6_ADDR_BLOCK8(and(ipaddr))

   ESP_IPADDR_TYPE_V4 : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:71
   ESP_IPADDR_TYPE_V6 : constant := 6;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:72
   ESP_IPADDR_TYPE_ANY : constant := 46;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:73
   --  arg-macro: function ESP_IP4TOUINT32 (a, b, c, d)
   --    return ((uint32_t)((a) and 16#ff#) << 24) or ((uint32_t)((b) and 16#ff#) << 16) or ((uint32_t)((c) and 16#ff#) << 8) or (uint32_t)((d) and 16#ff#);
   --  arg-macro: procedure ESP_IP4TOADDR (a, b, c, d)
   --    esp_netif_htonl(ESP_IP4TOUINT32(a, b, c, d))
   --  arg-macro: procedure ESP_IP4ADDR_INIT (a, b, c, d)
   --    { .u_addr := { .ip4 := { .addr := ESP_IP4TOADDR(a, b, c, d) }}, .type := ESP_IPADDR_TYPE_V4 }
   --  arg-macro: procedure ESP_IP6ADDR_INIT (a, b, c, d)
   --    { .u_addr := { .ip6 := { .addr := { a, b, c, d }, .zone := 0 }}, .type := ESP_IPADDR_TYPE_V6 }

   IP4ADDR_STRLEN_MAX : constant := 16;  --  /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:86
   --  arg-macro: function ESP_IP_IS_ANY (addr)
   --    return (addr.type = ESP_IPADDR_TYPE_V4  and then  ip4_addr_isany_val(addr.u_addr.ip4))  or else  (addr.type = ESP_IPADDR_TYPE_V6  and then  ip6_addr_isany_val(addr.u_addr.ip6));

   type anon_array2799 is array (0 .. 3) of aliased sys_ustdint_h.uint32_t;
   type esp_ip6_addr is record
      addr : aliased anon_array2799;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:103
      zone : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:104
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:102

   type esp_ip4_addr is record
      addr : aliased sys_ustdint_h.uint32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:112
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:111

   subtype esp_ip4_addr_t is esp_ip4_addr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:115

   subtype esp_ip6_addr_t is esp_ip6_addr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:117

   type anon_union2805 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ip6 : aliased esp_ip6_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:125
         when others =>
            ip4 : aliased esp_ip4_addr_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:126
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type u_ip_addr is record
      u_addr : aliased anon_union2805;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:127
      c_type : aliased sys_ustdint_h.uint8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:128
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:123

   subtype esp_ip_addr_t is u_ip_addr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:129

   type esp_ip6_addr_type_t is 
     (ESP_IP6_ADDR_IS_UNKNOWN,
      ESP_IP6_ADDR_IS_GLOBAL,
      ESP_IP6_ADDR_IS_LINK_LOCAL,
      ESP_IP6_ADDR_IS_SITE_LOCAL,
      ESP_IP6_ADDR_IS_UNIQUE_LOCAL,
      ESP_IP6_ADDR_IS_IPV4_MAPPED_IPV6)
   with Convention => C;  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:138

   function esp_netif_ip6_get_addr_type (ip6_addr : access esp_ip6_addr_t) return esp_ip6_addr_type_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_ip6_get_addr_type";

   procedure esp_netif_ip_addr_copy (dest : access esp_ip_addr_t; src : access constant esp_ip_addr_t)  -- /home/godunko/esp/v5.5.2/esp-idf/components/esp_netif/include/esp_netif_ip_addr.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "esp_netif_ip_addr_copy";

end esp_netif_ip_addr_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
