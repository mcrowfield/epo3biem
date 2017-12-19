set link_library [list "*" "./ADB/divider.ddc" "./ADB/draw.ddc" "./ADB/helicopter.ddc" "./ADB/pos.ddc" "./ADB/posnew.ddc" "./ADB/vga_tb.ddc" "/data/public/common/software/opprog/synth_libs/g_digilib5_99.db" "/data/public/common/software/opprog/synth_libs/g_analib8_00.db" "/data/public/common/software/opprog/synth_libs/buffers.db"]

read_file -f ddc ./ADB/vga_controller.ddc
set designer mapostma
set company TU-Delft
start_gui
gui_create_schematic
# Use 'Schematic -> Move Down' to see contents of a block
# To quit: click File -> Exit in Design Vision window
# or type quit in dc_shell window
