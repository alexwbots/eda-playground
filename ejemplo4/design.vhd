-- Code your design here
library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Deco2_4 is
  Port ( Entrada : in STD_LOGIC_VECTOR (1 downto 0);
         Salida : out STD_LOGIC_VECTOR (3 downto 0)
  );
end Deco2_4;

architecture Behavioral of Deco2_4 is

begin
  
  with Entrada select
    Salida <= "0001" when "00",
              "0010" when "01",
              "0100" when "10",
              "1000" when "11",
              "1111" when others;
  
end Behavioral;