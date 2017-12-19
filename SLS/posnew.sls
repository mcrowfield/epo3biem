extern network na210 (terminal A, B, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network posnew (terminal position_old_5_0_5, position_old_5_0_4, 
                         position_old_5_0_3, position_old_5_0_2, 
                         position_old_5_0_1, position_old_5_0_0, button, 
                         position_new_5_0_5, position_new_5_0_4, 
                         position_new_5_0_3, position_new_5_0_2, 
                         position_new_5_0_1, position_new_5_0_0, vss, vdd)
{
   net {n8, vdd};
   net {n9, vss};
   {U7} iv110 (button, n11, vss, vdd);
   {r61_U33} no210 (button, position_old_5_0_0, r61_n26, vss, vdd);
   {r61_U32} na210 (position_old_5_0_0, button, r61_n28, vss, vdd);
   {r61_U31} na210 (r61_n7, r61_n28, position_new_5_0_0, vss, vdd);
   {r61_U30} ex210 (n11, position_old_5_0_1, r61_n27, vss, vdd);
   {r61_U29} ex210 (r61_n7, r61_n27, position_new_5_0_1, vss, vdd);
   {r61_U28} no210 (button, r61_n26, r61_n25, vss, vdd);
   {r61_U27} no210 (r61_n25, position_old_5_0_1, r61_n23, vss, vdd);
   {r61_U26} ex210 (r61_n5, n11, r61_n24, vss, vdd);
   {r61_U25} ex210 (r61_n6, r61_n24, position_new_5_0_2, vss, vdd);
   {r61_U24} na210 (position_old_5_0_2, r61_n6, r61_n20, vss, vdd);
   {r61_U23} na210 (r61_n23, r61_n5, r61_n22, vss, vdd);
   {r61_U22} na210 (r61_n22, button, r61_n21, vss, vdd);
   {r61_U21} na210 (r61_n20, r61_n21, r61_n18, vss, vdd);
   {r61_U20} ex210 (n11, position_old_5_0_3, r61_n19, vss, vdd);
   {r61_U19} ex210 (r61_n4, r61_n19, position_new_5_0_3, vss, vdd);
   {r61_U18} na210 (position_old_5_0_3, r61_n18, r61_n15, vss, vdd);
   {r61_U17} no210 (r61_n18, position_old_5_0_3, r61_n17, vss, vdd);
   {r61_U16} no210 (r61_n17, n11, r61_n16, vss, vdd);
   {r61_U15} na210 (r61_n15, r61_n3, r61_n12, vss, vdd);
   {r61_U14} ex210 (position_old_5_0_4, button, r61_n14, vss, vdd);
   {r61_U13} ex210 (r61_n12, r61_n14, position_new_5_0_4, vss, vdd);
   {r61_U12} no210 (position_old_5_0_4, r61_n12, r61_n13, vss, vdd);
   {r61_U11} no210 (n11, r61_n13, r61_n10, vss, vdd);
   {r61_U10} na210 (r61_n12, position_old_5_0_4, r61_n11, vss, vdd);
   {r61_U9} no210 (r61_n10, r61_n2, r61_n8, vss, vdd);
   {r61_U8} ex210 (n11, position_old_5_0_5, r61_n9, vss, vdd);
   {r61_U7} ex210 (r61_n8, r61_n9, position_new_5_0_5, vss, vdd);
   {r61_U6} iv110 (r61_n26, r61_n7, vss, vdd);
   {r61_U5} iv110 (r61_n23, r61_n6, vss, vdd);
   {r61_U4} iv110 (position_old_5_0_2, r61_n5, vss, vdd);
   {r61_U3} iv110 (r61_n18, r61_n4, vss, vdd);
   {r61_U2} iv110 (r61_n16, r61_n3, vss, vdd);
   {r61_U1} iv110 (r61_n11, r61_n2, vss, vdd);
}



