pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with lwip_arch_h;
with lwip_inet_h;
limited with sys_select_h;
limited with sys_utimeval_h;
with poll_h;
with System;
with sys_types_h;
with stddef_h;
with Interfaces.C.Strings;

package lwip_sockets_h is

   LWIP_SOCKET_HAVE_SA_LEN : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:63

   SIN_ZERO_LEN : constant := 8;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:83

   IOV_MAX : constant := 16#FFFF#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:122

   MSG_TRUNC : constant := 16#04#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:147
   MSG_CTRUNC : constant := 16#08#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:148
   --  arg-macro: function ALIGN_H (size)
   --    return ((size) + sizeof(long) - 1) and ~(sizeof(long)-1);
   --  arg-macro: procedure ALIGN_D (size)
   --    ALIGN_H(size)
   --  arg-macro: function CMSG_FIRSTHDR (mhdr)
   --    return (mhdr).msg_controllen >= sizeof(struct cmsghdr) ? (struct cmsghdr *)(mhdr).msg_control : (struct cmsghdr *)NULL;
   --  arg-macro: function CMSG_NXTHDR (mhdr, cmsg)
   --    return ((cmsg) = NULL) ? CMSG_FIRSTHDR(mhdr) : (((u8_t *)(cmsg) + ALIGN_H((cmsg).cmsg_len) + ALIGN_D(sizeof(struct cmsghdr)) > (u8_t *)((mhdr).msg_control) + (mhdr).msg_controllen) ? (struct cmsghdr *)NULL : (struct cmsghdr *)((void*)((u8_t *)(cmsg) + ALIGN_H((cmsg).cmsg_len))));
   --  arg-macro: function CMSG_DATA (cmsg)
   --    return (void*)((u8_t *)(cmsg) + ALIGN_D(sizeof(struct cmsghdr)));
   --  arg-macro: function CMSG_SPACE (length)
   --    return ALIGN_D(sizeof(struct cmsghdr)) + ALIGN_H(length);
   --  arg-macro: function CMSG_LEN (length)
   --    return ALIGN_D(sizeof(struct cmsghdr)) + length;
   --  unsupported macro: IFNAMSIZ NETIF_NAMESIZE

   SOCK_STREAM : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:197
   SOCK_DGRAM : constant := 2;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:198
   SOCK_RAW : constant := 3;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:199

   SO_REUSEADDR : constant := 16#0004#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:204
   SO_KEEPALIVE : constant := 16#0008#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:205
   SO_BROADCAST : constant := 16#0020#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:206

   SO_DEBUG : constant := 16#0001#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:212
   SO_ACCEPTCONN : constant := 16#0002#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:213
   SO_DONTROUTE : constant := 16#0010#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:214
   SO_USELOOPBACK : constant := 16#0040#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:215
   SO_LINGER : constant := 16#0080#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:216
   --  unsupported macro: SO_DONTLINGER ((int)(~SO_LINGER))

   SO_OOBINLINE : constant := 16#0100#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:218
   SO_REUSEPORT : constant := 16#0200#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:219
   SO_SNDBUF : constant := 16#1001#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:220
   SO_RCVBUF : constant := 16#1002#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:221
   SO_SNDLOWAT : constant := 16#1003#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:222
   SO_RCVLOWAT : constant := 16#1004#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:223
   SO_SNDTIMEO : constant := 16#1005#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:224
   SO_RCVTIMEO : constant := 16#1006#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:225
   SO_ERROR : constant := 16#1007#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:226
   SO_TYPE : constant := 16#1008#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:227
   SO_CONTIMEO : constant := 16#1009#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:228
   SO_NO_CHECK : constant := 16#100a#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:229
   SO_BINDTODEVICE : constant := 16#100b#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:230

   SOL_SOCKET : constant := 16#fff#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:243

   AF_UNSPEC : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:246
   AF_INET : constant := 2;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:247

   AF_INET6 : constant := 10;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:249
   --  unsupported macro: PF_INET AF_INET
   --  unsupported macro: PF_INET6 AF_INET6
   --  unsupported macro: PF_UNSPEC AF_UNSPEC

   IPPROTO_IP : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:257
   IPPROTO_ICMP : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:258
   IPPROTO_TCP : constant := 6;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:259
   IPPROTO_UDP : constant := 17;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:260

   IPPROTO_IPV6 : constant := 41;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:262
   IPPROTO_ICMPV6 : constant := 58;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:263

   IPPROTO_UDPLITE : constant := 136;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:265
   IPPROTO_RAW : constant := 255;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:266

   MSG_PEEK : constant := 16#01#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:269
   MSG_WAITALL : constant := 16#02#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:270
   MSG_OOB : constant := 16#04#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:271
   MSG_DONTWAIT : constant := 16#08#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:272
   MSG_MORE : constant := 16#10#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:273
   MSG_NOSIGNAL : constant := 16#20#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:274

   IP_TOS : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:280
   IP_TTL : constant := 2;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:281
   IP_PKTINFO : constant := 8;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:282

   TCP_NODELAY : constant := 16#01#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:288
   TCP_KEEPALIVE : constant := 16#02#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:289
   TCP_KEEPIDLE : constant := 16#03#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:290
   TCP_KEEPINTVL : constant := 16#04#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:291
   TCP_KEEPCNT : constant := 16#05#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:292

   IPV6_CHECKSUM : constant := 7;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:299
   IPV6_V6ONLY : constant := 27;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:300

   IP_MULTICAST_TTL : constant := 5;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:316
   IP_MULTICAST_IF : constant := 6;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:317
   IP_MULTICAST_LOOP : constant := 7;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:318

   IP_ADD_MEMBERSHIP : constant := 3;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:325
   IP_DROP_MEMBERSHIP : constant := 4;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:326

   IPV6_JOIN_GROUP : constant := 12;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:345
   --  unsupported macro: IPV6_ADD_MEMBERSHIP IPV6_JOIN_GROUP

   IPV6_LEAVE_GROUP : constant := 13;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:347
   --  unsupported macro: IPV6_DROP_MEMBERSHIP IPV6_LEAVE_GROUP

   IPTOS_TOS_MASK : constant := 16#1E#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:372
   --  arg-macro: function IPTOS_TOS (tos)
   --    return (tos) and IPTOS_TOS_MASK;

   IPTOS_LOWDELAY : constant := 16#10#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:374
   IPTOS_THROUGHPUT : constant := 16#08#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:375
   IPTOS_RELIABILITY : constant := 16#04#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:376
   IPTOS_LOWCOST : constant := 16#02#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:377
   --  unsupported macro: IPTOS_MINCOST IPTOS_LOWCOST

   IPTOS_PREC_MASK : constant := 16#e0#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:389
   --  arg-macro: function IPTOS_PREC (tos)
   --    return (tos) and IPTOS_PREC_MASK;

   IPTOS_PREC_NETCONTROL : constant := 16#e0#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:391
   IPTOS_PREC_INTERNETCONTROL : constant := 16#c0#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:392
   IPTOS_PREC_CRITIC_ECP : constant := 16#a0#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:393
   IPTOS_PREC_FLASHOVERRIDE : constant := 16#80#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:394
   IPTOS_PREC_FLASH : constant := 16#60#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:395
   IPTOS_PREC_IMMEDIATE : constant := 16#40#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:396
   IPTOS_PREC_PRIORITY : constant := 16#20#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:397
   IPTOS_PREC_ROUTINE : constant := 16#00#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:398

   IOCPARM_MASK : constant := 16#7f#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:412
   IOC_VOID : constant := 16#20000000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:413
   IOC_OUT : constant := 16#40000000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:414
   IOC_IN : constant := 16#80000000#;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:415
   --  unsupported macro: IOC_INOUT (IOC_IN|IOC_OUT)
   --  unsupported macro: FIONREAD _IOR('f', 127, unsigned long)
   --  unsupported macro: FIONBIO _IOW('f', 126, unsigned long)
   --  unsupported macro: SIOCSHIWAT _IOW('s', 0, unsigned long)
   --  unsupported macro: SIOCGHIWAT _IOR('s', 1, unsigned long)
   --  unsupported macro: SIOCSLOWAT _IOW('s', 2, unsigned long)
   --  unsupported macro: SIOCGLOWAT _IOR('s', 3, unsigned long)
   --  unsupported macro: SIOCATMARK _IOR('s', 7, unsigned long)
   --  unsupported macro: O_NDELAY O_NONBLOCK

   SHUT_RD : constant := 0;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:469
   SHUT_WR : constant := 1;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:470
   SHUT_RDWR : constant := 2;  --  /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:471
   --  unsupported macro: LWIP_SELECT_MAXNFDS FD_SETSIZE

   subtype sa_family_t is lwip_arch_h.u8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:68

   subtype anon_array855 is Interfaces.C.char_array (0 .. 7);
   type sockaddr_in is record
      sin_len : aliased lwip_arch_h.u8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:79
      sin_family : aliased sa_family_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:80
      sin_port : aliased sys_types_h.in_port_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:81
      sin_addr : aliased lwip_inet_h.in_addr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:82
      sin_zero : aliased anon_array855;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:84
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:78

   type sockaddr_in6 is record
      sin6_len : aliased lwip_arch_h.u8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:90
      sin6_family : aliased sa_family_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:91
      sin6_port : aliased sys_types_h.in_port_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:92
      sin6_flowinfo : aliased lwip_arch_h.u32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:93
      sin6_addr : aliased lwip_inet_h.in6_addr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:94
      sin6_scope_id : aliased lwip_arch_h.u32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:95
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:89

   subtype anon_array3075 is Interfaces.C.char_array (0 .. 13);
   type sockaddr is record
      sa_len : aliased lwip_arch_h.u8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:100
      sa_family : aliased sa_family_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:101
      sa_data : aliased anon_array3075;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:102
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:99

   subtype anon_array3008 is Interfaces.C.char_array (0 .. 1);
   type anon_array3004 is array (0 .. 2) of aliased lwip_arch_h.u32_t;
   type sockaddr_storage is record
      s2_len : aliased lwip_arch_h.u8_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:106
      ss_family : aliased sa_family_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:107
      s2_data1 : aliased anon_array3008;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:108
      s2_data2 : aliased anon_array3004;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:109
      s2_data3 : aliased anon_array3004;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:111
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:105

   subtype socklen_t is lwip_arch_h.u32_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:118

   type iovec is record
      iov_base : System.Address;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:129
      iov_len : aliased stddef_h.size_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:130
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:128

   subtype msg_iovlen_t is int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:134

   type msghdr is record
      msg_name : System.Address;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:137
      msg_namelen : aliased socklen_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:138
      msg_iov : access iovec;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:139
      msg_iovlen : aliased msg_iovlen_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:140
      msg_control : System.Address;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:141
      msg_controllen : aliased socklen_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:142
      msg_flags : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:143
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:136

   type cmsghdr is record
      cmsg_len : aliased socklen_t;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:152
      cmsg_level : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:153
      cmsg_type : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:154
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:151

   subtype anon_array3084 is Interfaces.C.char_array (0 .. 5);
   type ifreq is record
      ifr_name : aliased anon_array3084;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:193
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:192

   type linger is record
      l_onoff : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:236
      l_linger : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:237
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:235

   type ip_mreq is record
      imr_multiaddr : aliased lwip_inet_h.in_addr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:329
      imr_interface : aliased lwip_inet_h.in_addr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:330
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:328

   type in_pktinfo is record
      ipi_ifindex : aliased unsigned;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:336
      ipi_addr : aliased lwip_inet_h.in_addr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:337
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:335

   type ipv6_mreq is record
      ipv6mr_multiaddr : aliased lwip_inet_h.in6_addr;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:351
      ipv6mr_interface : aliased unsigned;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:352
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:350

   procedure lwip_socket_thread_init  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:548
   with Import => True,
        Convention => C,
        External_Name => "lwip_socket_thread_init";

   procedure lwip_socket_thread_cleanup  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:549
   with Import => True,
        Convention => C,
        External_Name => "lwip_socket_thread_cleanup";

   function lwip_accept
     (s : int;
      addr : access sockaddr;
      addrlen : access socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:595
   with Import => True,
        Convention => C,
        External_Name => "lwip_accept";

   function lwip_bind
     (s : int;
      name : access constant sockaddr;
      namelen : socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:596
   with Import => True,
        Convention => C,
        External_Name => "lwip_bind";

   function lwip_shutdown (s : int; how : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:597
   with Import => True,
        Convention => C,
        External_Name => "lwip_shutdown";

   function lwip_getpeername
     (s : int;
      name : access sockaddr;
      namelen : access socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:598
   with Import => True,
        Convention => C,
        External_Name => "lwip_getpeername";

   function lwip_getsockname
     (s : int;
      name : access sockaddr;
      namelen : access socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:599
   with Import => True,
        Convention => C,
        External_Name => "lwip_getsockname";

   function lwip_getsockopt
     (s : int;
      level : int;
      optname : int;
      optval : System.Address;
      optlen : access socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:600
   with Import => True,
        Convention => C,
        External_Name => "lwip_getsockopt";

   function lwip_setsockopt
     (s : int;
      level : int;
      optname : int;
      optval : System.Address;
      optlen : socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:601
   with Import => True,
        Convention => C,
        External_Name => "lwip_setsockopt";

   function lwip_close (s : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:602
   with Import => True,
        Convention => C,
        External_Name => "lwip_close";

   function lwip_connect
     (s : int;
      name : access constant sockaddr;
      namelen : socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:603
   with Import => True,
        Convention => C,
        External_Name => "lwip_connect";

   function lwip_listen (s : int; backlog : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:604
   with Import => True,
        Convention => C,
        External_Name => "lwip_listen";

   function lwip_recv
     (s : int;
      mem : System.Address;
      len : stddef_h.size_t;
      flags : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:605
   with Import => True,
        Convention => C,
        External_Name => "lwip_recv";

   function lwip_read
     (s : int;
      mem : System.Address;
      len : stddef_h.size_t) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:606
   with Import => True,
        Convention => C,
        External_Name => "lwip_read";

   function lwip_readv
     (s : int;
      iov : access constant iovec;
      iovcnt : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:607
   with Import => True,
        Convention => C,
        External_Name => "lwip_readv";

   function lwip_recvfrom
     (s : int;
      mem : System.Address;
      len : stddef_h.size_t;
      flags : int;
      from : access sockaddr;
      fromlen : access socklen_t) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:608
   with Import => True,
        Convention => C,
        External_Name => "lwip_recvfrom";

   function lwip_recvmsg
     (s : int;
      message : access msghdr;
      flags : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:610
   with Import => True,
        Convention => C,
        External_Name => "lwip_recvmsg";

   function lwip_send
     (s : int;
      dataptr : System.Address;
      size : stddef_h.size_t;
      flags : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:611
   with Import => True,
        Convention => C,
        External_Name => "lwip_send";

   function lwip_sendmsg
     (s : int;
      message : access constant msghdr;
      flags : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:612
   with Import => True,
        Convention => C,
        External_Name => "lwip_sendmsg";

   function lwip_sendto
     (s : int;
      dataptr : System.Address;
      size : stddef_h.size_t;
      flags : int;
      to : access constant sockaddr;
      tolen : socklen_t) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:613
   with Import => True,
        Convention => C,
        External_Name => "lwip_sendto";

   function lwip_socket
     (domain : int;
      c_type : int;
      protocol : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:615
   with Import => True,
        Convention => C,
        External_Name => "lwip_socket";

   function lwip_write
     (s : int;
      dataptr : System.Address;
      size : stddef_h.size_t) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:616
   with Import => True,
        Convention => C,
        External_Name => "lwip_write";

   function lwip_writev
     (s : int;
      iov : access constant iovec;
      iovcnt : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:617
   with Import => True,
        Convention => C,
        External_Name => "lwip_writev";

   function lwip_select
     (maxfdp1 : int;
      readset : access sys_select_h.fd_set;
      writeset : access sys_select_h.fd_set;
      exceptset : access sys_select_h.fd_set;
      timeout : access sys_utimeval_h.timeval) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:619
   with Import => True,
        Convention => C,
        External_Name => "lwip_select";

   function lwip_poll
     (fds : access poll_h.pollfd;
      nfds : poll_h.nfds_t;
      timeout : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:623
   with Import => True,
        Convention => C,
        External_Name => "lwip_poll";

   function lwip_ioctl
     (s : int;
      cmd : long;
      argp : System.Address) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:625
   with Import => True,
        Convention => C,
        External_Name => "lwip_ioctl";

   function lwip_fcntl
     (s : int;
      cmd : int;
      val : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:626
   with Import => True,
        Convention => C,
        External_Name => "lwip_fcntl";

   function lwip_inet_ntop
     (af : int;
      src : System.Address;
      dst : Interfaces.C.Strings.chars_ptr;
      size : socklen_t) return Interfaces.C.Strings.chars_ptr  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:627
   with Import => True,
        Convention => C,
        External_Name => "lwip_inet_ntop";

   function lwip_inet_pton
     (af : int;
      src : Interfaces.C.Strings.chars_ptr;
      dst : System.Address) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h:628
   with Import => True,
        Convention => C,
        External_Name => "lwip_inet_pton";

   function c_accept
     (s : int;
      addr : access lwip_sockets_h.sockaddr;
      addrlen : access lwip_sockets_h.socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:37
   with Import => True,
        Convention => C,
        External_Name => "accept";

   function bind
     (s : int;
      name : access constant lwip_sockets_h.sockaddr;
      namelen : lwip_sockets_h.socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:39
   with Import => True,
        Convention => C,
        External_Name => "bind";

   function shutdown (s : int; how : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:41
   with Import => True,
        Convention => C,
        External_Name => "shutdown";

   function getpeername
     (s : int;
      name : access lwip_sockets_h.sockaddr;
      namelen : access lwip_sockets_h.socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:43
   with Import => True,
        Convention => C,
        External_Name => "getpeername";

   function getsockname
     (s : int;
      name : access lwip_sockets_h.sockaddr;
      namelen : access lwip_sockets_h.socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:45
   with Import => True,
        Convention => C,
        External_Name => "getsockname";

   function setsockopt
     (s : int;
      level : int;
      optname : int;
      opval : System.Address;
      optlen : lwip_sockets_h.socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:47
   with Import => True,
        Convention => C,
        External_Name => "setsockopt";

   function getsockopt
     (s : int;
      level : int;
      optname : int;
      opval : System.Address;
      optlen : access lwip_sockets_h.socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:49
   with Import => True,
        Convention => C,
        External_Name => "getsockopt";

   function closesocket (s : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:51
   with Import => True,
        Convention => C,
        External_Name => "closesocket";

   function connect
     (s : int;
      name : access constant lwip_sockets_h.sockaddr;
      namelen : lwip_sockets_h.socklen_t) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:53
   with Import => True,
        Convention => C,
        External_Name => "connect";

   function listen (s : int; backlog : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:55
   with Import => True,
        Convention => C,
        External_Name => "listen";

   function recvmsg
     (sockfd : int;
      msg : access lwip_sockets_h.msghdr;
      flags : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:57
   with Import => True,
        Convention => C,
        External_Name => "recvmsg";

   function recv
     (s : int;
      mem : System.Address;
      len : stddef_h.size_t;
      flags : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:59
   with Import => True,
        Convention => C,
        External_Name => "recv";

   function recvfrom
     (s : int;
      mem : System.Address;
      len : stddef_h.size_t;
      flags : int;
      from : access lwip_sockets_h.sockaddr;
      fromlen : access lwip_sockets_h.socklen_t) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:61
   with Import => True,
        Convention => C,
        External_Name => "recvfrom";

   function send
     (s : int;
      dataptr : System.Address;
      size : stddef_h.size_t;
      flags : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:63
   with Import => True,
        Convention => C,
        External_Name => "send";

   function sendmsg
     (s : int;
      message : access constant lwip_sockets_h.msghdr;
      flags : int) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:65
   with Import => True,
        Convention => C,
        External_Name => "sendmsg";

   function sendto
     (s : int;
      dataptr : System.Address;
      size : stddef_h.size_t;
      flags : int;
      to : access constant lwip_sockets_h.sockaddr;
      to_len : lwip_sockets_h.socklen_t) return sys_types_h.ssize_t  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:67
   with Import => True,
        Convention => C,
        External_Name => "sendto";

   function socket
     (domain : int;
      c_type : int;
      protocol : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:69
   with Import => True,
        Convention => C,
        External_Name => "socket";

   function inet_ntop
     (af : int;
      src : System.Address;
      dst : Interfaces.C.Strings.chars_ptr;
      size : lwip_sockets_h.socklen_t) return Interfaces.C.Strings.chars_ptr  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:71
   with Import => True,
        Convention => C,
        External_Name => "inet_ntop";

   function inet_pton
     (af : int;
      src : Interfaces.C.Strings.chars_ptr;
      dst : System.Address) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/lwip/include/lwip/sockets.h:73
   with Import => True,
        Convention => C,
        External_Name => "inet_pton";

end lwip_sockets_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
