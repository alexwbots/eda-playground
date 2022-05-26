-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity Simulacion is

end Simulacion;

architecture Behavioral of Simulacion is

Component Multiplexor is
  Port( In1, In2, In3, In4 : in STD_LOGIC_VECTOR (7 downto 0);
        Seleccion : in STD_LOGIC_VECTOR (1 downto 0);
        Salida : out STD_LOGIC_VECTOR (7 downto 0)
  );
end Multiplexor;

-- Señal de entrada
signal In1, In2, In3, In4 : STD_LOGIC_VECTOR (7 downto 0) := (others => '0'); 
signal Seleccion : STD_LOGIC_VECTOR (1 downto 0) := "00";
-- Señal de salida
signal Salida : STD_LOGIC_VECTOR (7 downto 0);

begin

U0: Multiplexor Port map (
    In1 => In1,
    In2 => In2,
    In3 => In3,
    In4 => In4,
    Seleccion => Seleccion,
    Salida => Salida
);

process begin
    wait for 50 ns;

    -- Entradas durante 50 ns 
    In1 <= "10001111";
    In2 <= "01001111";
    In3 <= "00101111";
    In4 <= "00011111";
    Seleccion <= "00";
    wait for 50 ns;
    
    -- Entradas durante 50 ns 
    Seleccion <= "01";
    wait for 50 ns;
    
    -- Entradas durante 50 ns 
    Seleccion <= "10";
    wait for 50 ns;
    
    -- Entradas durante 50 ns 
    Seleccion <= "11";
    wait for 50 ns;
    
    wait;
end process;

end Behavioral;