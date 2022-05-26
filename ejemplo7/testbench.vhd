-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity Simulacion is

end Simulacion;

architecture Behavioral of Simulacion is

Component Registro1 is
  Port( clk, reset : in STD_LOGIC;
        Entrada : in STD_LOGIC_VECTOR (7 downto 0);
        Salida : out STD_LOGIC_VECTOR (7 downto 0)
  );
end component;

-- Señal de entrada
signal clk, reset : STD_LOGIC := '0';
signal Entrada : STD_LOGIC_VECTOR (7 downto 0) := (others => '0'); 
-- Señal de salida
signal Salida : STD_LOGIC_VECTOR (7 downto 0);

constant PERIOD : time := 10 ns;

begin

U0: Registro1 Port map (
  clk => clk,
  reset => reset,
  Entrada => Entrada,
  Salida => Salida
);

process begin
  clk <= '0';
  wait for PERIOD/2;
  clk <= '1';
  wait for PERIOD/2;
end process;

process begin
  wait for 100 ns;
  
  reset <= '1';
  wait for 20 ns;
  
  reset <= '0';
  wait for 20 ns;
  
  Entrada <= "11001100";
  wait for 100 ns;
  
  Entrada <= "11111100";
  wait for 100 ns;
  
  Entrada <= "10001100";
  wait for 100 ns;
  
  Entrada <= "11001111";
  wait for 100 ns;
  
  reset <= '1';
  wait for 20 ns;
  
  reset <= '0';
  wait for 20 ns;
end process;

end Behavioral;