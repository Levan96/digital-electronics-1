library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------
-- Entity declaration for 4-bit binary comparator
------------------------------------------------------------------------
entity multiplexor is
    port(
        a_i           : in  std_logic_vector(4 - 1 downto 0);
		b_i           : in  std_logic_vector(4 - 1 downto 0);   							
		B_greater_A_o : out std_logic;
        B_equals_A_o  : out std_logic;
        B_less_A_o    : out std_logic       
    );
end entity multiplexor;

------------------------------------------------------------------------
-- Architecture body for 4-bit binary comparator
------------------------------------------------------------------------
architecture Behavioral of multiplexor is
begin
    B_greater_A_o 	 <= '1' when (b_i > a_i) else '0';
    B_equals_A_o 	 <= '1' when (b_i = a_i) else '0';
    B_less_A_o		 <= '1' when (b_i < a_i) else '0';
    
end architecture Behavioral;