-- Code your design here

library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Compuerta1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           F : out STD_LOGIC
    );
end Compuerta1;

architecture Behavioral of Compuerta1 is

begin
  
  F <= A and B;

end Behavioral;