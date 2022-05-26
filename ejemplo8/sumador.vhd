library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity sumador is
  Port ( A, B : in STD_LOGIC_VECTOR (3 downto 0);
         F : out STD_LOGIC_VECTOR (3 downto 0)
  );
end sumador;

architecture Behavioral of sumador is

begin

F <= A + B;

end Behavioral;