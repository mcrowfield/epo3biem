
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of divider is

   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal v_count_0_port, n15, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39
      , n40, n41, n42, n43 : std_logic;

begin
   
   v_count_reg_0_inst : dfr11 port map( D => n15, R => reset, CK => clk, Q => 
                           v_count_0_port);
   U32 : iv110 port map( A => n30, Y => yv(5));
   U33 : na210 port map( A => row(8), B => disp_ena, Y => n30);
   U34 : iv110 port map( A => n31, Y => yv(4));
   U35 : na210 port map( A => row(7), B => disp_ena, Y => n31);
   U36 : iv110 port map( A => n32, Y => yv(3));
   U37 : na210 port map( A => row(6), B => disp_ena, Y => n32);
   U38 : iv110 port map( A => n33, Y => yv(2));
   U39 : na210 port map( A => row(5), B => disp_ena, Y => n33);
   U40 : iv110 port map( A => n34, Y => yv(1));
   U41 : na210 port map( A => row(4), B => disp_ena, Y => n34);
   U42 : iv110 port map( A => n35, Y => yv(0));
   U43 : na210 port map( A => row(3), B => disp_ena, Y => n35);
   U44 : iv110 port map( A => n36, Y => xv(6));
   U45 : na210 port map( A => column(7), B => disp_ena, Y => n36);
   U46 : iv110 port map( A => n37, Y => xv(5));
   U47 : na210 port map( A => column(6), B => disp_ena, Y => n37);
   U48 : iv110 port map( A => n38, Y => xv(4));
   U49 : na210 port map( A => column(5), B => disp_ena, Y => n38);
   U50 : iv110 port map( A => n39, Y => xv(3));
   U51 : na210 port map( A => column(4), B => disp_ena, Y => n39);
   U52 : iv110 port map( A => n40, Y => xv(2));
   U53 : na210 port map( A => column(3), B => disp_ena, Y => n40);
   U54 : iv110 port map( A => n41, Y => xv(1));
   U55 : na210 port map( A => column(2), B => disp_ena, Y => n41);
   U56 : iv110 port map( A => n42, Y => xv(0));
   U57 : na210 port map( A => column(1), B => disp_ena, Y => n42);
   U58 : iv110 port map( A => n43, Y => tick);
   U59 : na210 port map( A => shz, B => v_count_0_port, Y => n43);
   U60 : ex210 port map( A => v_count_0_port, B => shz, Y => n15);

end synthesised;



