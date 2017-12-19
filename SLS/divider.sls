extern network dfr11 (terminal D, R, CK, Q, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network divider (terminal disp_ena, row_9_0_9, row_9_0_8, row_9_0_7, row_9_0_6, 
                          row_9_0_5, row_9_0_4, row_9_0_3, row_9_0_2, 
                          row_9_0_1, row_9_0_0, column_7_0_7, column_7_0_6, 
                          column_7_0_5, column_7_0_4, column_7_0_3, 
                          column_7_0_2, column_7_0_1, column_7_0_0, shz, reset, 
                          clk, xv_5_0_5, xv_5_0_4, xv_5_0_3, xv_5_0_2, 
                          xv_5_0_1, xv_5_0_0, yv_4_0_4, yv_4_0_3, yv_4_0_2, 
                          yv_4_0_1, yv_4_0_0, tick, vss, vdd)
{
   net {tick, tick_port};
   {v_count_reg_0_inst} dfr11 (n15, reset, clk, v_count_0_port, vss, vdd);
   {v_count_reg_1_inst} dfr11 (n14, reset, clk, tick_port, vss, vdd);
   {U29} iv110 (n27, yv_4_0_4, vss, vdd);
   {U30} na210 (row_9_0_8, disp_ena, n27, vss, vdd);
   {U31} iv110 (n28, yv_4_0_3, vss, vdd);
   {U32} na210 (row_9_0_7, disp_ena, n28, vss, vdd);
   {U33} iv110 (n29, yv_4_0_2, vss, vdd);
   {U34} na210 (row_9_0_6, disp_ena, n29, vss, vdd);
   {U35} iv110 (n30, yv_4_0_1, vss, vdd);
   {U36} na210 (row_9_0_5, disp_ena, n30, vss, vdd);
   {U37} iv110 (n31, yv_4_0_0, vss, vdd);
   {U38} na210 (row_9_0_4, disp_ena, n31, vss, vdd);
   {U39} iv110 (n32, xv_5_0_5, vss, vdd);
   {U40} na210 (column_7_0_7, disp_ena, n32, vss, vdd);
   {U41} iv110 (n33, xv_5_0_4, vss, vdd);
   {U42} na210 (column_7_0_6, disp_ena, n33, vss, vdd);
   {U43} iv110 (n34, xv_5_0_3, vss, vdd);
   {U44} na210 (column_7_0_5, disp_ena, n34, vss, vdd);
   {U45} iv110 (n35, xv_5_0_2, vss, vdd);
   {U46} na210 (column_7_0_4, disp_ena, n35, vss, vdd);
   {U47} iv110 (n36, xv_5_0_1, vss, vdd);
   {U48} na210 (column_7_0_3, disp_ena, n36, vss, vdd);
   {U49} iv110 (n37, xv_5_0_0, vss, vdd);
   {U50} na210 (column_7_0_2, disp_ena, n37, vss, vdd);
   {U51} ex210 (v_count_0_port, shz, n15, vss, vdd);
   {U52} ex210 (n38, n39, n14, vss, vdd);
   {U53} na210 (v_count_0_port, shz, n39, vss, vdd);
   {U54} iv110 (tick_port, n38, vss, vdd);
}



