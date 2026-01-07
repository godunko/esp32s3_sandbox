pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package soc_gpio_num_h is

   subtype gpio_num_t is int;
   gpio_num_t_GPIO_NUM_NC : constant gpio_num_t := -1;
   gpio_num_t_GPIO_NUM_0 : constant gpio_num_t := 0;
   gpio_num_t_GPIO_NUM_1 : constant gpio_num_t := 1;
   gpio_num_t_GPIO_NUM_2 : constant gpio_num_t := 2;
   gpio_num_t_GPIO_NUM_3 : constant gpio_num_t := 3;
   gpio_num_t_GPIO_NUM_4 : constant gpio_num_t := 4;
   gpio_num_t_GPIO_NUM_5 : constant gpio_num_t := 5;
   gpio_num_t_GPIO_NUM_6 : constant gpio_num_t := 6;
   gpio_num_t_GPIO_NUM_7 : constant gpio_num_t := 7;
   gpio_num_t_GPIO_NUM_8 : constant gpio_num_t := 8;
   gpio_num_t_GPIO_NUM_9 : constant gpio_num_t := 9;
   gpio_num_t_GPIO_NUM_10 : constant gpio_num_t := 10;
   gpio_num_t_GPIO_NUM_11 : constant gpio_num_t := 11;
   gpio_num_t_GPIO_NUM_12 : constant gpio_num_t := 12;
   gpio_num_t_GPIO_NUM_13 : constant gpio_num_t := 13;
   gpio_num_t_GPIO_NUM_14 : constant gpio_num_t := 14;
   gpio_num_t_GPIO_NUM_15 : constant gpio_num_t := 15;
   gpio_num_t_GPIO_NUM_16 : constant gpio_num_t := 16;
   gpio_num_t_GPIO_NUM_17 : constant gpio_num_t := 17;
   gpio_num_t_GPIO_NUM_18 : constant gpio_num_t := 18;
   gpio_num_t_GPIO_NUM_19 : constant gpio_num_t := 19;
   gpio_num_t_GPIO_NUM_20 : constant gpio_num_t := 20;
   gpio_num_t_GPIO_NUM_21 : constant gpio_num_t := 21;
   gpio_num_t_GPIO_NUM_26 : constant gpio_num_t := 26;
   gpio_num_t_GPIO_NUM_27 : constant gpio_num_t := 27;
   gpio_num_t_GPIO_NUM_28 : constant gpio_num_t := 28;
   gpio_num_t_GPIO_NUM_29 : constant gpio_num_t := 29;
   gpio_num_t_GPIO_NUM_30 : constant gpio_num_t := 30;
   gpio_num_t_GPIO_NUM_31 : constant gpio_num_t := 31;
   gpio_num_t_GPIO_NUM_32 : constant gpio_num_t := 32;
   gpio_num_t_GPIO_NUM_33 : constant gpio_num_t := 33;
   gpio_num_t_GPIO_NUM_34 : constant gpio_num_t := 34;
   gpio_num_t_GPIO_NUM_35 : constant gpio_num_t := 35;
   gpio_num_t_GPIO_NUM_36 : constant gpio_num_t := 36;
   gpio_num_t_GPIO_NUM_37 : constant gpio_num_t := 37;
   gpio_num_t_GPIO_NUM_38 : constant gpio_num_t := 38;
   gpio_num_t_GPIO_NUM_39 : constant gpio_num_t := 39;
   gpio_num_t_GPIO_NUM_40 : constant gpio_num_t := 40;
   gpio_num_t_GPIO_NUM_41 : constant gpio_num_t := 41;
   gpio_num_t_GPIO_NUM_42 : constant gpio_num_t := 42;
   gpio_num_t_GPIO_NUM_43 : constant gpio_num_t := 43;
   gpio_num_t_GPIO_NUM_44 : constant gpio_num_t := 44;
   gpio_num_t_GPIO_NUM_45 : constant gpio_num_t := 45;
   gpio_num_t_GPIO_NUM_46 : constant gpio_num_t := 46;
   gpio_num_t_GPIO_NUM_47 : constant gpio_num_t := 47;
   gpio_num_t_GPIO_NUM_48 : constant gpio_num_t := 48;
   gpio_num_t_GPIO_NUM_MAX : constant gpio_num_t := 49;  -- /home/godunko/esp/v5.5.2/esp-idf/components/soc/esp32s3/include/soc/gpio_num.h:64

end soc_gpio_num_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
