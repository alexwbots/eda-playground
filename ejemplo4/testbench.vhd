-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity Simulacion is

end Simulacion;

architecture Behavioral of Simulacion is

Component Deco2_4 is
  Port( Entrada : in STD_LOGIC_VECTOR (1 downto 0);
        Salida : out STD_LOGIC_VECTOR (3 downto 0)
  );
end Deco2_4;

-- Señal de entrada
signal Entrada : STD_LOGIC_VECTOR (1 downto 0) := (others => '0'); 
-- Señal de salida
signal Salida : STD_LOGIC_VECTOR (3 downto 0);

begin

U0: Deco2_4 Port map (
    Entrada => Entrada,
    Salida => Salida
);

process begin

    -- Entradas durante 50 ns 
    Entrada <= "00";
    wait for 50 ns;
    
    -- Entradas durante 50 ns 
    Entrada <= "01";
    wait for 50 ns;
    
    -- Entradas durante 50 ns 
    Entrada <= "10";
    wait for 50 ns;
    
    -- Entradas durante 50 ns 
    Entrada <= "11";
    wait for 50 ns;
    
    wait;
end process;

end Behavioral;