
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of draw is

   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   signal n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
      n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39
      , n40, n41, n42 : std_logic;

begin
   
   U13 : no310 port map( A => n11, B => x_input(3), C => x_input(2), Y => 
                           blue_output);
   U14 : iv110 port map( A => n12, Y => n11);
   U15 : na210 port map( A => n13, B => n14, Y => n12);
   U16 : na210 port map( A => x_input(1), B => n15, Y => n14);
   U17 : na210 port map( A => n16, B => n17, Y => n15);
   U18 : na310 port map( A => n18, B => n19, C => n20, Y => n17);
   U19 : no310 port map( A => n21, B => n22, C => n23, Y => n20);
   U20 : no210 port map( A => y_input(0), B => n24, Y => n22);
   U21 : ex210 port map( A => n25, B => y_input(2), Y => n19);
   U22 : ex210 port map( A => n26, B => y_input(4), Y => n18);
   U23 : iv110 port map( A => position(4), Y => n26);
   U24 : na210 port map( A => x_input(0), B => n27, Y => n13);
   U25 : iv110 port map( A => n16, Y => n27);
   U26 : na310 port map( A => n28, B => n29, C => n30, Y => n16);
   U27 : no210 port map( A => n31, B => n32, Y => n30);
   U28 : iv110 port map( A => n33, Y => n32);
   U29 : ex210 port map( A => n34, B => n35, Y => n33);
   U30 : ex210 port map( A => y_input(2), B => position(2), Y => n35);
   U31 : ex210 port map( A => n36, B => n21, Y => n31);
   U32 : ex210 port map( A => position(3), B => y_input(3), Y => n21);
   U33 : ex210 port map( A => n37, B => n38, Y => n29);
   U34 : ex210 port map( A => y_input(4), B => position(4), Y => n38);
   U35 : na210 port map( A => n36, B => position(3), Y => n37);
   U36 : no210 port map( A => n34, B => n25, Y => n36);
   U37 : iv110 port map( A => position(2), Y => n25);
   U38 : na210 port map( A => position(1), B => position(0), Y => n34);
   U39 : mu111 port map( A => n39, B => n40, S => n24, Y => n28);
   U40 : iv110 port map( A => position(0), Y => n24);
   U41 : no210 port map( A => n23, B => n41, Y => n40);
   U42 : iv110 port map( A => y_input(0), Y => n41);
   U43 : no210 port map( A => y_input(0), B => n42, Y => n39);
   U44 : iv110 port map( A => n23, Y => n42);
   U45 : ex210 port map( A => position(1), B => y_input(1), Y => n23);

end synthesised;



