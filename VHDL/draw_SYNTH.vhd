
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of draw is

   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   signal n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
      n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37 : 
      std_logic;

begin
   
   U13 : no310 port map( A => n11, B => x_input(3), C => x_input(2), Y => 
                           blue_output);
   U14 : mu111 port map( A => n12, B => n13, S => x_input(1), Y => n11);
   U15 : na210 port map( A => n14, B => n15, Y => n13);
   U16 : iv110 port map( A => x_input(0), Y => n15);
   U17 : na210 port map( A => n16, B => n17, Y => n14);
   U18 : na310 port map( A => n18, B => n19, C => n20, Y => n17);
   U19 : no210 port map( A => n21, B => n22, Y => n20);
   U20 : ex210 port map( A => n23, B => n24, Y => n22);
   U21 : ex210 port map( A => n25, B => n26, Y => n21);
   U22 : ex210 port map( A => n27, B => n28, Y => n19);
   U23 : na210 port map( A => n25, B => position(3), Y => n27);
   U24 : iv110 port map( A => n29, Y => n25);
   U25 : na210 port map( A => n23, B => position(2), Y => n29);
   U26 : iv110 port map( A => n30, Y => n23);
   U27 : na210 port map( A => position(0), B => position(1), Y => n30);
   U28 : mu111 port map( A => n31, B => n32, S => position(0), Y => n18);
   U29 : no210 port map( A => y_input(0), B => n31, Y => n32);
   U30 : iv110 port map( A => n33, Y => n31);
   U31 : iv110 port map( A => n34, Y => n16);
   U32 : na210 port map( A => x_input(0), B => n34, Y => n12);
   U33 : no310 port map( A => n28, B => n24, C => n35, Y => n34);
   U34 : iv110 port map( A => n36, Y => n35);
   U35 : no310 port map( A => n37, B => n33, C => n26, Y => n36);
   U36 : ex210 port map( A => position(3), B => y_input(3), Y => n26);
   U37 : ex210 port map( A => position(1), B => y_input(1), Y => n33);
   U38 : ex210 port map( A => y_input(0), B => position(0), Y => n37);
   U39 : ex210 port map( A => y_input(2), B => position(2), Y => n24);
   U40 : ex210 port map( A => y_input(4), B => position(4), Y => n28);

end synthesised;



