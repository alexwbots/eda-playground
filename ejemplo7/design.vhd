-- Code your design here
library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Registro1 is
  Port ( clk, reset : in STD_LOGIC;
         Salida : out STD_LOGIC_VECTOR (7 downto 0)
  );
end Registro1;

architecture Behavioral of Registro1 is

signal D, Q : STD_LOGIC_VECTOR (7 downto 0);

begin
  
process (clk)
begin
  if clk'event  and clk='1' then
    if reset = '1' then
      Q <= (others => '0');
    else
      Q <= D;
    end if;
  end if;
end process;

-- El numero 45 es 2D Hexadecimal y 101101 en binario
D <= "00000000" when Q = "00101101" else  
     Q-1;

Salida <= Q;
  
end Behavioral;
