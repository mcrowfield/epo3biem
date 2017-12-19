extern network mu111 (terminal A, B, S, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network no310 (terminal A, B, C, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network draw (terminal x_input_6_0_6, x_input_6_0_5, x_input_6_0_4, 
                       x_input_6_0_3, x_input_6_0_2, x_input_6_0_1, 
                       x_input_6_0_0, y_input_5_0_5, y_input_5_0_4, 
                       y_input_5_0_3, y_input_5_0_2, y_input_5_0_1, 
                       y_input_5_0_0, position_5_0_5, position_5_0_4, 
                       position_5_0_3, position_5_0_2, position_5_0_1, 
                       position_5_0_0, blue_output, vss, vdd)
{
   {U32} iv110 (n30, blue_output, vss, vdd);
   {U33} na310 (x_input_6_0_3, n31, n32, n30, vss, vdd);
   {U34} no310 (x_input_6_0_4, x_input_6_0_6, x_input_6_0_5, n32, vss, vdd);
   {U35} na310 (n33, n34, n35, n31, vss, vdd);
   {U36} mu111 (n36, n37, n38, n35, vss, vdd);
   {U37} na210 (n39, n40, n37, vss, vdd);
   {U38} no310 (n41, n42, n43, n40, vss, vdd);
   {U39} ex210 (n44, n45, n43, vss, vdd);
   {U40} ex210 (y_input_5_0_4, n46, n45, vss, vdd);
   {U41} ex210 (n47, n48, n42, vss, vdd);
   {U42} no210 (n46, n44, n47, vss, vdd);
   {U43} na210 (n49, position_5_0_3, n44, vss, vdd);
   {U44} iv110 (n50, n41, vss, vdd);
   {U45} no210 (n51, x_input_6_0_1, n50, vss, vdd);
   {U46} ex210 (n52, n49, n51, vss, vdd);
   {U47} no310 (n53, n54, n55, n39, vss, vdd);
   {U48} ex210 (x_input_6_0_2, x_input_6_0_0, n55, vss, vdd);
   {U49} ex210 (y_input_5_0_2, n56, n54, vss, vdd);
   {U50} no210 (n57, n49, n56, vss, vdd);
   {U51} no210 (n58, n59, n49, vss, vdd);
   {U52} no210 (position_5_0_2, n60, n57, vss, vdd);
   {U53} iv110 (n58, n60, vss, vdd);
   {U54} mu111 (n61, n62, n63, n53, vss, vdd);
   {U55} ex210 (position_5_0_1, position_5_0_0, n62, vss, vdd);
   {U56} na310 (n64, n65, n66, n36, vss, vdd);
   {U57} no210 (n67, n68, n66, vss, vdd);
   {U58} ex210 (n69, n70, n68, vss, vdd);
   {U59} no210 (n71, n72, n69, vss, vdd);
   {U60} ex210 (n73, n52, n67, vss, vdd);
   {U61} no210 (n59, n71, n73, vss, vdd);
   {U62} ex210 (n74, n48, n65, vss, vdd);
   {U63} na210 (n75, position_5_0_1, n74, vss, vdd);
   {U64} mu111 (n76, n77, position_5_0_1, n64, vss, vdd);
   {U65} no210 (y_input_5_0_1, n78, n77, vss, vdd);
   {U66} no210 (n79, n63, n76, vss, vdd);
   {U67} iv110 (y_input_5_0_1, n63, vss, vdd);
   {U68} na210 (x_input_6_0_2, n80, n34, vss, vdd);
   {U69} na210 (n81, n82, n80, vss, vdd);
   {U70} na210 (n83, n84, n82, vss, vdd);
   {U71} no310 (n85, n86, n87, n84, vss, vdd);
   {U72} ex210 (n88, n79, n87, vss, vdd);
   {U73} ex210 (n61, y_input_5_0_1, n85, vss, vdd);
   {U74} na210 (n88, n58, n61, vss, vdd);
   {U75} na210 (position_5_0_1, position_5_0_0, n58, vss, vdd);
   {U76} no310 (n89, n90, n91, n83, vss, vdd);
   {U77} ex210 (n92, n70, n91, vss, vdd);
   {U78} no210 (n93, n72, n92, vss, vdd);
   {U79} iv110 (n94, n90, vss, vdd);
   {U80} ex210 (n95, n48, n94, vss, vdd);
   {U81} na210 (n75, n88, n95, vss, vdd);
   {U82} iv110 (n93, n88, vss, vdd);
   {U83} no210 (n46, n72, n75, vss, vdd);
   {U84} na210 (position_5_0_3, position_5_0_2, n72, vss, vdd);
   {U85} iv110 (position_5_0_4, n46, vss, vdd);
   {U86} ex210 (n96, n52, n89, vss, vdd);
   {U87} no210 (n93, n59, n96, vss, vdd);
   {U88} no210 (position_5_0_0, position_5_0_1, n93, vss, vdd);
   {U89} na310 (n97, x_input_6_0_0, x_input_6_0_1, n33, vss, vdd);
   {U90} iv110 (n81, n97, vss, vdd);
   {U91} na310 (n98, n86, n99, n81, vss, vdd);
   {U92} no310 (n70, n52, n48, n99, vss, vdd);
   {U93} ex210 (y_input_5_0_5, position_5_0_5, n48, vss, vdd);
   {U94} ex210 (y_input_5_0_3, position_5_0_3, n52, vss, vdd);
   {U95} ex210 (y_input_5_0_4, position_5_0_4, n70, vss, vdd);
   {U96} iv110 (n38, n86, vss, vdd);
   {U97} ex210 (position_5_0_0, y_input_5_0_0, n38, vss, vdd);
   {U98} no210 (n100, n79, n98, vss, vdd);
   {U99} iv110 (n78, n79, vss, vdd);
   {U100} ex210 (y_input_5_0_2, n59, n78, vss, vdd);
   {U101} iv110 (position_5_0_2, n59, vss, vdd);
   {U102} no210 (y_input_5_0_1, n71, n100, vss, vdd);
   {U103} iv110 (position_5_0_1, n71, vss, vdd);
}



