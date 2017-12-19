
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of draw is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   signal n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
      n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58
      , n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, 
      n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87
      , n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100 : 
      std_logic;

begin
   
   U32 : iv110 port map( A => n30, Y => blue_output);
   U33 : na310 port map( A => x_input(3), B => n31, C => n32, Y => n30);
   U34 : no310 port map( A => x_input(4), B => x_input(6), C => x_input(5), Y 
                           => n32);
   U35 : na310 port map( A => n33, B => n34, C => n35, Y => n31);
   U36 : mu111 port map( A => n36, B => n37, S => n38, Y => n35);
   U37 : na210 port map( A => n39, B => n40, Y => n37);
   U38 : no310 port map( A => n41, B => n42, C => n43, Y => n40);
   U39 : ex210 port map( A => n44, B => n45, Y => n43);
   U40 : ex210 port map( A => y_input(4), B => n46, Y => n45);
   U41 : ex210 port map( A => n47, B => n48, Y => n42);
   U42 : no210 port map( A => n46, B => n44, Y => n47);
   U43 : na210 port map( A => n49, B => position(3), Y => n44);
   U44 : iv110 port map( A => n50, Y => n41);
   U45 : no210 port map( A => n51, B => x_input(1), Y => n50);
   U46 : ex210 port map( A => n52, B => n49, Y => n51);
   U47 : no310 port map( A => n53, B => n54, C => n55, Y => n39);
   U48 : ex210 port map( A => x_input(2), B => x_input(0), Y => n55);
   U49 : ex210 port map( A => y_input(2), B => n56, Y => n54);
   U50 : no210 port map( A => n57, B => n49, Y => n56);
   U51 : no210 port map( A => n58, B => n59, Y => n49);
   U52 : no210 port map( A => position(2), B => n60, Y => n57);
   U53 : iv110 port map( A => n58, Y => n60);
   U54 : mu111 port map( A => n61, B => n62, S => n63, Y => n53);
   U55 : ex210 port map( A => position(1), B => position(0), Y => n62);
   U56 : na310 port map( A => n64, B => n65, C => n66, Y => n36);
   U57 : no210 port map( A => n67, B => n68, Y => n66);
   U58 : ex210 port map( A => n69, B => n70, Y => n68);
   U59 : no210 port map( A => n71, B => n72, Y => n69);
   U60 : ex210 port map( A => n73, B => n52, Y => n67);
   U61 : no210 port map( A => n59, B => n71, Y => n73);
   U62 : ex210 port map( A => n74, B => n48, Y => n65);
   U63 : na210 port map( A => n75, B => position(1), Y => n74);
   U64 : mu111 port map( A => n76, B => n77, S => position(1), Y => n64);
   U65 : no210 port map( A => y_input(1), B => n78, Y => n77);
   U66 : no210 port map( A => n79, B => n63, Y => n76);
   U67 : iv110 port map( A => y_input(1), Y => n63);
   U68 : na210 port map( A => x_input(2), B => n80, Y => n34);
   U69 : na210 port map( A => n81, B => n82, Y => n80);
   U70 : na210 port map( A => n83, B => n84, Y => n82);
   U71 : no310 port map( A => n85, B => n86, C => n87, Y => n84);
   U72 : ex210 port map( A => n88, B => n79, Y => n87);
   U73 : ex210 port map( A => n61, B => y_input(1), Y => n85);
   U74 : na210 port map( A => n88, B => n58, Y => n61);
   U75 : na210 port map( A => position(1), B => position(0), Y => n58);
   U76 : no310 port map( A => n89, B => n90, C => n91, Y => n83);
   U77 : ex210 port map( A => n92, B => n70, Y => n91);
   U78 : no210 port map( A => n93, B => n72, Y => n92);
   U79 : iv110 port map( A => n94, Y => n90);
   U80 : ex210 port map( A => n95, B => n48, Y => n94);
   U81 : na210 port map( A => n75, B => n88, Y => n95);
   U82 : iv110 port map( A => n93, Y => n88);
   U83 : no210 port map( A => n46, B => n72, Y => n75);
   U84 : na210 port map( A => position(3), B => position(2), Y => n72);
   U85 : iv110 port map( A => position(4), Y => n46);
   U86 : ex210 port map( A => n96, B => n52, Y => n89);
   U87 : no210 port map( A => n93, B => n59, Y => n96);
   U88 : no210 port map( A => position(0), B => position(1), Y => n93);
   U89 : na310 port map( A => n97, B => x_input(0), C => x_input(1), Y => n33);
   U90 : iv110 port map( A => n81, Y => n97);
   U91 : na310 port map( A => n98, B => n86, C => n99, Y => n81);
   U92 : no310 port map( A => n70, B => n52, C => n48, Y => n99);
   U93 : ex210 port map( A => y_input(5), B => position(5), Y => n48);
   U94 : ex210 port map( A => y_input(3), B => position(3), Y => n52);
   U95 : ex210 port map( A => y_input(4), B => position(4), Y => n70);
   U96 : iv110 port map( A => n38, Y => n86);
   U97 : ex210 port map( A => position(0), B => y_input(0), Y => n38);
   U98 : no210 port map( A => n100, B => n79, Y => n98);
   U99 : iv110 port map( A => n78, Y => n79);
   U100 : ex210 port map( A => y_input(2), B => n59, Y => n78);
   U101 : iv110 port map( A => position(2), Y => n59);
   U102 : no210 port map( A => y_input(1), B => n71, Y => n100);
   U103 : iv110 port map( A => position(1), Y => n71);

end synthesised;



