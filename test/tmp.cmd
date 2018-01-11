set vdd = h*~
set vss = l*~
set position_new_5_0_0 = (l*4096 h*4096)*1
set position_new_5_0_1 = (l*2048 h*2048)*2
set position_new_5_0_2 = (l*1024 h*1024)*4
set position_new_5_0_3 = (l*512 h*512)*8
set position_new_5_0_4 = (l*256 h*256)*16
set position_new_5_0_5 = (l*128 h*128)*32
set button = (l*64 h*64)*64
set position_old_5_0_0 = (l*32 h*32)*128
set position_old_5_0_1 = (l*16 h*16)*256
set position_old_5_0_2 = (l*8 h*8)*512
set position_old_5_0_3 = (l*4 h*4)*1024
set position_old_5_0_4 = (l*2 h*2)*2048

option level   = 3
option sigunit = 1e-7
option outacc  = 10n

print node_in, node_out, position_old_5_0_4, position_old_5_0_3, position_old_5_0_2, position_old_5_0_1, position_old_5_0_0, button, position_new_5_0_5, position_new_5_0_4, position_new_5_0_3, position_new_5_0_2, position_new_5_0_1, position_new_5_0_0
plot  node_in, node_out, position_old_5_0_4, position_old_5_0_3, position_old_5_0_2, position_old_5_0_1, position_old_5_0_0, button, position_new_5_0_5, position_new_5_0_4, position_new_5_0_3, position_new_5_0_2, position_new_5_0_1, position_new_5_0_0

/*
*%
tfall 2.0n
trise 2.0n
tstep 1n
*%
.options cptime = 500
*%
*/
