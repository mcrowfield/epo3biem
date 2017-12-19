extern network dfn10 (terminal D, CK, Q, vss, vdd)
extern network dfr11 (terminal D, R, CK, Q, vss, vdd)
extern network no310 (terminal A, B, C, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
extern network mu111 (terminal A, B, S, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
network vga_controller (terminal pixel_clk, reset, red, green, blue, RGB_2_0_2, 
                                 RGB_2_0_1, RGB_2_0_0, red_o, green_o, blue_o, 
                                 h_sync, v_sync, disp_ena, column_7_0_7, 
                                 column_7_0_6, column_7_0_5, column_7_0_4, 
                                 column_7_0_3, column_7_0_2, column_7_0_1, 
                                 column_7_0_0, row_9_0_9, row_9_0_8, row_9_0_7, 
                                 row_9_0_6, row_9_0_5, row_9_0_4, row_9_0_3, 
                                 row_9_0_2, row_9_0_1, row_9_0_0, shz, vss, vdd)
{
   net {column_7_0_7, column_7_port};
   net {column_7_0_6, column_6_port};
   net {column_7_0_5, column_5_port};
   net {column_7_0_4, column_4_port};
   net {column_7_0_3, column_3_port};
   net {column_7_0_2, column_2_port};
   net {column_7_0_1, column_1_port};
   net {column_7_0_0, column_0_port};
   net {row_9_0_9, row_9_port};
   net {row_9_0_8, row_8_port};
   net {row_9_0_7, row_7_port};
   net {row_9_0_6, row_6_port};
   net {row_9_0_5, row_5_port};
   net {row_9_0_4, row_4_port};
   net {row_9_0_3, row_3_port};
   net {row_9_0_2, row_2_port};
   net {row_9_0_1, row_1_port};
   net {row_9_0_0, row_0_port};
   {v_count_reg_0_inst} dfr11 (n96, reset, pixel_clk, row_0_port, vss, vdd);
   {h_count_reg_7_inst} dfr11 (N45, reset, pixel_clk, column_7_port, vss, vdd);
   {h_count_reg_6_inst} dfr11 (N44, reset, pixel_clk, column_6_port, vss, vdd);
   {h_count_reg_5_inst} dfr11 (N43, reset, pixel_clk, column_5_port, vss, vdd);
   {h_count_reg_4_inst} dfr11 (N42, reset, pixel_clk, column_4_port, vss, vdd);
   {h_count_reg_3_inst} dfr11 (N41, reset, pixel_clk, column_3_port, vss, vdd);
   {h_count_reg_2_inst} dfr11 (N40, reset, pixel_clk, column_2_port, vss, vdd);
   {h_count_reg_1_inst} dfr11 (N39, reset, pixel_clk, column_1_port, vss, vdd);
   {h_count_reg_0_inst} dfr11 (N38, reset, pixel_clk, column_0_port, vss, vdd);
   {v_count_reg_9_inst} dfr11 (n95, reset, pixel_clk, row_9_port, vss, vdd);
   {v_count_reg_8_inst} dfr11 (n94, reset, pixel_clk, row_8_port, vss, vdd);
   {shz_reg} dfr11 (N46, reset, pixel_clk, shz, vss, vdd);
   {v_count_reg_1_inst} dfr11 (n93, reset, pixel_clk, row_1_port, vss, vdd);
   {v_count_reg_2_inst} dfr11 (n92, reset, pixel_clk, row_2_port, vss, vdd);
   {v_count_reg_3_inst} dfr11 (n91, reset, pixel_clk, row_3_port, vss, vdd);
   {v_count_reg_4_inst} dfr11 (n90, reset, pixel_clk, row_4_port, vss, vdd);
   {v_count_reg_5_inst} dfr11 (n89, reset, pixel_clk, row_5_port, vss, vdd);
   {v_count_reg_6_inst} dfr11 (n88, reset, pixel_clk, row_6_port, vss, vdd);
   {v_count_reg_7_inst} dfr11 (n87, reset, pixel_clk, row_7_port, vss, vdd);
   {h_sync_reg} dfn10 (n86, pixel_clk, h_sync, vss, vdd);
   {v_sync_reg} dfn10 (n84, pixel_clk, v_sync, vss, vdd);
   {disp_ena_t_reg} dfr11 (n204, reset, pixel_clk, disp_ena, vss, vdd);
   {U101} iv110 (n83, n84, vss, vdd);
   {U102} no210 (reset, n202, n83, vss, vdd);
   {U103} iv110 (n85, n86, vss, vdd);
   {U104} no210 (reset, n203, n85, vss, vdd);
   {U105} iv110 (n140, n103, vss, vdd);
   {U106} iv110 (n104, red_o, vss, vdd);
   {U107} no210 (RGB_2_0_2, red, n104, vss, vdd);
   {U108} iv110 (n105, green_o, vss, vdd);
   {U109} no210 (RGB_2_0_1, green, n105, vss, vdd);
   {U110} iv110 (n106, blue_o, vss, vdd);
   {U111} no210 (RGB_2_0_0, blue, n106, vss, vdd);
   {U112} na310 (n107, n108, n109, n202, vss, vdd);
   {U113} no310 (row_3_port, row_9_port, row_4_port, n109, vss, vdd);
   {U114} no210 (n110, n111, n107, vss, vdd);
   {U115} no210 (n112, n113, n111, vss, vdd);
   {U116} no210 (row_0_port, row_1_port, n112, vss, vdd);
   {U117} na310 (n114, column_7_port, n115, n203, vss, vdd);
   {U118} no210 (column_6_port, n116, n115, vss, vdd);
   {U119} iv110 (column_5_port, n116, vss, vdd);
   {U120} mu111 (n117, n118, column_4_port, n114, vss, vdd);
   {U121} na310 (column_2_port, n119, column_3_port, n118, vss, vdd);
   {U122} iv110 (n120, n119, vss, vdd);
   {U123} no210 (column_1_port, column_0_port, n120, vss, vdd);
   {U124} na210 (n121, n122, n117, vss, vdd);
   {U125} no310 (n123, row_9_port, n108, n204, vss, vdd);
   {U126} no310 (n124, n125, n126, n108, vss, vdd);
   {U127} na210 (row_5_port, row_6_port, n126, vss, vdd);
   {U128} iv110 (row_8_port, n124, vss, vdd);
   {U129} no210 (n127, n128, n123, vss, vdd);
   {U130} no210 (column_6_port, column_5_port, n127, vss, vdd);
   {U131} na210 (n129, n130, n96, vss, vdd);
   {U132} iv110 (n131, n130, vss, vdd);
   {U133} no210 (n132, n133, n131, vss, vdd);
   {U134} na210 (row_0_port, n103, n129, vss, vdd);
   {U135} na210 (n135, n136, n95, vss, vdd);
   {U136} na310 (n137, row_8_port, n138, n136, vss, vdd);
   {U137} na210 (row_9_port, n139, n135, vss, vdd);
   {U138} na210 (n140, n132, n139, vss, vdd);
   {U139} na210 (n141, n142, n94, vss, vdd);
   {U140} na210 (n137, n143, n142, vss, vdd);
   {U141} ex210 (row_8_port, n138, n143, vss, vdd);
   {U142} no210 (n144, n145, n138, vss, vdd);
   {U143} na210 (row_8_port, n103, n141, vss, vdd);
   {U144} na210 (n146, n147, n93, vss, vdd);
   {U145} na210 (n137, n148, n147, vss, vdd);
   {U146} na210 (row_1_port, n103, n146, vss, vdd);
   {U147} na210 (n149, n150, n92, vss, vdd);
   {U148} iv110 (n151, n150, vss, vdd);
   {U149} no210 (n152, n132, n151, vss, vdd);
   {U150} na210 (row_2_port, n103, n149, vss, vdd);
   {U151} na210 (n153, n154, n91, vss, vdd);
   {U152} iv110 (n155, n154, vss, vdd);
   {U153} no210 (n132, n156, n155, vss, vdd);
   {U154} na210 (row_3_port, n103, n153, vss, vdd);
   {U155} na210 (n157, n158, n90, vss, vdd);
   {U156} iv110 (n159, n158, vss, vdd);
   {U157} no210 (n132, n160, n159, vss, vdd);
   {U158} na210 (row_4_port, n103, n157, vss, vdd);
   {U159} na210 (n161, n162, n89, vss, vdd);
   {U160} na210 (n137, n163, n162, vss, vdd);
   {U161} na210 (row_5_port, n103, n161, vss, vdd);
   {U162} na210 (n164, n165, n88, vss, vdd);
   {U163} na210 (n166, n137, n165, vss, vdd);
   {U164} na210 (row_6_port, n103, n164, vss, vdd);
   {U165} na210 (n167, n168, n87, vss, vdd);
   {U166} na210 (n137, n169, n168, vss, vdd);
   {U167} iv110 (n132, n137, vss, vdd);
   {U168} na210 (n140, n170, n132, vss, vdd);
   {U169} na210 (row_7_port, n103, n167, vss, vdd);
   {U170} no210 (n103, n170, N46, vss, vdd);
   {U171} na210 (row_9_port, n171, n170, vss, vdd);
   {U172} na310 (n172, n173, n174, n171, vss, vdd);
   {U173} no310 (row_6_port, row_8_port, row_7_port, n174, vss, vdd);
   {U174} na210 (row_3_port, n175, n173, vss, vdd);
   {U175} iv110 (n110, n175, vss, vdd);
   {U176} no310 (row_1_port, row_2_port, row_0_port, n110, vss, vdd);
   {U177} no210 (row_5_port, row_4_port, n172, vss, vdd);
   {U178} iv110 (n176, N45, vss, vdd);
   {U179} na210 (n103, n169, n176, vss, vdd);
   {U180} ex210 (n144, n145, n169, vss, vdd);
   {U181} mu111 (n125, n128, n134, n145, vss, vdd);
   {U182} iv110 (column_7_port, n128, vss, vdd);
   {U183} iv110 (row_7_port, n125, vss, vdd);
   {U184} iv110 (n177, N44, vss, vdd);
   {U185} na210 (n103, n166, n177, vss, vdd);
   {U186} no210 (n178, n179, n166, vss, vdd);
   {U187} no210 (n180, n181, n179, vss, vdd);
   {U188} iv110 (n144, n178, vss, vdd);
   {U189} na210 (n181, n180, n144, vss, vdd);
   {U190} mu111 (row_6_port, column_6_port, n134, n180, vss, vdd);
   {U191} no210 (n182, n183, n181, vss, vdd);
   {U192} iv110 (n184, N43, vss, vdd);
   {U193} na210 (n103, n163, n184, vss, vdd);
   {U194} ex210 (n182, n183, n163, vss, vdd);
   {U195} iv110 (n185, n183, vss, vdd);
   {U196} mu111 (column_5_port, row_5_port, n140, n185, vss, vdd);
   {U197} na310 (n186, n187, n188, n182, vss, vdd);
   {U198} no210 (n140, n160, N42, vss, vdd);
   {U199} ex210 (n189, n187, n160, vss, vdd);
   {U200} mu111 (column_4_port, row_4_port, n140, n187, vss, vdd);
   {U201} na210 (n188, n186, n189, vss, vdd);
   {U202} no210 (n140, n156, N41, vss, vdd);
   {U203} ex210 (n190, n186, n156, vss, vdd);
   {U204} mu111 (column_3_port, row_3_port, n140, n186, vss, vdd);
   {U205} no210 (n140, n152, N40, vss, vdd);
   {U206} na210 (n190, n191, n152, vss, vdd);
   {U207} na210 (n192, n193, n191, vss, vdd);
   {U208} iv110 (n188, n190, vss, vdd);
   {U209} no210 (n193, n192, n188, vss, vdd);
   {U210} mu111 (n113, n121, n134, n192, vss, vdd);
   {U211} iv110 (column_2_port, n121, vss, vdd);
   {U212} iv110 (row_2_port, n113, vss, vdd);
   {U213} na210 (n194, n133, n193, vss, vdd);
   {U214} iv110 (n195, N39, vss, vdd);
   {U215} na210 (n134, n148, n195, vss, vdd);
   {U216} ex210 (n194, n133, n148, vss, vdd);
   {U217} mu111 (row_0_port, column_0_port, n134, n133, vss, vdd);
   {U218} mu111 (row_1_port, column_1_port, n134, n194, vss, vdd);
   {U219} no210 (column_0_port, n140, N38, vss, vdd);
   {U220} iv110 (n134, n140, vss, vdd);
   {U221} na310 (column_7_port, n196, column_6_port, n134, vss, vdd);
   {U222} na310 (n197, n122, n198, n196, vss, vdd);
   {U223} no210 (column_5_port, column_4_port, n198, vss, vdd);
   {U224} iv110 (column_3_port, n122, vss, vdd);
   {U225} na310 (column_0_port, column_2_port, column_1_port, n197, vss, vdd);
}



