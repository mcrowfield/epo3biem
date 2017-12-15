library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity helicopter is 
  port (
        clk     : in std_logic;
        reset   : in std_logic;
        x_input : in std_logic_vector (6 downto 0);
        y_input : in std_logic_vector (5 downto 0);
        button  : in std_logic;
        count   : in std_logic;
        enable  : in std_logic;
        blue    : out std_logic
        );
end helicopter;

architecture toplevel of helicopter is 
  
  component posnew is
    port
      (
      position_old : in std_logic_vector (4 downto 0);
      button       : in std_logic;
      position_new : out std_logic_vector (4 downto 0)
      );
  end component posnew;
  
  component pos is
    port
      (
      clk : in std_logic;
      reset : in std_logic;
      enable : in std_logic;
      count : in std_logic;
      position_new : in std_logic_vector (4 downto 0);
      position_old : out std_logic_vector (4 downto 0)
      );
  end component pos;
  
  component draw is 
    port
      (
      x_input : in std_logic_vector (6 downto 0);
      y_input : in std_logic_vector (5 downto 0);
      position : in std_logic_vector (4 downto 0);
      blue_output : out std_logic
      );
  end component draw; 
  
  signal position_new, position_old: std_logic_vector (4 downto 0);
  
  begin
    
    lbl0: posnew port map (position_old,
                         button,
                         position_new
                       );
                       
    lbl1: pos port map (clk,
                       reset,
                       enable,
                       count,
                       position_new,
                       position_old
                     );
                     
    lbl2: draw port map (x_input,
                       y_input,
                       position_old,
                       blue
                     );
end architecture toplevel;








