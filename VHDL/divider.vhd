-----------------------------------------------------------------------------------------
-- Created by Rik van der Hoorn and Marco Postma for use in EPO-3 'Design a Chip' '17-'18
-----------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY divider IS
  PORT(
    disp_ena :  IN   STD_LOGIC;            --display enable ('1' = display time, '0' = blanking time)
    row      :  IN   STD_LOGIC_VECTOR(9 downto 0);  --row pixel coordinate
    column   :  IN   STD_LOGIC_VECTOR(7 downto 0);  --column pixel coordinate
	shz	     :  IN   STD_LOGIC;            --vsync in to generate game tick
	reset	 :  IN   STD_LOGIC;
	clk      :  IN   STD_LOGIC;
    xv	     :  OUT	 STD_LOGIC_VECTOR(6 downto 0);
    yv       :  OUT	 STD_LOGIC_VECTOR(5 downto 0);
    tick     :  OUT  STD_LOGIC);
END divider;



library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

ARCHITECTURE behavior OF divider IS

signal xvt     :  STD_LOGIC_VECTOR(7 downto 0);
signal yvt     :  STD_LOGIC_VECTOR(9 downto 0);
signal v_count :  UNSIGNED(1 downto 0);

BEGIN

  PROCESS(disp_ena, row, column)
  BEGIN

	IF(disp_ena = '1') THEN
	  xvt <= column; 
	  yvt <= row; 
	ELSE 
	  xvt <= "00000000";
	  yvt <= "0000000000";
	END IF;
  
  END PROCESS;

  xv   <= xvt(7 downto 1);
  yv   <= yvt(8 downto 3);


  PROCESS(clk) 
  BEGIN
	IF(rising_edge(clk)) THEN
	  IF(reset = '0') THEN
		IF(shz = '1') THEN
	  	  v_count <= v_count + 1;
		ELSE
	  	  v_count <= v_count;
		END IF;
	  ELSE 
		v_count <= "00";
	  END IF;
	END IF;
  END PROCESS;

  tick <= (v_count(0) AND shz);
  

END behavior;
