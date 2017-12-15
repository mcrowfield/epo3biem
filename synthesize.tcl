#*********************************************************
#  synthesize script for cell: vga_tb                     *
#*********************************************************
set hdlin_vhdl_93 false
set hdlin_ff_always_async_set_reset true
set hdlin_ff_always_sync_set_reset true
set vhdlout_architecture_name "synthesised"
set vhdlout_use_packages {"ieee.std_logic_1164" "CellsLib.CellsLib_DECL_PACK"}
set company "ontwerp_practicum"
set designer "michaelkraaije"
set target_library  {"/data/public/common/software/opprog/synth_libs/g_digilib5_99.db"}
set link_library [list "*" "./ADB/divider.ddc" "./ADB/draw.ddc" "./ADB/pos.ddc" "./ADB/posnew.ddc" "./ADB/helicopter.ddc" "./ADB/vga_controller.ddc" "/data/public/common/software/opprog/synth_libs/g_digilib5_99.db" "/data/public/common/software/opprog/synth_libs/g_analib8_00.db" "/data/public/common/software/opprog/synth_libs/buffers.db"]
define_design_lib MY_LIB -path ./syn_work
define_design_lib CELLSLIB -path /data/public/common/software/opprog/synth_libs/CellsLib
read_file -format vhdl -work MY_LIB {VHDL/tb_divider.vhd }
set_dont_touch {helicopter divider vga_controller}
# following prevents the insertion of buffers.
set structcells [filter_collection [get_cells *] "is_hierarchical == true"]
set_dont_touch [get_nets -of_objects $structcells]
set_dont_touch {g_analib8_00/*}
# set_max_fanout 1.8 all_inputs() 
# set_max_area 1000 
set compile_preserve_subdesign_interfaces true
compile
ungroup -all -flat
report_area
report_fsm
write_file -f ddc vga_tb -output ./ADB/vga_tb.ddc
write_file -f vhdl vga_tb -output ./VHDL/vga_tb_SYNTH.vhd
quit


