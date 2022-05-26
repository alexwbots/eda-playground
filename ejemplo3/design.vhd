-- Code your design here
library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Multiplexor is
  Port ( In1, In2, In3, In4 : in STD_LOGIC_VECTOR (7 downto 0);
         Seleccion : in STD_LOGIC_VECTOR (1 downto 0);
         Salida : out STD_LOGIC_VECTOR (7 downto 0)
  );
end Multiplexor;

architecture Behavioral of Multiplexor is

begin
  
  with Seleccion select
    Salida <= In1 when "00",
              In2 when "01",
              In3 when "10",
              In4 when "11",
              "00000000" when others;
  
end Behavioral;