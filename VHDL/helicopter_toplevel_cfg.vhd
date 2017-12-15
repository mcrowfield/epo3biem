configuration helicopter_toplevel_cfg of helicopter is
   for toplevel
      for all: posnew use configuration work.posnew_nextcopter_cfg;
      end for;
      for all: pos use configuration work.pos_statemachine_cfg;
      end for;
      for all: draw use configuration work.draw_renderer_cfg;
      end for;
   end for;
end helicopter_toplevel_cfg;


