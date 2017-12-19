
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of vga_controller is

   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
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
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   component dfn10
      port( D, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal column_7_port, column_6_port, column_5_port, column_4_port, 
      column_3_port, column_2_port, column_1_port, column_0_port, row_9_port, 
      row_8_port, row_7_port, row_6_port, row_5_port, row_4_port, row_3_port, 
      row_2_port, row_1_port, row_0_port, N38, N39, N40, N41, N42, N43, N44, 
      N45, N46, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95
      , n96, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, 
      n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, 
      n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, 
      n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, 
      n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, 
      n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, 
      n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n202, n203, n204 : std_logic;

begin
   column <= ( column_7_port, column_6_port, column_5_port, column_4_port, 
      column_3_port, column_2_port, column_1_port, column_0_port );
   row <= ( row_9_port, row_8_port, row_7_port, row_6_port, row_5_port, 
      row_4_port, row_3_port, row_2_port, row_1_port, row_0_port );
   
   v_count_reg_0_inst : dfr11 port map( D => n96, R => reset, CK => pixel_clk, 
                           Q => row_0_port);
   h_count_reg_7_inst : dfr11 port map( D => N45, R => reset, CK => pixel_clk, 
                           Q => column_7_port);
   h_count_reg_6_inst : dfr11 port map( D => N44, R => reset, CK => pixel_clk, 
                           Q => column_6_port);
   h_count_reg_5_inst : dfr11 port map( D => N43, R => reset, CK => pixel_clk, 
                           Q => column_5_port);
   h_count_reg_4_inst : dfr11 port map( D => N42, R => reset, CK => pixel_clk, 
                           Q => column_4_port);
   h_count_reg_3_inst : dfr11 port map( D => N41, R => reset, CK => pixel_clk, 
                           Q => column_3_port);
   h_count_reg_2_inst : dfr11 port map( D => N40, R => reset, CK => pixel_clk, 
                           Q => column_2_port);
   h_count_reg_1_inst : dfr11 port map( D => N39, R => reset, CK => pixel_clk, 
                           Q => column_1_port);
   h_count_reg_0_inst : dfr11 port map( D => N38, R => reset, CK => pixel_clk, 
                           Q => column_0_port);
   v_count_reg_9_inst : dfr11 port map( D => n95, R => reset, CK => pixel_clk, 
                           Q => row_9_port);
   v_count_reg_8_inst : dfr11 port map( D => n94, R => reset, CK => pixel_clk, 
                           Q => row_8_port);
   shz_reg : dfr11 port map( D => N46, R => reset, CK => pixel_clk, Q => shz);
   v_count_reg_1_inst : dfr11 port map( D => n93, R => reset, CK => pixel_clk, 
                           Q => row_1_port);
   v_count_reg_2_inst : dfr11 port map( D => n92, R => reset, CK => pixel_clk, 
                           Q => row_2_port);
   v_count_reg_3_inst : dfr11 port map( D => n91, R => reset, CK => pixel_clk, 
                           Q => row_3_port);
   v_count_reg_4_inst : dfr11 port map( D => n90, R => reset, CK => pixel_clk, 
                           Q => row_4_port);
   v_count_reg_5_inst : dfr11 port map( D => n89, R => reset, CK => pixel_clk, 
                           Q => row_5_port);
   v_count_reg_6_inst : dfr11 port map( D => n88, R => reset, CK => pixel_clk, 
                           Q => row_6_port);
   v_count_reg_7_inst : dfr11 port map( D => n87, R => reset, CK => pixel_clk, 
                           Q => row_7_port);
   h_sync_reg : dfn10 port map( D => n86, CK => pixel_clk, Q => h_sync);
   v_sync_reg : dfn10 port map( D => n84, CK => pixel_clk, Q => v_sync);
   disp_ena_t_reg : dfr11 port map( D => n204, R => reset, CK => pixel_clk, Q 
                           => disp_ena);
   U101 : iv110 port map( A => n83, Y => n84);
   U102 : no210 port map( A => reset, B => n202, Y => n83);
   U103 : iv110 port map( A => n85, Y => n86);
   U104 : no210 port map( A => reset, B => n203, Y => n85);
   U105 : iv110 port map( A => n140, Y => n103);
   U106 : iv110 port map( A => n104, Y => red_o);
   U107 : no210 port map( A => RGB(2), B => red, Y => n104);
   U108 : iv110 port map( A => n105, Y => green_o);
   U109 : no210 port map( A => RGB(1), B => green, Y => n105);
   U110 : iv110 port map( A => n106, Y => blue_o);
   U111 : no210 port map( A => RGB(0), B => blue, Y => n106);
   U112 : na310 port map( A => n107, B => n108, C => n109, Y => n202);
   U113 : no310 port map( A => row_3_port, B => row_9_port, C => row_4_port, Y 
                           => n109);
   U114 : no210 port map( A => n110, B => n111, Y => n107);
   U115 : no210 port map( A => n112, B => n113, Y => n111);
   U116 : no210 port map( A => row_0_port, B => row_1_port, Y => n112);
   U117 : na310 port map( A => n114, B => column_7_port, C => n115, Y => n203);
   U118 : no210 port map( A => column_6_port, B => n116, Y => n115);
   U119 : iv110 port map( A => column_5_port, Y => n116);
   U120 : mu111 port map( A => n117, B => n118, S => column_4_port, Y => n114);
   U121 : na310 port map( A => column_2_port, B => n119, C => column_3_port, Y 
                           => n118);
   U122 : iv110 port map( A => n120, Y => n119);
   U123 : no210 port map( A => column_1_port, B => column_0_port, Y => n120);
   U124 : na210 port map( A => n121, B => n122, Y => n117);
   U125 : no310 port map( A => n123, B => row_9_port, C => n108, Y => n204);
   U126 : no310 port map( A => n124, B => n125, C => n126, Y => n108);
   U127 : na210 port map( A => row_5_port, B => row_6_port, Y => n126);
   U128 : iv110 port map( A => row_8_port, Y => n124);
   U129 : no210 port map( A => n127, B => n128, Y => n123);
   U130 : no210 port map( A => column_6_port, B => column_5_port, Y => n127);
   U131 : na210 port map( A => n129, B => n130, Y => n96);
   U132 : iv110 port map( A => n131, Y => n130);
   U133 : no210 port map( A => n132, B => n133, Y => n131);
   U134 : na210 port map( A => row_0_port, B => n103, Y => n129);
   U135 : na210 port map( A => n135, B => n136, Y => n95);
   U136 : na310 port map( A => n137, B => row_8_port, C => n138, Y => n136);
   U137 : na210 port map( A => row_9_port, B => n139, Y => n135);
   U138 : na210 port map( A => n140, B => n132, Y => n139);
   U139 : na210 port map( A => n141, B => n142, Y => n94);
   U140 : na210 port map( A => n137, B => n143, Y => n142);
   U141 : ex210 port map( A => row_8_port, B => n138, Y => n143);
   U142 : no210 port map( A => n144, B => n145, Y => n138);
   U143 : na210 port map( A => row_8_port, B => n103, Y => n141);
   U144 : na210 port map( A => n146, B => n147, Y => n93);
   U145 : na210 port map( A => n137, B => n148, Y => n147);
   U146 : na210 port map( A => row_1_port, B => n103, Y => n146);
   U147 : na210 port map( A => n149, B => n150, Y => n92);
   U148 : iv110 port map( A => n151, Y => n150);
   U149 : no210 port map( A => n152, B => n132, Y => n151);
   U150 : na210 port map( A => row_2_port, B => n103, Y => n149);
   U151 : na210 port map( A => n153, B => n154, Y => n91);
   U152 : iv110 port map( A => n155, Y => n154);
   U153 : no210 port map( A => n132, B => n156, Y => n155);
   U154 : na210 port map( A => row_3_port, B => n103, Y => n153);
   U155 : na210 port map( A => n157, B => n158, Y => n90);
   U156 : iv110 port map( A => n159, Y => n158);
   U157 : no210 port map( A => n132, B => n160, Y => n159);
   U158 : na210 port map( A => row_4_port, B => n103, Y => n157);
   U159 : na210 port map( A => n161, B => n162, Y => n89);
   U160 : na210 port map( A => n137, B => n163, Y => n162);
   U161 : na210 port map( A => row_5_port, B => n103, Y => n161);
   U162 : na210 port map( A => n164, B => n165, Y => n88);
   U163 : na210 port map( A => n166, B => n137, Y => n165);
   U164 : na210 port map( A => row_6_port, B => n103, Y => n164);
   U165 : na210 port map( A => n167, B => n168, Y => n87);
   U166 : na210 port map( A => n137, B => n169, Y => n168);
   U167 : iv110 port map( A => n132, Y => n137);
   U168 : na210 port map( A => n140, B => n170, Y => n132);
   U169 : na210 port map( A => row_7_port, B => n103, Y => n167);
   U170 : no210 port map( A => n103, B => n170, Y => N46);
   U171 : na210 port map( A => row_9_port, B => n171, Y => n170);
   U172 : na310 port map( A => n172, B => n173, C => n174, Y => n171);
   U173 : no310 port map( A => row_6_port, B => row_8_port, C => row_7_port, Y 
                           => n174);
   U174 : na210 port map( A => row_3_port, B => n175, Y => n173);
   U175 : iv110 port map( A => n110, Y => n175);
   U176 : no310 port map( A => row_1_port, B => row_2_port, C => row_0_port, Y 
                           => n110);
   U177 : no210 port map( A => row_5_port, B => row_4_port, Y => n172);
   U178 : iv110 port map( A => n176, Y => N45);
   U179 : na210 port map( A => n103, B => n169, Y => n176);
   U180 : ex210 port map( A => n144, B => n145, Y => n169);
   U181 : mu111 port map( A => n125, B => n128, S => n134, Y => n145);
   U182 : iv110 port map( A => column_7_port, Y => n128);
   U183 : iv110 port map( A => row_7_port, Y => n125);
   U184 : iv110 port map( A => n177, Y => N44);
   U185 : na210 port map( A => n103, B => n166, Y => n177);
   U186 : no210 port map( A => n178, B => n179, Y => n166);
   U187 : no210 port map( A => n180, B => n181, Y => n179);
   U188 : iv110 port map( A => n144, Y => n178);
   U189 : na210 port map( A => n181, B => n180, Y => n144);
   U190 : mu111 port map( A => row_6_port, B => column_6_port, S => n134, Y => 
                           n180);
   U191 : no210 port map( A => n182, B => n183, Y => n181);
   U192 : iv110 port map( A => n184, Y => N43);
   U193 : na210 port map( A => n103, B => n163, Y => n184);
   U194 : ex210 port map( A => n182, B => n183, Y => n163);
   U195 : iv110 port map( A => n185, Y => n183);
   U196 : mu111 port map( A => column_5_port, B => row_5_port, S => n140, Y => 
                           n185);
   U197 : na310 port map( A => n186, B => n187, C => n188, Y => n182);
   U198 : no210 port map( A => n140, B => n160, Y => N42);
   U199 : ex210 port map( A => n189, B => n187, Y => n160);
   U200 : mu111 port map( A => column_4_port, B => row_4_port, S => n140, Y => 
                           n187);
   U201 : na210 port map( A => n188, B => n186, Y => n189);
   U202 : no210 port map( A => n140, B => n156, Y => N41);
   U203 : ex210 port map( A => n190, B => n186, Y => n156);
   U204 : mu111 port map( A => column_3_port, B => row_3_port, S => n140, Y => 
                           n186);
   U205 : no210 port map( A => n140, B => n152, Y => N40);
   U206 : na210 port map( A => n190, B => n191, Y => n152);
   U207 : na210 port map( A => n192, B => n193, Y => n191);
   U208 : iv110 port map( A => n188, Y => n190);
   U209 : no210 port map( A => n193, B => n192, Y => n188);
   U210 : mu111 port map( A => n113, B => n121, S => n134, Y => n192);
   U211 : iv110 port map( A => column_2_port, Y => n121);
   U212 : iv110 port map( A => row_2_port, Y => n113);
   U213 : na210 port map( A => n194, B => n133, Y => n193);
   U214 : iv110 port map( A => n195, Y => N39);
   U215 : na210 port map( A => n134, B => n148, Y => n195);
   U216 : ex210 port map( A => n194, B => n133, Y => n148);
   U217 : mu111 port map( A => row_0_port, B => column_0_port, S => n134, Y => 
                           n133);
   U218 : mu111 port map( A => row_1_port, B => column_1_port, S => n134, Y => 
                           n194);
   U219 : no210 port map( A => column_0_port, B => n140, Y => N38);
   U220 : iv110 port map( A => n134, Y => n140);
   U221 : na310 port map( A => column_7_port, B => n196, C => column_6_port, Y 
                           => n134);
   U222 : na310 port map( A => n197, B => n122, C => n198, Y => n196);
   U223 : no210 port map( A => column_5_port, B => column_4_port, Y => n198);
   U224 : iv110 port map( A => column_3_port, Y => n122);
   U225 : na310 port map( A => column_0_port, B => column_2_port, C => 
                           column_1_port, Y => n197);

end synthesised;



