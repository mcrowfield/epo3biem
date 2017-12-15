configuration vga_tb_behavioural_cfg of vga_tb is
   for behavioural
      for all: vga_controller use configuration work.vga_controller_behavior_cfg;
      end for;
      for all: divider use configuration work.divider_behavior_cfg;
      end for;
   end for;
end vga_tb_behavioural_cfg;


