extern network na210 (terminal A, B, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network mu111 (terminal A, B, S, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network posnew (terminal position_old_4_0_4, position_old_4_0_3, 
                         position_old_4_0_2, position_old_4_0_1, 
                         position_old_4_0_0, button, position_new_4_0_4, 
                         position_new_4_0_3, position_new_4_0_2, 
                         position_new_4_0_1, position_new_4_0_0, vss, vdd)
{
   net {n8, vdd};
   net {n9, vss};
   {U7} iv110 (button, n11, vss, vdd);
   {r61_U30} no210 (button, position_old_4_0_0, r61_n24, vss, vdd);
   {r61_U29} na210 (position_old_4_0_0, button, r61_n26, vss, vdd);
   {r61_U28} na210 (r61_n6, r61_n26, position_new_4_0_0, vss, vdd);
   {r61_U27} ex210 (n11, position_old_4_0_1, r61_n25, vss, vdd);
   {r61_U26} ex210 (r61_n6, r61_n25, position_new_4_0_1, vss, vdd);
   {r61_U25} no210 (button, r61_n24, r61_n23, vss, vdd);
   {r61_U24} no210 (r61_n23, position_old_4_0_1, r61_n20, vss, vdd);
   {r61_U23} ex210 (r61_n4, n11, r61_n22, vss, vdd);
   {r61_U22} ex210 (r61_n5, r61_n22, position_new_4_0_2, vss, vdd);
   {r61_U21} no210 (position_old_4_0_2, r61_n5, r61_n21, vss, vdd);
   {r61_U20} no210 (n11, r61_n21, r61_n18, vss, vdd);
   {r61_U19} no210 (r61_n20, r61_n4, r61_n19, vss, vdd);
   {r61_U18} no210 (r61_n18, r61_n19, r61_n16, vss, vdd);
   {r61_U17} ex210 (n11, position_old_4_0_3, r61_n17, vss, vdd);
   {r61_U16} ex210 (r61_n16, r61_n17, position_new_4_0_3, vss, vdd);
   {r61_U15} no210 (position_old_4_0_1, position_old_4_0_0, r61_n15, vss, vdd);
   {r61_U14} ex210 (position_old_4_0_3, r61_n4, r61_n13, vss, vdd);
   {r61_U13} ex210 (n11, r61_n13, r61_n14, vss, vdd);
   {r61_U12} no210 (r61_n15, r61_n14, r61_n8, vss, vdd);
   {r61_U11} no210 (position_old_4_0_1, r61_n3, r61_n9, vss, vdd);
   {r61_U10} no210 (r61_n13, button, r61_n11, vss, vdd);
   {r61_U9} no210 (r61_n2, r61_n4, r61_n12, vss, vdd);
   {r61_U8} no210 (r61_n11, r61_n12, r61_n10, vss, vdd);
   {r61_U7} mu111 (r61_n8, r61_n9, r61_n10, r61_n7, vss, vdd);
   {r61_U6} ex210 (r61_n7, position_old_4_0_4, position_new_4_0_4, vss, vdd);
   {r61_U5} iv110 (r61_n24, r61_n6, vss, vdd);
   {r61_U4} iv110 (r61_n20, r61_n5, vss, vdd);
   {r61_U3} iv110 (position_old_4_0_2, r61_n4, vss, vdd);
   {r61_U2} iv110 (r61_n14, r61_n3, vss, vdd);
   {r61_U1} iv110 (position_old_4_0_3, r61_n2, vss, vdd);
}



