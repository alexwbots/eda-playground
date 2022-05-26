-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity Simulacion is

end Simulacion;

architecture Behavioral of Simulacion is

Component Compuerta1 is
    Port( A : in STD_LOGIC;
          B : in STD_LOGIC;
          C : in STD_LOGIC;
          F : out STD_LOGIC
    );
end Compuerta1;

signal A_s, B_s, C_s : STD_LOGIC:='0'; -- Señal de entrada
signal F_s : STD_LOGIC; -- Señal de salida

begin

U0: Compuerta1 Port map (
    A => A_s,
    B => B_s,
    C => C_s,
    F => F_s
);

process begin
    -- Entradas durante 50 ns 
    A_s <= '0';
    B_s <= '0';
    C_s <= '0';
    wait for 50 ns;

    -- Entradas durante 50 ns 
    A_s <= '1';
    B_s <= '0';
    C_s <= '0';
    wait for 50 ns;
    
    -- Entradas durante 50 ns 
    A_s <= '0';
    B_s <= '1';
    C_s <= '0';
    wait for 50 ns;
    
    -- Entradas durante 50 ns 
    A_s <= '1';
    B_s <= '1';
    C_s <= '0';
    wait for 50 ns;

    -- Entradas durante 50 ns 
    A_s <= '0';
    B_s <= '0';
    C_s <= '1';
    wait for 50 ns;
    
    -- Entradas durante 50 ns 
    A_s <= '1';
    B_s <= '1';
    C_s <= '1';
    wait for 50 ns;    
    
    wait;
end process;

end Behavioral;