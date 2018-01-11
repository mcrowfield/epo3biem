extern network dfr11 (terminal D, R, CK, Q, vss, vdd)
extern network dfn10 (terminal D, CK, Q, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network mu111 (terminal A, B, S, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network pos (terminal clk, reset, enable, count, position_new_5_0_5, 
                      position_new_5_0_4, position_new_5_0_3, 
                      position_new_5_0_2, position_new_5_0_1, 
                      position_new_5_0_0, position_old_5_0_5, 
                      position_old_5_0_4, position_old_5_0_3, 
                      position_old_5_0_2, position_old_5_0_1, 
                      position_old_5_0_0, vss, vdd)
{
   net {position_old_5_0_5, position_old_5_port};
   net {position_old_5_0_4, position_old_4_port};
   net {position_old_5_0_3, position_old_3_port};
   net {position_old_5_0_2, position_old_2_port};
   net {position_old_5_0_1, position_old_1_port};
   net {position_old_5_0_0, position_old_0_port};
   {state_reg_0_inst} dfr11 (next_state_0_port, n3, clk, state_0_port, vss, 
                             vdd);
   {state_reg_1_inst} dfr11 (next_state_1_port, n3, clk, state_1_port, vss, 
                             vdd);
   {position_old_reg_4_inst} dfn10 (n21, clk, position_old_4_port, vss, vdd);
   {position_old_reg_3_inst} dfn10 (n22, clk, position_old_3_port, vss, vdd);
   {position_old_reg_2_inst} dfn10 (n23, clk, position_old_2_port, vss, vdd);
   {position_old_reg_1_inst} dfn10 (n24, clk, position_old_1_port, vss, vdd);
   {position_old_reg_0_inst} dfn10 (n25, clk, position_old_0_port, vss, vdd);
   {position_old_reg_5_inst} dfn10 (n20, clk, position_old_5_port, vss, vdd);
   {U30} iv110 (n26, next_state_1_port, vss, vdd);
   {U31} na310 (state_0_port, n27, count, n26, vss, vdd);
   {U32} na210 (state_0_port, n28, next_state_0_port, vss, vdd);
   {U33} na210 (n29, n27, n28, vss, vdd);
   {U34} iv110 (count, n29, vss, vdd);
   {U35} iv110 (enable, n3, vss, vdd);
   {U36} na210 (n30, n31, n25, vss, vdd);
   {U37} na210 (position_new_5_0_0, n32, n31, vss, vdd);
   {U38} na210 (position_old_0_port, state_0_port, n30, vss, vdd);
   {U39} na210 (n33, n34, n24, vss, vdd);
   {U40} na210 (position_new_5_0_1, n32, n34, vss, vdd);
   {U41} na210 (position_old_1_port, state_0_port, n33, vss, vdd);
   {U42} na210 (n35, n36, n23, vss, vdd);
   {U43} na210 (position_new_5_0_2, n32, n36, vss, vdd);
   {U44} na210 (position_old_2_port, state_0_port, n35, vss, vdd);
   {U45} na210 (n37, n38, n22, vss, vdd);
   {U46} na210 (position_new_5_0_3, n32, n38, vss, vdd);
   {U47} na210 (position_old_3_port, state_0_port, n37, vss, vdd);
   {U48} na210 (n39, n40, n21, vss, vdd);
   {U49} na210 (position_new_5_0_4, n32, n40, vss, vdd);
   {U50} na210 (position_old_4_port, state_0_port, n39, vss, vdd);
   {U51} na210 (n41, n42, n20, vss, vdd);
   {U52} na210 (position_new_5_0_5, n32, n42, vss, vdd);
   {U53} no210 (n27, state_0_port, n32, vss, vdd);
   {U54} iv110 (state_1_port, n27, vss, vdd);
   {U55} mu111 (state_1_port, n43, state_0_port, n41, vss, vdd);
   {U56} iv110 (position_old_5_port, n43, vss, vdd);
}



