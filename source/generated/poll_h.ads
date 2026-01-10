pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package poll_h is

   POLLIN : constant := (2 ** 0);  --  /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:10
   POLLRDNORM : constant := (2 ** 1);  --  /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:11
   POLLRDBAND : constant := (2 ** 2);  --  /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:12
   --  unsupported macro: POLLPRI (POLLRDBAND)

   POLLOUT : constant := (2 ** 3);  --  /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:15
   --  unsupported macro: POLLWRNORM (POLLOUT)

   POLLWRBAND : constant := (2 ** 4);  --  /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:17
   POLLERR : constant := (2 ** 5);  --  /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:18
   POLLHUP : constant := (2 ** 6);  --  /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:19
   POLLNVAL : constant := (2 ** 7);  --  /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:20

   type pollfd is record
      fd : aliased int;  -- /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:27
      events : aliased short;  -- /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:28
      revents : aliased short;  -- /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:29
   end record
   with Convention => C_Pass_By_Copy;  -- /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:26

   subtype nfds_t is unsigned;  -- /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:32

   function poll
     (fds : access pollfd;
      nfds : nfds_t;
      timeout : int) return int  -- /home/godunko/esp/v5.5.2/esp-idf/components/newlib/platform_include/sys/poll.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "poll";

end poll_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
