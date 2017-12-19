extern network dfn10 (terminal D, CK, Q, vss, vdd)
extern network dfr11 (terminal D, R, CK, Q, vss, vdd)
extern network no310 (terminal A, B, C, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
extern network mu111 (terminal A, B, S, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
network vga_controller (terminal pixel_clk, reset, h_sync, v_sync, disp_ena, 
                                 column_7_0_7, column_7_0_6, column_7_0_5, 
                                 column_7_0_4, column_7_0_3, column_7_0_2, 
                                 column_7_0_1, column_7_0_0, row_9_0_9, 
                                 row_9_0_8, row_9_0_7, row_9_0_6, row_9_0_5, 
                                 row_9_0_4, row_9_0_3, row_9_0_2, row_9_0_1, 
                                 row_9_0_0, shz, vss, vdd)
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
   {v_count_reg_0_inst} dfr11 (n150, reset, pixel_clk, v_count_0_port, vss, 
                               vdd);
   {h_count_reg_7_inst} dfr11 (N45, reset, pixel_clk, h_count_7_port, vss, vdd);
   {h_count_reg_6_inst} dfr11 (N44, reset, pixel_clk, h_count_6_port, vss, vdd);
   {h_count_reg_5_inst} dfr11 (N43, reset, pixel_clk, h_count_5_port, vss, vdd);
   {h_count_reg_4_inst} dfr11 (N42, reset, pixel_clk, h_count_4_port, vss, vdd);
   {h_count_reg_3_inst} dfr11 (N41, reset, pixel_clk, h_count_3_port, vss, vdd);
   {h_count_reg_2_inst} dfr11 (N40, reset, pixel_clk, h_count_2_port, vss, vdd);
   {h_count_reg_1_inst} dfr11 (N39, reset, pixel_clk, h_count_1_port, vss, vdd);
   {h_count_reg_0_inst} dfr11 (N38, reset, pixel_clk, h_count_0_port, vss, vdd);
   {v_count_reg_9_inst} dfr11 (n149, reset, pixel_clk, v_count_9_port, vss, 
                               vdd);
   {v_count_reg_8_inst} dfr11 (n148, reset, pixel_clk, v_count_8_port, vss, 
                               vdd);
   {shz_reg} dfr11 (N46, reset, pixel_clk, shz, vss, vdd);
   {v_count_reg_1_inst} dfr11 (n147, reset, pixel_clk, v_count_1_port, vss, 
                               vdd);
   {v_count_reg_2_inst} dfr11 (n146, reset, pixel_clk, v_count_2_port, vss, 
                               vdd);
   {v_count_reg_3_inst} dfr11 (n145, reset, pixel_clk, v_count_3_port, vss, 
                               vdd);
   {v_count_reg_4_inst} dfr11 (n144, reset, pixel_clk, v_count_4_port, vss, 
                               vdd);
   {v_count_reg_5_inst} dfr11 (n143, reset, pixel_clk, v_count_5_port, vss, 
                               vdd);
   {v_count_reg_6_inst} dfr11 (n142, reset, pixel_clk, v_count_6_port, vss, 
                               vdd);
   {v_count_reg_7_inst} dfr11 (n141, reset, pixel_clk, v_count_7_port, vss, 
                               vdd);
   {h_sync_reg} dfn10 (n140, pixel_clk, h_sync, vss, vdd);
   {v_sync_reg} dfn10 (n138, pixel_clk, v_sync, vss, vdd);
   {disp_ena_reg} dfr11 (n152, reset, pixel_clk, disp_ena, vss, vdd);
   {column_reg_7_inst} dfr11 (n136, reset, pixel_clk, column_7_port, vss, vdd);
   {column_reg_6_inst} dfr11 (n135, reset, pixel_clk, column_6_port, vss, vdd);
   {column_reg_5_inst} dfr11 (n134, reset, pixel_clk, column_5_port, vss, vdd);
   {column_reg_4_inst} dfr11 (n133, reset, pixel_clk, column_4_port, vss, vdd);
   {column_reg_3_inst} dfr11 (n132, reset, pixel_clk, column_3_port, vss, vdd);
   {column_reg_2_inst} dfr11 (n131, reset, pixel_clk, column_2_port, vss, vdd);
   {column_reg_1_inst} dfr11 (n130, reset, pixel_clk, column_1_port, vss, vdd);
   {column_reg_0_inst} dfr11 (n129, reset, pixel_clk, column_0_port, vss, vdd);
   {row_reg_9_inst} dfr11 (n128, reset, pixel_clk, row_9_port, vss, vdd);
   {row_reg_8_inst} dfr11 (n127, reset, pixel_clk, row_8_port, vss, vdd);
   {row_reg_7_inst} dfr11 (n126, reset, pixel_clk, row_7_port, vss, vdd);
   {row_reg_6_inst} dfr11 (n125, reset, pixel_clk, row_6_port, vss, vdd);
   {row_reg_5_inst} dfr11 (n124, reset, pixel_clk, row_5_port, vss, vdd);
   {row_reg_4_inst} dfr11 (n123, reset, pixel_clk, row_4_port, vss, vdd);
   {row_reg_3_inst} dfr11 (n122, reset, pixel_clk, row_3_port, vss, vdd);
   {row_reg_2_inst} dfr11 (n121, reset, pixel_clk, row_2_port, vss, vdd);
   {row_reg_1_inst} dfr11 (n120, reset, pixel_clk, row_1_port, vss, vdd);
   {row_reg_0_inst} dfr11 (n119, reset, pixel_clk, row_0_port, vss, vdd);
   {U150} iv110 (n137, n138, vss, vdd);
   {U151} no210 (reset, n252, n137, vss, vdd);
   {U152} iv110 (n139, n140, vss, vdd);
   {U153} no210 (reset, n253, n139, vss, vdd);
   {U154} no210 (n217, n218, n154, vss, vdd);
   {U155} iv110 (n220, n155, vss, vdd);
   {U156} iv110 (n186, n156, vss, vdd);
   {U157} na310 (n157, n158, n159, n252, vss, vdd);
   {U158} no310 (v_count_3_port, v_count_9_port, v_count_4_port, n159, vss, 
                 vdd);
   {U159} no210 (n160, n161, n157, vss, vdd);
   {U160} no210 (n162, n163, n161, vss, vdd);
   {U161} no210 (v_count_0_port, v_count_1_port, n162, vss, vdd);
   {U162} na310 (n164, h_count_7_port, n165, n253, vss, vdd);
   {U163} no210 (h_count_6_port, n166, n165, vss, vdd);
   {U164} iv110 (h_count_5_port, n166, vss, vdd);
   {U165} mu111 (n167, n168, h_count_4_port, n164, vss, vdd);
   {U166} na310 (h_count_2_port, n169, h_count_3_port, n168, vss, vdd);
   {U167} iv110 (n170, n169, vss, vdd);
   {U168} no210 (h_count_1_port, h_count_0_port, n170, vss, vdd);
   {U169} na210 (n171, n172, n167, vss, vdd);
   {U170} no210 (n173, n155, n152, vss, vdd);
   {U171} na210 (n175, n176, n150, vss, vdd);
   {U172} iv110 (n177, n176, vss, vdd);
   {U173} no210 (n178, n179, n177, vss, vdd);
   {U174} na210 (v_count_0_port, n156, n175, vss, vdd);
   {U175} na210 (n181, n182, n149, vss, vdd);
   {U176} na310 (n183, v_count_8_port, n184, n182, vss, vdd);
   {U177} na210 (v_count_9_port, n185, n181, vss, vdd);
   {U178} na210 (n186, n178, n185, vss, vdd);
   {U179} na210 (n187, n188, n148, vss, vdd);
   {U180} na210 (n183, n189, n188, vss, vdd);
   {U181} ex210 (v_count_8_port, n184, n189, vss, vdd);
   {U182} no210 (n190, n191, n184, vss, vdd);
   {U183} na210 (v_count_8_port, n156, n187, vss, vdd);
   {U184} na210 (n192, n193, n147, vss, vdd);
   {U185} na210 (n183, n194, n193, vss, vdd);
   {U186} na210 (v_count_1_port, n156, n192, vss, vdd);
   {U187} na210 (n195, n196, n146, vss, vdd);
   {U188} iv110 (n197, n196, vss, vdd);
   {U189} no210 (n198, n178, n197, vss, vdd);
   {U190} na210 (v_count_2_port, n156, n195, vss, vdd);
   {U191} na210 (n199, n200, n145, vss, vdd);
   {U192} iv110 (n201, n200, vss, vdd);
   {U193} no210 (n178, n202, n201, vss, vdd);
   {U194} na210 (v_count_3_port, n156, n199, vss, vdd);
   {U195} na210 (n203, n204, n144, vss, vdd);
   {U196} iv110 (n205, n204, vss, vdd);
   {U197} no210 (n178, n206, n205, vss, vdd);
   {U198} na210 (v_count_4_port, n156, n203, vss, vdd);
   {U199} na210 (n207, n208, n143, vss, vdd);
   {U200} na210 (n183, n209, n208, vss, vdd);
   {U201} na210 (v_count_5_port, n156, n207, vss, vdd);
   {U202} na210 (n210, n211, n142, vss, vdd);
   {U203} na210 (n212, n183, n211, vss, vdd);
   {U204} na210 (v_count_6_port, n156, n210, vss, vdd);
   {U205} na210 (n213, n214, n141, vss, vdd);
   {U206} na210 (n183, n215, n214, vss, vdd);
   {U207} iv110 (n178, n183, vss, vdd);
   {U208} na210 (n186, n216, n178, vss, vdd);
   {U209} na210 (v_count_7_port, n156, n213, vss, vdd);
   {U210} mu111 (h_count_7_port, column_7_port, n154, n136, vss, vdd);
   {U211} mu111 (h_count_6_port, column_6_port, n173, n135, vss, vdd);
   {U212} mu111 (h_count_5_port, column_5_port, n154, n134, vss, vdd);
   {U213} mu111 (h_count_4_port, column_4_port, n173, n133, vss, vdd);
   {U214} mu111 (h_count_3_port, column_3_port, n154, n132, vss, vdd);
   {U215} mu111 (h_count_2_port, column_2_port, n173, n131, vss, vdd);
   {U216} mu111 (h_count_1_port, column_1_port, n154, n130, vss, vdd);
   {U217} mu111 (h_count_0_port, column_0_port, n173, n129, vss, vdd);
   {U218} no210 (n217, n218, n173, vss, vdd);
   {U219} no210 (h_count_6_port, h_count_5_port, n218, vss, vdd);
   {U220} iv110 (n219, n128, vss, vdd);
   {U221} na210 (n155, row_9_port, n219, vss, vdd);
   {U222} mu111 (v_count_8_port, row_8_port, n155, n127, vss, vdd);
   {U223} mu111 (v_count_7_port, row_7_port, n174, n126, vss, vdd);
   {U224} mu111 (v_count_6_port, row_6_port, n174, n125, vss, vdd);
   {U225} mu111 (v_count_5_port, row_5_port, n174, n124, vss, vdd);
   {U226} mu111 (v_count_4_port, row_4_port, n174, n123, vss, vdd);
   {U227} mu111 (v_count_3_port, row_3_port, n174, n122, vss, vdd);
   {U228} mu111 (v_count_2_port, row_2_port, n174, n121, vss, vdd);
   {U229} mu111 (v_count_1_port, row_1_port, n174, n120, vss, vdd);
   {U230} mu111 (v_count_0_port, row_0_port, n174, n119, vss, vdd);
   {U231} iv110 (n220, n174, vss, vdd);
   {U232} no210 (n158, v_count_9_port, n220, vss, vdd);
   {U233} no310 (n221, n222, n223, n158, vss, vdd);
   {U234} na210 (v_count_5_port, v_count_6_port, n223, vss, vdd);
   {U235} iv110 (v_count_8_port, n221, vss, vdd);
   {U236} no210 (n156, n216, N46, vss, vdd);
   {U237} na210 (v_count_9_port, n224, n216, vss, vdd);
   {U238} na310 (n225, n226, n227, n224, vss, vdd);
   {U239} no310 (v_count_6_port, v_count_8_port, v_count_7_port, n227, vss, 
                 vdd);
   {U240} na210 (v_count_3_port, n228, n226, vss, vdd);
   {U241} iv110 (n160, n228, vss, vdd);
   {U242} no310 (v_count_1_port, v_count_2_port, v_count_0_port, n160, vss, 
                 vdd);
   {U243} no210 (v_count_5_port, v_count_4_port, n225, vss, vdd);
   {U244} iv110 (n229, N45, vss, vdd);
   {U245} na210 (n156, n215, n229, vss, vdd);
   {U246} ex210 (n190, n191, n215, vss, vdd);
   {U247} mu111 (n222, n217, n180, n191, vss, vdd);
   {U248} iv110 (h_count_7_port, n217, vss, vdd);
   {U249} iv110 (v_count_7_port, n222, vss, vdd);
   {U250} iv110 (n230, N44, vss, vdd);
   {U251} na210 (n156, n212, n230, vss, vdd);
   {U252} no210 (n231, n232, n212, vss, vdd);
   {U253} no210 (n233, n234, n232, vss, vdd);
   {U254} iv110 (n190, n231, vss, vdd);
   {U255} na210 (n234, n233, n190, vss, vdd);
   {U256} mu111 (v_count_6_port, h_count_6_port, n180, n233, vss, vdd);
   {U257} no210 (n235, n236, n234, vss, vdd);
   {U258} iv110 (n237, N43, vss, vdd);
   {U259} na210 (n156, n209, n237, vss, vdd);
   {U260} ex210 (n235, n236, n209, vss, vdd);
   {U261} iv110 (n238, n236, vss, vdd);
   {U262} mu111 (h_count_5_port, v_count_5_port, n186, n238, vss, vdd);
   {U263} na310 (n239, n240, n241, n235, vss, vdd);
   {U264} no210 (n186, n206, N42, vss, vdd);
   {U265} ex210 (n242, n240, n206, vss, vdd);
   {U266} mu111 (h_count_4_port, v_count_4_port, n186, n240, vss, vdd);
   {U267} na210 (n241, n239, n242, vss, vdd);
   {U268} no210 (n186, n202, N41, vss, vdd);
   {U269} ex210 (n243, n239, n202, vss, vdd);
   {U270} mu111 (h_count_3_port, v_count_3_port, n186, n239, vss, vdd);
   {U271} no210 (n186, n198, N40, vss, vdd);
   {U272} na210 (n243, n244, n198, vss, vdd);
   {U273} na210 (n245, n246, n244, vss, vdd);
   {U274} iv110 (n241, n243, vss, vdd);
   {U275} no210 (n246, n245, n241, vss, vdd);
   {U276} mu111 (n163, n171, n180, n245, vss, vdd);
   {U277} iv110 (h_count_2_port, n171, vss, vdd);
   {U278} iv110 (v_count_2_port, n163, vss, vdd);
   {U279} na210 (n247, n179, n246, vss, vdd);
   {U280} iv110 (n248, N39, vss, vdd);
   {U281} na210 (n180, n194, n248, vss, vdd);
   {U282} ex210 (n247, n179, n194, vss, vdd);
   {U283} mu111 (v_count_0_port, h_count_0_port, n180, n179, vss, vdd);
   {U284} mu111 (v_count_1_port, h_count_1_port, n180, n247, vss, vdd);
   {U285} no210 (h_count_0_port, n186, N38, vss, vdd);
   {U286} iv110 (n180, n186, vss, vdd);
   {U287} na310 (h_count_7_port, n249, h_count_6_port, n180, vss, vdd);
   {U288} na310 (n250, n172, n251, n249, vss, vdd);
   {U289} no210 (h_count_5_port, h_count_4_port, n251, vss, vdd);
   {U290} iv110 (h_count_3_port, n172, vss, vdd);
   {U291} na310 (h_count_0_port, h_count_2_port, h_count_1_port, n250, vss, 
                 vdd);
}



