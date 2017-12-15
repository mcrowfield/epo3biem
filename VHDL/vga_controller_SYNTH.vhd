
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
      row_2_port, row_1_port, row_0_port, h_count_7_port, h_count_6_port, 
      h_count_5_port, h_count_4_port, h_count_3_port, h_count_2_port, 
      h_count_1_port, h_count_0_port, v_count_9_port, v_count_8_port, 
      v_count_7_port, v_count_6_port, v_count_5_port, v_count_4_port, 
      v_count_3_port, v_count_2_port, v_count_1_port, v_count_0_port, N38, N39,
      N40, N41, N42, N43, N44, N45, N46, n119, n120, n121, n122, n123, n124, 
      n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, 
      n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, 
      n149, n150, n152, n154, n155, n156, n157, n158, n159, n160, n161, n162, 
      n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, 
      n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, 
      n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, 
      n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, 
      n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, 
      n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, 
      n247, n248, n249, n250, n251, n252, n253 : std_logic;

begin
   column <= ( column_7_port, column_6_port, column_5_port, column_4_port, 
      column_3_port, column_2_port, column_1_port, column_0_port );
   row <= ( row_9_port, row_8_port, row_7_port, row_6_port, row_5_port, 
      row_4_port, row_3_port, row_2_port, row_1_port, row_0_port );
   
   v_count_reg_0_inst : dfr11 port map( D => n150, R => reset, CK => pixel_clk,
                           Q => v_count_0_port);
   h_count_reg_7_inst : dfr11 port map( D => N45, R => reset, CK => pixel_clk, 
                           Q => h_count_7_port);
   h_count_reg_6_inst : dfr11 port map( D => N44, R => reset, CK => pixel_clk, 
                           Q => h_count_6_port);
   h_count_reg_5_inst : dfr11 port map( D => N43, R => reset, CK => pixel_clk, 
                           Q => h_count_5_port);
   h_count_reg_4_inst : dfr11 port map( D => N42, R => reset, CK => pixel_clk, 
                           Q => h_count_4_port);
   h_count_reg_3_inst : dfr11 port map( D => N41, R => reset, CK => pixel_clk, 
                           Q => h_count_3_port);
   h_count_reg_2_inst : dfr11 port map( D => N40, R => reset, CK => pixel_clk, 
                           Q => h_count_2_port);
   h_count_reg_1_inst : dfr11 port map( D => N39, R => reset, CK => pixel_clk, 
                           Q => h_count_1_port);
   h_count_reg_0_inst : dfr11 port map( D => N38, R => reset, CK => pixel_clk, 
                           Q => h_count_0_port);
   v_count_reg_9_inst : dfr11 port map( D => n149, R => reset, CK => pixel_clk,
                           Q => v_count_9_port);
   v_count_reg_8_inst : dfr11 port map( D => n148, R => reset, CK => pixel_clk,
                           Q => v_count_8_port);
   shz_reg : dfr11 port map( D => N46, R => reset, CK => pixel_clk, Q => shz);
   v_count_reg_1_inst : dfr11 port map( D => n147, R => reset, CK => pixel_clk,
                           Q => v_count_1_port);
   v_count_reg_2_inst : dfr11 port map( D => n146, R => reset, CK => pixel_clk,
                           Q => v_count_2_port);
   v_count_reg_3_inst : dfr11 port map( D => n145, R => reset, CK => pixel_clk,
                           Q => v_count_3_port);
   v_count_reg_4_inst : dfr11 port map( D => n144, R => reset, CK => pixel_clk,
                           Q => v_count_4_port);
   v_count_reg_5_inst : dfr11 port map( D => n143, R => reset, CK => pixel_clk,
                           Q => v_count_5_port);
   v_count_reg_6_inst : dfr11 port map( D => n142, R => reset, CK => pixel_clk,
                           Q => v_count_6_port);
   v_count_reg_7_inst : dfr11 port map( D => n141, R => reset, CK => pixel_clk,
                           Q => v_count_7_port);
   h_sync_reg : dfn10 port map( D => n140, CK => pixel_clk, Q => h_sync);
   v_sync_reg : dfn10 port map( D => n138, CK => pixel_clk, Q => v_sync);
   disp_ena_reg : dfr11 port map( D => n152, R => reset, CK => pixel_clk, Q => 
                           disp_ena);
   column_reg_7_inst : dfr11 port map( D => n136, R => reset, CK => pixel_clk, 
                           Q => column_7_port);
   column_reg_6_inst : dfr11 port map( D => n135, R => reset, CK => pixel_clk, 
                           Q => column_6_port);
   column_reg_5_inst : dfr11 port map( D => n134, R => reset, CK => pixel_clk, 
                           Q => column_5_port);
   column_reg_4_inst : dfr11 port map( D => n133, R => reset, CK => pixel_clk, 
                           Q => column_4_port);
   column_reg_3_inst : dfr11 port map( D => n132, R => reset, CK => pixel_clk, 
                           Q => column_3_port);
   column_reg_2_inst : dfr11 port map( D => n131, R => reset, CK => pixel_clk, 
                           Q => column_2_port);
   column_reg_1_inst : dfr11 port map( D => n130, R => reset, CK => pixel_clk, 
                           Q => column_1_port);
   column_reg_0_inst : dfr11 port map( D => n129, R => reset, CK => pixel_clk, 
                           Q => column_0_port);
   row_reg_9_inst : dfr11 port map( D => n128, R => reset, CK => pixel_clk, Q 
                           => row_9_port);
   row_reg_8_inst : dfr11 port map( D => n127, R => reset, CK => pixel_clk, Q 
                           => row_8_port);
   row_reg_7_inst : dfr11 port map( D => n126, R => reset, CK => pixel_clk, Q 
                           => row_7_port);
   row_reg_6_inst : dfr11 port map( D => n125, R => reset, CK => pixel_clk, Q 
                           => row_6_port);
   row_reg_5_inst : dfr11 port map( D => n124, R => reset, CK => pixel_clk, Q 
                           => row_5_port);
   row_reg_4_inst : dfr11 port map( D => n123, R => reset, CK => pixel_clk, Q 
                           => row_4_port);
   row_reg_3_inst : dfr11 port map( D => n122, R => reset, CK => pixel_clk, Q 
                           => row_3_port);
   row_reg_2_inst : dfr11 port map( D => n121, R => reset, CK => pixel_clk, Q 
                           => row_2_port);
   row_reg_1_inst : dfr11 port map( D => n120, R => reset, CK => pixel_clk, Q 
                           => row_1_port);
   row_reg_0_inst : dfr11 port map( D => n119, R => reset, CK => pixel_clk, Q 
                           => row_0_port);
   U150 : iv110 port map( A => n137, Y => n138);
   U151 : no210 port map( A => reset, B => n252, Y => n137);
   U152 : iv110 port map( A => n139, Y => n140);
   U153 : no210 port map( A => reset, B => n253, Y => n139);
   U154 : no210 port map( A => n217, B => n218, Y => n154);
   U155 : iv110 port map( A => n220, Y => n155);
   U156 : iv110 port map( A => n186, Y => n156);
   U157 : na310 port map( A => n157, B => n158, C => n159, Y => n252);
   U158 : no310 port map( A => v_count_3_port, B => v_count_9_port, C => 
                           v_count_4_port, Y => n159);
   U159 : no210 port map( A => n160, B => n161, Y => n157);
   U160 : no210 port map( A => n162, B => n163, Y => n161);
   U161 : no210 port map( A => v_count_0_port, B => v_count_1_port, Y => n162);
   U162 : na310 port map( A => n164, B => h_count_7_port, C => n165, Y => n253)
                           ;
   U163 : no210 port map( A => h_count_6_port, B => n166, Y => n165);
   U164 : iv110 port map( A => h_count_5_port, Y => n166);
   U165 : mu111 port map( A => n167, B => n168, S => h_count_4_port, Y => n164)
                           ;
   U166 : na310 port map( A => h_count_2_port, B => n169, C => h_count_3_port, 
                           Y => n168);
   U167 : iv110 port map( A => n170, Y => n169);
   U168 : no210 port map( A => h_count_1_port, B => h_count_0_port, Y => n170);
   U169 : na210 port map( A => n171, B => n172, Y => n167);
   U170 : no210 port map( A => n173, B => n155, Y => n152);
   U171 : na210 port map( A => n175, B => n176, Y => n150);
   U172 : iv110 port map( A => n177, Y => n176);
   U173 : no210 port map( A => n178, B => n179, Y => n177);
   U174 : na210 port map( A => v_count_0_port, B => n156, Y => n175);
   U175 : na210 port map( A => n181, B => n182, Y => n149);
   U176 : na310 port map( A => n183, B => v_count_8_port, C => n184, Y => n182)
                           ;
   U177 : na210 port map( A => v_count_9_port, B => n185, Y => n181);
   U178 : na210 port map( A => n186, B => n178, Y => n185);
   U179 : na210 port map( A => n187, B => n188, Y => n148);
   U180 : na210 port map( A => n183, B => n189, Y => n188);
   U181 : ex210 port map( A => v_count_8_port, B => n184, Y => n189);
   U182 : no210 port map( A => n190, B => n191, Y => n184);
   U183 : na210 port map( A => v_count_8_port, B => n156, Y => n187);
   U184 : na210 port map( A => n192, B => n193, Y => n147);
   U185 : na210 port map( A => n183, B => n194, Y => n193);
   U186 : na210 port map( A => v_count_1_port, B => n156, Y => n192);
   U187 : na210 port map( A => n195, B => n196, Y => n146);
   U188 : iv110 port map( A => n197, Y => n196);
   U189 : no210 port map( A => n198, B => n178, Y => n197);
   U190 : na210 port map( A => v_count_2_port, B => n156, Y => n195);
   U191 : na210 port map( A => n199, B => n200, Y => n145);
   U192 : iv110 port map( A => n201, Y => n200);
   U193 : no210 port map( A => n178, B => n202, Y => n201);
   U194 : na210 port map( A => v_count_3_port, B => n156, Y => n199);
   U195 : na210 port map( A => n203, B => n204, Y => n144);
   U196 : iv110 port map( A => n205, Y => n204);
   U197 : no210 port map( A => n178, B => n206, Y => n205);
   U198 : na210 port map( A => v_count_4_port, B => n156, Y => n203);
   U199 : na210 port map( A => n207, B => n208, Y => n143);
   U200 : na210 port map( A => n183, B => n209, Y => n208);
   U201 : na210 port map( A => v_count_5_port, B => n156, Y => n207);
   U202 : na210 port map( A => n210, B => n211, Y => n142);
   U203 : na210 port map( A => n212, B => n183, Y => n211);
   U204 : na210 port map( A => v_count_6_port, B => n156, Y => n210);
   U205 : na210 port map( A => n213, B => n214, Y => n141);
   U206 : na210 port map( A => n183, B => n215, Y => n214);
   U207 : iv110 port map( A => n178, Y => n183);
   U208 : na210 port map( A => n186, B => n216, Y => n178);
   U209 : na210 port map( A => v_count_7_port, B => n156, Y => n213);
   U210 : mu111 port map( A => h_count_7_port, B => column_7_port, S => n154, Y
                           => n136);
   U211 : mu111 port map( A => h_count_6_port, B => column_6_port, S => n173, Y
                           => n135);
   U212 : mu111 port map( A => h_count_5_port, B => column_5_port, S => n154, Y
                           => n134);
   U213 : mu111 port map( A => h_count_4_port, B => column_4_port, S => n173, Y
                           => n133);
   U214 : mu111 port map( A => h_count_3_port, B => column_3_port, S => n154, Y
                           => n132);
   U215 : mu111 port map( A => h_count_2_port, B => column_2_port, S => n173, Y
                           => n131);
   U216 : mu111 port map( A => h_count_1_port, B => column_1_port, S => n154, Y
                           => n130);
   U217 : mu111 port map( A => h_count_0_port, B => column_0_port, S => n173, Y
                           => n129);
   U218 : no210 port map( A => n217, B => n218, Y => n173);
   U219 : no210 port map( A => h_count_6_port, B => h_count_5_port, Y => n218);
   U220 : iv110 port map( A => n219, Y => n128);
   U221 : na210 port map( A => n155, B => row_9_port, Y => n219);
   U222 : mu111 port map( A => v_count_8_port, B => row_8_port, S => n155, Y =>
                           n127);
   U223 : mu111 port map( A => v_count_7_port, B => row_7_port, S => n174, Y =>
                           n126);
   U224 : mu111 port map( A => v_count_6_port, B => row_6_port, S => n174, Y =>
                           n125);
   U225 : mu111 port map( A => v_count_5_port, B => row_5_port, S => n174, Y =>
                           n124);
   U226 : mu111 port map( A => v_count_4_port, B => row_4_port, S => n174, Y =>
                           n123);
   U227 : mu111 port map( A => v_count_3_port, B => row_3_port, S => n174, Y =>
                           n122);
   U228 : mu111 port map( A => v_count_2_port, B => row_2_port, S => n174, Y =>
                           n121);
   U229 : mu111 port map( A => v_count_1_port, B => row_1_port, S => n174, Y =>
                           n120);
   U230 : mu111 port map( A => v_count_0_port, B => row_0_port, S => n174, Y =>
                           n119);
   U231 : iv110 port map( A => n220, Y => n174);
   U232 : no210 port map( A => n158, B => v_count_9_port, Y => n220);
   U233 : no310 port map( A => n221, B => n222, C => n223, Y => n158);
   U234 : na210 port map( A => v_count_5_port, B => v_count_6_port, Y => n223);
   U235 : iv110 port map( A => v_count_8_port, Y => n221);
   U236 : no210 port map( A => n156, B => n216, Y => N46);
   U237 : na210 port map( A => v_count_9_port, B => n224, Y => n216);
   U238 : na310 port map( A => n225, B => n226, C => n227, Y => n224);
   U239 : no310 port map( A => v_count_6_port, B => v_count_8_port, C => 
                           v_count_7_port, Y => n227);
   U240 : na210 port map( A => v_count_3_port, B => n228, Y => n226);
   U241 : iv110 port map( A => n160, Y => n228);
   U242 : no310 port map( A => v_count_1_port, B => v_count_2_port, C => 
                           v_count_0_port, Y => n160);
   U243 : no210 port map( A => v_count_5_port, B => v_count_4_port, Y => n225);
   U244 : iv110 port map( A => n229, Y => N45);
   U245 : na210 port map( A => n156, B => n215, Y => n229);
   U246 : ex210 port map( A => n190, B => n191, Y => n215);
   U247 : mu111 port map( A => n222, B => n217, S => n180, Y => n191);
   U248 : iv110 port map( A => h_count_7_port, Y => n217);
   U249 : iv110 port map( A => v_count_7_port, Y => n222);
   U250 : iv110 port map( A => n230, Y => N44);
   U251 : na210 port map( A => n156, B => n212, Y => n230);
   U252 : no210 port map( A => n231, B => n232, Y => n212);
   U253 : no210 port map( A => n233, B => n234, Y => n232);
   U254 : iv110 port map( A => n190, Y => n231);
   U255 : na210 port map( A => n234, B => n233, Y => n190);
   U256 : mu111 port map( A => v_count_6_port, B => h_count_6_port, S => n180, 
                           Y => n233);
   U257 : no210 port map( A => n235, B => n236, Y => n234);
   U258 : iv110 port map( A => n237, Y => N43);
   U259 : na210 port map( A => n156, B => n209, Y => n237);
   U260 : ex210 port map( A => n235, B => n236, Y => n209);
   U261 : iv110 port map( A => n238, Y => n236);
   U262 : mu111 port map( A => h_count_5_port, B => v_count_5_port, S => n186, 
                           Y => n238);
   U263 : na310 port map( A => n239, B => n240, C => n241, Y => n235);
   U264 : no210 port map( A => n186, B => n206, Y => N42);
   U265 : ex210 port map( A => n242, B => n240, Y => n206);
   U266 : mu111 port map( A => h_count_4_port, B => v_count_4_port, S => n186, 
                           Y => n240);
   U267 : na210 port map( A => n241, B => n239, Y => n242);
   U268 : no210 port map( A => n186, B => n202, Y => N41);
   U269 : ex210 port map( A => n243, B => n239, Y => n202);
   U270 : mu111 port map( A => h_count_3_port, B => v_count_3_port, S => n186, 
                           Y => n239);
   U271 : no210 port map( A => n186, B => n198, Y => N40);
   U272 : na210 port map( A => n243, B => n244, Y => n198);
   U273 : na210 port map( A => n245, B => n246, Y => n244);
   U274 : iv110 port map( A => n241, Y => n243);
   U275 : no210 port map( A => n246, B => n245, Y => n241);
   U276 : mu111 port map( A => n163, B => n171, S => n180, Y => n245);
   U277 : iv110 port map( A => h_count_2_port, Y => n171);
   U278 : iv110 port map( A => v_count_2_port, Y => n163);
   U279 : na210 port map( A => n247, B => n179, Y => n246);
   U280 : iv110 port map( A => n248, Y => N39);
   U281 : na210 port map( A => n180, B => n194, Y => n248);
   U282 : ex210 port map( A => n247, B => n179, Y => n194);
   U283 : mu111 port map( A => v_count_0_port, B => h_count_0_port, S => n180, 
                           Y => n179);
   U284 : mu111 port map( A => v_count_1_port, B => h_count_1_port, S => n180, 
                           Y => n247);
   U285 : no210 port map( A => h_count_0_port, B => n186, Y => N38);
   U286 : iv110 port map( A => n180, Y => n186);
   U287 : na310 port map( A => h_count_7_port, B => n249, C => h_count_6_port, 
                           Y => n180);
   U288 : na310 port map( A => n250, B => n172, C => n251, Y => n249);
   U289 : no210 port map( A => h_count_5_port, B => h_count_4_port, Y => n251);
   U290 : iv110 port map( A => h_count_3_port, Y => n172);
   U291 : na310 port map( A => h_count_0_port, B => h_count_2_port, C => 
                           h_count_1_port, Y => n250);

end synthesised;



