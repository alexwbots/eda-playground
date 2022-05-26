-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity Simulacion is

end Simulacion;

architecture Behavioral of Simulacion is

component Main
  Port ( a_alu, b_alu : in STD_LOGIC_VECTOR (3 downto 0);
         sel_alu : in STD_LOGIC;
         F_alu : out STD_LOGIC_VECTOR (3 downto 0)
  );
end component;

-- Señal de entrada
signal a_alu, b_alu : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal sel_alu : STD_LOGIC := '0';
-- Señal de salida
signal F_alu : STD_LOGIC_VECTOR (3 downto 0);

begin

U0: Main Port map (
  a_alu => a_alu,
  b_alu => b_alu,
  sel_alu => sel_alu,
  F_alu => F_alu
);

process begin
  wait for 100 ns;
  
  sel_alu <= '0';
  a_alu <= "1100";
  b_alu <= "0111";
  wait for 100 ns;
  
  sel_alu <= '1';
  wait for 100 ns;
  
  sel_alu <= '0';
  a_alu <= "1101";
  b_alu <= "1011";
  wait for 100 ns;
  
  wait;
end process;

end Behavioral;