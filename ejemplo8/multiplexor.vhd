library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity multiplexor is
  Port ( I0, I1 : in STD_LOGIC_VECTOR (3 downto 0);
         sel : in STD_LOGIC;
         F_mux : out STD_LOGIC_VECTOR (3 downto 0)
  );
end multiplexor;

architecture Behavioral of multiplexor is

begin

with sel select
  F_mux <= I0 when '0',
           I1 when others;

end Behavioral;