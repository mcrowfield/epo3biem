library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pos is
    port
      (
      clk : in std_logic;
      reset : in std_logic;
      enable : in std_logic;
      count : in std_logic;
      position_new : in std_logic_vector (5 downto 0);
      position_old : out std_logic_vector (5 downto 0)
      );
end pos;

architecture statemachine of pos is
  type statetype is (resets, holds, adds);
  signal state, next_state : statetype := resets;
  begin
    process (state, count) is 
      begin
        case state is 
          when resets =>    
            next_state <= holds;
          when holds =>
            if (count = '1') then
              next_state <= adds;
            else
              next_state <= holds;
            end if;
          when adds =>
            next_state <= holds;
          end case;
        end process;

process is
	begin
		wait until clk'event and clk='1';
		case state is
			when resets =>
				position_old <= "100000";
			when holds =>
			when adds =>
				position_old <= position_new;
			end case;
end process;
			
			      

process is
        begin
        wait until clk'event and clk='1';
        if (enable = '1') then
          state <= resets;
        else
          state <= next_state;
        end if;
      end process;  
    end statemachine;




