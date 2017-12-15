extern network vga_controller (terminal pixel_clk, reset, h_sync, v_sync, 
                                        disp_ena, column_7_0_7, column_7_0_6, 
                                        column_7_0_5, column_7_0_4, 
                                        column_7_0_3, column_7_0_2, 
                                        column_7_0_1, column_7_0_0, row_9_0_9, 
                                        row_9_0_8, row_9_0_7, row_9_0_6, 
                                        row_9_0_5, row_9_0_4, row_9_0_3, 
                                        row_9_0_2, row_9_0_1, row_9_0_0, shz, 
                                        vss, vdd)
extern network divider (terminal disp_ena, row_9_0_9, row_9_0_8, row_9_0_7, 
                                 row_9_0_6, row_9_0_5, row_9_0_4, row_9_0_3, 
                                 row_9_0_2, row_9_0_1, row_9_0_0, column_7_0_7, 
                                 column_7_0_6, column_7_0_5, column_7_0_4, 
                                 column_7_0_3, column_7_0_2, column_7_0_1, 
                                 column_7_0_0, shz, reset, clk, xv_5_0_5, 
                                 xv_5_0_4, xv_5_0_3, xv_5_0_2, xv_5_0_1, 
                                 xv_5_0_0, yv_4_0_4, yv_4_0_3, yv_4_0_2, 
                                 yv_4_0_1, yv_4_0_0, tick, vss, vdd)
extern network helicopter (terminal clk, reset, x_input_5_0_5, x_input_5_0_4, 
                                    x_input_5_0_3, x_input_5_0_2, 
                                    x_input_5_0_1, x_input_5_0_0, 
                                    y_input_4_0_4, y_input_4_0_3, 
                                    y_input_4_0_2, y_input_4_0_1, 
                                    y_input_4_0_0, button, count, enable, blue, 
                                    vss, vdd)
network vga_tb (terminal vss, vdd)
{
   {L1} vga_controller (X_Logic0_port, X_Logic1_port, n_1000, n_1001, disp_ena, 
                        x_7_port, x_6_port, x_5_port, x_4_port, x_3_port, 
                        x_2_port, x_1_port, x_0_port, y_9_port, y_8_port, 
                        y_7_port, y_6_port, y_5_port, y_4_port, y_3_port, 
                        y_2_port, y_1_port, y_0_port, shz, vss, vdd);
   {L2} divider (disp_ena, y_9_port, y_8_port, y_7_port, y_6_port, y_5_port, 
                 y_4_port, y_3_port, y_2_port, y_1_port, y_0_port, x_7_port, 
                 x_6_port, x_5_port, x_4_port, x_3_port, x_2_port, x_1_port, 
                 x_0_port, shz, X_Logic1_port, X_Logic0_port, xv_5_port, 
                 xv_4_port, xv_3_port, xv_2_port, xv_1_port, xv_0_port, 
                 yv_4_port, yv_3_port, yv_2_port, yv_1_port, yv_0_port, tick, 
                 vss, vdd);
   {L3} helicopter (X_Logic0_port, X_Logic1_port, xv_5_port, xv_4_port, 
                    xv_3_port, xv_2_port, xv_1_port, xv_0_port, yv_4_port, 
                    yv_3_port, yv_2_port, yv_1_port, yv_0_port, X_Logic0_port, 
                    tick, X_Logic1_port, n_1002, vss, vdd);
   net {X_Logic1_port, vdd};
   net {X_Logic0_port, vss};
}



