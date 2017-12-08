----------------------------------------------
--
-- Made by Rik van den Hoorn and Marco Postma
-- for use in EPO-3 'Design a chip'
--
-- Date: 28-11-2017
--
----------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity vga_tb is
end entity vga_tb;

architecture behavioural of vga_tb is
  
component vga_controller IS
  PORT(
    pixel_clk :  IN   STD_LOGIC;  --pixel clock at frequency of VGA mode being used
    reset     :  IN   STD_LOGIC;  --active high asycnchronous reset
    h_sync    :  OUT  STD_LOGIC;  --horiztonal sync pulse
    v_sync    :  OUT  STD_LOGIC;  --vertical sync pulse
    disp_ena  :  OUT  STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
	shz	 	  :  OUT  STD_LOGIC;
    column    :  OUT  STD_LOGIC_VECTOR(7 downto 0);    --horizontal pixel coordinate
    row       :  OUT  STD_LOGIC_VECTOR(9 downto 0));   --vertical pixel coordinate
end component vga_controller;

component divider IS
  PORT(
    disp_ena :  IN   STD_LOGIC;            --display enable ('1' = display time, '0' = blanking time)
    row      :  IN   STD_LOGIC_VECTOR(9 downto 0);  --row pixel coordinate
    column   :  IN   STD_LOGIC_VECTOR(7 downto 0);  --column pixel coordinate
	reset	 :  IN   STD_LOGIC;
	clk      :  IN   STD_LOGIC;
	shz	 	 :  IN   STD_LOGIC;
    xv	     :  OUT	 STD_LOGIC_VECTOR(5 downto 0);
    yv       :  OUT	 STD_LOGIC_VECTOR(4 downto 0);
    tick     :  OUT  STD_LOGIC);
end component divider;

component helicopter is 
  port (
        clk     : in std_logic;
        reset   : in std_logic;
        x_input : in std_logic_vector (5 downto 0);
        y_input : in std_logic_vector (4 downto 0);
        button  : in std_logic;
        count   : in std_logic;
        enable  : in std_logic;
        blue    : out std_logic
        );
end component helicopter;


signal clk, reset, disp_ena, hsync, vsync, shz, tick, button, enable, blue_out: STD_LOGIC;
signal x:  STD_LOGIC_VECTOR(7 downto 0);
signal xv: STD_LOGIC_VECTOR(5 downto 0);
signal y:  STD_LOGIC_VECTOR(9 downto 0);
signal yv: STD_LOGIC_VECTOR(4 downto 0);
signal v_count :  UNSIGNED(1 downto 0);


begin
  
  clk <= '0', '1' after 81 ns when clk /= '1' else '0' after 81 ns;
  reset <= '1', '0' after 320 ns;
  button <= '0';
  enable <= '1', '0' after 30 ms;
  
L1: vga_controller port map(pixel_clk => clk, reset => reset, h_sync => hsync, v_sync => vsync, 
                            disp_ena => disp_ena, column => x, row => y, shz => shz);
L2: divider port map(disp_ena => disp_ena, row => y, column => x, xv => xv,
                                yv => yv, tick => tick, shz => shz, reset => reset, clk => clk);
L3: helicopter port map(clk => clk, reset => reset, x_input => xv, y_input => yv, button => button, count => tick, enable => enable,
				blue => blue_out);
                                
end architecture behavioural;

