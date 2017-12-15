extern network posnew (terminal position_old_4_0_4, position_old_4_0_3, 
                                position_old_4_0_2, position_old_4_0_1, 
                                position_old_4_0_0, button, position_new_4_0_4, 
                                position_new_4_0_3, position_new_4_0_2, 
                                position_new_4_0_1, position_new_4_0_0, vss, 
                                vdd)
extern network pos (terminal clk, reset, enable, count, position_new_4_0_4, 
                             position_new_4_0_3, position_new_4_0_2, 
                             position_new_4_0_1, position_new_4_0_0, 
                             position_old_4_0_4, position_old_4_0_3, 
                             position_old_4_0_2, position_old_4_0_1, 
                             position_old_4_0_0, vss, vdd)
extern network draw (terminal x_input_3_0_3, x_input_3_0_2, x_input_3_0_1, 
                              x_input_3_0_0, y_input_4_0_4, y_input_4_0_3, 
                              y_input_4_0_2, y_input_4_0_1, y_input_4_0_0, 
                              position_4_0_4, position_4_0_3, position_4_0_2, 
                              position_4_0_1, position_4_0_0, blue_output, vss, 
                              vdd)
network helicopter (terminal clk, reset, x_input_5_0_5, x_input_5_0_4, 
                             x_input_5_0_3, x_input_5_0_2, x_input_5_0_1, 
                             x_input_5_0_0, y_input_4_0_4, y_input_4_0_3, 
                             y_input_4_0_2, y_input_4_0_1, y_input_4_0_0, 
                             button, count, enable, blue, vss, vdd)
{
   {lbl0} posnew (position_old_4_port, position_old_3_port, 
                  position_old_2_port, position_old_1_port, 
                  position_old_0_port, button, position_new_4_port, 
                  position_new_3_port, position_new_2_port, 
                  position_new_1_port, position_new_0_port, vss, vdd);
   {lbl1} pos (clk, reset, enable, count, position_new_4_port, 
               position_new_3_port, position_new_2_port, position_new_1_port, 
               position_new_0_port, position_old_4_port, position_old_3_port, 
               position_old_2_port, position_old_1_port, position_old_0_port, 
               vss, vdd);
   {lbl2} draw (x_input_5_0_5, x_input_5_0_4, x_input_5_0_3, x_input_5_0_2, 
                y_input_4_0_4, y_input_4_0_3, y_input_4_0_2, y_input_4_0_1, 
                y_input_4_0_0, position_old_4_port, position_old_3_port, 
                position_old_2_port, position_old_1_port, position_old_0_port, 
                blue, vss, vdd);
}



