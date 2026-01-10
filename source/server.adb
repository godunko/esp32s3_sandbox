--
--  Copyright (C) 2026, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with Ada.Text_IO;
with Interfaces.C;

with lwip_sockets_h;

package body Server is

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      use type Interfaces.C.int;
      use type Interfaces.C.unsigned_long;

      Dest_Addr   : lwip_sockets_h.sockaddr_storage;
      Listen_Sock : Interfaces.C.int;
      Res         : Interfaces.C.int;

   begin
      declare
         Dest_Addr_v4 : lwip_sockets_h.sockaddr_in
           with Import, Address => Dest_Addr'Address;

      begin
         Dest_Addr_v4.sin_addr.s_addr := 16#01_04_A8_C0#;  --  htonl ("192.168.4.1");
         --  Dest_Addr_v4.sin_addr.s_addr := 16#01_00_00_7F#;  --  htonl ("127.0.0.1");
         Dest_Addr_v4.sin_family := lwip_sockets_h.AF_INET;
         Dest_Addr_v4.sin_port := 16#BC0C#;  --  htons (3260);
      end;

      Ada.Text_IO.Put_Line ("lwip_socket()");

      Listen_Sock :=
        lwip_sockets_h.lwip_socket
          (lwip_sockets_h.AF_INET,
           lwip_sockets_h.SOCK_STREAM,
           lwip_sockets_h.IPPROTO_IP);

      if Listen_Sock < 0 then
         Ada.Text_IO.Put_Line ("can't create socket");

         raise Program_Error;
      end if;

      declare
         Dest_Addr_B : aliased lwip_sockets_h.sockaddr
           with Import, Address => Dest_Addr'Address;
         errno : Interfaces.C.int with Import, External_Name => "errno";

      begin
         Ada.Text_IO.Put_Line ("bind()");

         Res :=
           lwip_sockets_h.lwip_bind
             (Listen_Sock,
              Dest_Addr_B'Access,
              Dest_Addr_B'Size / 8);

         if Res /= 0 then
            Ada.Text_IO.Put_Line
              ("bind failed"
                 & Interfaces.C.int'Image (Res)
                 & Interfaces.C.int'Image (errno)); --  & errno_h );

            raise Program_Error;
         end if;
      end;

      Ada.Text_IO.Put_Line ("listen()");

      Res := lwip_sockets_h.lwip_listen (Listen_Sock, 1);

      if Res /= 0 then
         Ada.Text_IO.Put_Line ("listen failed");

         raise Program_Error;
      end if;

      declare
         Dest_Addr_A : aliased lwip_sockets_h.sockaddr
           with Import, Address => Dest_Addr'Address;
         Dest_Len    : aliased lwip_sockets_h.socklen_t :=
           lwip_sockets_h.sockaddr'Size / 8;
         Sock        : Interfaces.C.int;

      begin
         Ada.Text_IO.Put_Line ("accept()");

         Sock :=
           lwip_sockets_h.lwip_accept
             (s       => Listen_Sock,
              addr    => Dest_Addr_A'Access,
              addrlen => Dest_Len'Access);

         if Sock < 0 then
            Ada.Text_IO.Put_Line ("accept failed");

            raise Program_Error;
         end if;

         Ada.Text_IO.Put_Line ("Connection Accepted");
      end;
   end Initialize;

end Server;