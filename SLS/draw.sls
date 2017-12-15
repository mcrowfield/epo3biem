extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network mu111 (terminal A, B, S, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
extern network no310 (terminal A, B, C, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
network draw (terminal x_input_3_0_3, x_input_3_0_2, x_input_3_0_1, 
                       x_input_3_0_0, y_input_4_0_4, y_input_4_0_3, 
                       y_input_4_0_2, y_input_4_0_1, y_input_4_0_0, 
                       position_4_0_4, position_4_0_3, position_4_0_2, 
                       position_4_0_1, position_4_0_0, blue_output, vss, vdd)
{
   {U13} no310 (n11, x_input_3_0_3, x_input_3_0_2, blue_output, vss, vdd);
   {U14} mu111 (n12, n13, x_input_3_0_1, n11, vss, vdd);
   {U15} na210 (n14, n15, n13, vss, vdd);
   {U16} iv110 (x_input_3_0_0, n15, vss, vdd);
   {U17} na210 (n16, n17, n14, vss, vdd);
   {U18} na310 (n18, n19, n20, n17, vss, vdd);
   {U19} no210 (n21, n22, n20, vss, vdd);
   {U20} ex210 (n23, n24, n22, vss, vdd);
   {U21} ex210 (n25, n26, n21, vss, vdd);
   {U22} ex210 (n27, n28, n19, vss, vdd);
   {U23} na210 (n25, position_4_0_3, n27, vss, vdd);
   {U24} iv110 (n29, n25, vss, vdd);
   {U25} na210 (n23, position_4_0_2, n29, vss, vdd);
   {U26} iv110 (n30, n23, vss, vdd);
   {U27} na210 (position_4_0_0, position_4_0_1, n30, vss, vdd);
   {U28} mu111 (n31, n32, position_4_0_0, n18, vss, vdd);
   {U29} no210 (y_input_4_0_0, n31, n32, vss, vdd);
   {U30} iv110 (n33, n31, vss, vdd);
   {U31} iv110 (n34, n16, vss, vdd);
   {U32} na210 (x_input_3_0_0, n34, n12, vss, vdd);
   {U33} no310 (n28, n24, n35, n34, vss, vdd);
   {U34} iv110 (n36, n35, vss, vdd);
   {U35} no310 (n37, n33, n26, n36, vss, vdd);
   {U36} ex210 (position_4_0_3, y_input_4_0_3, n26, vss, vdd);
   {U37} ex210 (position_4_0_1, y_input_4_0_1, n33, vss, vdd);
   {U38} ex210 (y_input_4_0_0, position_4_0_0, n37, vss, vdd);
   {U39} ex210 (y_input_4_0_2, position_4_0_2, n24, vss, vdd);
   {U40} ex210 (y_input_4_0_4, position_4_0_4, n28, vss, vdd);
}



