extern network dfr11 (terminal D, R, CK, Q, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
network divider (terminal disp_ena, row_9_0_9, row_9_0_8, row_9_0_7, row_9_0_6, 
                          row_9_0_5, row_9_0_4, row_9_0_3, row_9_0_2, 
                          row_9_0_1, row_9_0_0, column_7_0_7, column_7_0_6, 
                          column_7_0_5, column_7_0_4, column_7_0_3, 
                          column_7_0_2, column_7_0_1, column_7_0_0, shz, reset, 
                          clk, xv_6_0_6, xv_6_0_5, xv_6_0_4, xv_6_0_3, 
                          xv_6_0_2, xv_6_0_1, xv_6_0_0, yv_5_0_5, yv_5_0_4, 
                          yv_5_0_3, yv_5_0_2, yv_5_0_1, yv_5_0_0, tick, vss, 
                          vdd)
{
   {v_count_reg_0_inst} dfr11 (n15, reset, clk, v_count_0_port, vss, vdd);
   {U32} iv110 (n30, yv_5_0_5, vss, vdd);
   {U33} na210 (row_9_0_8, disp_ena, n30, vss, vdd);
   {U34} iv110 (n31, yv_5_0_4, vss, vdd);
   {U35} na210 (row_9_0_7, disp_ena, n31, vss, vdd);
   {U36} iv110 (n32, yv_5_0_3, vss, vdd);
   {U37} na210 (row_9_0_6, disp_ena, n32, vss, vdd);
   {U38} iv110 (n33, yv_5_0_2, vss, vdd);
   {U39} na210 (row_9_0_5, disp_ena, n33, vss, vdd);
   {U40} iv110 (n34, yv_5_0_1, vss, vdd);
   {U41} na210 (row_9_0_4, disp_ena, n34, vss, vdd);
   {U42} iv110 (n35, yv_5_0_0, vss, vdd);
   {U43} na210 (row_9_0_3, disp_ena, n35, vss, vdd);
   {U44} iv110 (n36, xv_6_0_6, vss, vdd);
   {U45} na210 (column_7_0_7, disp_ena, n36, vss, vdd);
   {U46} iv110 (n37, xv_6_0_5, vss, vdd);
   {U47} na210 (column_7_0_6, disp_ena, n37, vss, vdd);
   {U48} iv110 (n38, xv_6_0_4, vss, vdd);
   {U49} na210 (column_7_0_5, disp_ena, n38, vss, vdd);
   {U50} iv110 (n39, xv_6_0_3, vss, vdd);
   {U51} na210 (column_7_0_4, disp_ena, n39, vss, vdd);
   {U52} iv110 (n40, xv_6_0_2, vss, vdd);
   {U53} na210 (column_7_0_3, disp_ena, n40, vss, vdd);
   {U54} iv110 (n41, xv_6_0_1, vss, vdd);
   {U55} na210 (column_7_0_2, disp_ena, n41, vss, vdd);
   {U56} iv110 (n42, xv_6_0_0, vss, vdd);
   {U57} na210 (column_7_0_1, disp_ena, n42, vss, vdd);
   {U58} iv110 (n43, tick, vss, vdd);
   {U59} na210 (shz, v_count_0_port, n43, vss, vdd);
   {U60} ex210 (v_count_0_port, shz, n15, vss, vdd);
}



