extern network Posnew (terminal position_old_5_0_5, position_old_5_0_4, position_old_5_0_3, position_old_5_0_2, position_old_5_0_1, position_old_5_0_0, button, position_new_5_0_5, position_new_5_0_4, position_new_5_0_3, position_new_5_0_2, position_new_5_0_1, position_new_5_0_0, vss, vdd)
network posnew_tmp (terminal position_old_5_0_4, position_old_5_0_3, position_old_5_0_2, position_old_5_0_1, position_old_5_0_0, button, position_new_5_0_5, position_new_5_0_4, position_new_5_0_3, position_new_5_0_2, position_new_5_0_1, position_new_5_0_0, vss, vdd)
{
   {inst_c}  Posnew (node_in, position_old_5_0_4, position_old_5_0_3, position_old_5_0_2, position_old_5_0_1, position_old_5_0_0, button, position_new_5_0_5, position_new_5_0_4, position_new_5_0_3, position_new_5_0_2, position_new_5_0_1, position_new_5_0_0, vss, vdd);
   {inst_ri} res 5 (node_in, vdd);
   {inst_ro} res 5 (node_out, vdd);
}
