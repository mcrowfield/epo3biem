
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of posnew is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   signal n8, n9, n11, r61_n26, r61_n25, r61_n24, r61_n23, r61_n22, r61_n21, 
      r61_n20, r61_n19, r61_n18, r61_n17, r61_n16, r61_n15, r61_n14, r61_n13, 
      r61_n12, r61_n11, r61_n10, r61_n9, r61_n8, r61_n7, r61_n6, r61_n5, r61_n4
      , r61_n3, r61_n2 : std_logic;

begin
   
   n8 <= '1';
   n9 <= '0';
   U7 : iv110 port map( A => button, Y => n11);
   r61_U30 : no210 port map( A => button, B => position_old(0), Y => r61_n24);
   r61_U29 : na210 port map( A => position_old(0), B => button, Y => r61_n26);
   r61_U28 : na210 port map( A => r61_n6, B => r61_n26, Y => position_new(0));
   r61_U27 : ex210 port map( A => n11, B => position_old(1), Y => r61_n25);
   r61_U26 : ex210 port map( A => r61_n6, B => r61_n25, Y => position_new(1));
   r61_U25 : no210 port map( A => button, B => r61_n24, Y => r61_n23);
   r61_U24 : no210 port map( A => r61_n23, B => position_old(1), Y => r61_n20);
   r61_U23 : ex210 port map( A => r61_n4, B => n11, Y => r61_n22);
   r61_U22 : ex210 port map( A => r61_n5, B => r61_n22, Y => position_new(2));
   r61_U21 : no210 port map( A => position_old(2), B => r61_n5, Y => r61_n21);
   r61_U20 : no210 port map( A => n11, B => r61_n21, Y => r61_n18);
   r61_U19 : no210 port map( A => r61_n20, B => r61_n4, Y => r61_n19);
   r61_U18 : no210 port map( A => r61_n18, B => r61_n19, Y => r61_n16);
   r61_U17 : ex210 port map( A => n11, B => position_old(3), Y => r61_n17);
   r61_U16 : ex210 port map( A => r61_n16, B => r61_n17, Y => position_new(3));
   r61_U15 : no210 port map( A => position_old(1), B => position_old(0), Y => 
                           r61_n15);
   r61_U14 : ex210 port map( A => position_old(3), B => r61_n4, Y => r61_n13);
   r61_U13 : ex210 port map( A => n11, B => r61_n13, Y => r61_n14);
   r61_U12 : no210 port map( A => r61_n15, B => r61_n14, Y => r61_n8);
   r61_U11 : no210 port map( A => position_old(1), B => r61_n3, Y => r61_n9);
   r61_U10 : no210 port map( A => r61_n13, B => button, Y => r61_n11);
   r61_U9 : no210 port map( A => r61_n2, B => r61_n4, Y => r61_n12);
   r61_U8 : no210 port map( A => r61_n11, B => r61_n12, Y => r61_n10);
   r61_U7 : mu111 port map( A => r61_n8, B => r61_n9, S => r61_n10, Y => r61_n7
                           );
   r61_U6 : ex210 port map( A => r61_n7, B => position_old(4), Y => 
                           position_new(4));
   r61_U5 : iv110 port map( A => r61_n24, Y => r61_n6);
   r61_U4 : iv110 port map( A => r61_n20, Y => r61_n5);
   r61_U3 : iv110 port map( A => position_old(2), Y => r61_n4);
   r61_U2 : iv110 port map( A => r61_n14, Y => r61_n3);
   r61_U1 : iv110 port map( A => position_old(3), Y => r61_n2);

end synthesised;



