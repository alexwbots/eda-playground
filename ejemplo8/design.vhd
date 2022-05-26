-- Code your design here
library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Main is
  Port ( a_alu, b_alu : in STD_LOGIC_VECTOR (3 downto 0);
         sel_alu : in STD_LOGIC;
         F_alu : out STD_LOGIC_VECTOR (3 downto 0)
  );
end Main;

architecture Behavioral of Main is

component sumador
  Port ( A, B : in STD_LOGIC_VECTOR (3 downto 0);
         F : out STD_LOGIC_VECTOR (3 downto 0)
  );
end component;

component restador
  Port ( A, B : in STD_LOGIC_VECTOR (3 downto 0);
         F : out STD_LOGIC_VECTOR (3 downto 0)
  );
end component;

component multiplexor
  Port ( I0, I1 : in STD_LOGIC_VECTOR (3 downto 0);
         sel : in STD_LOGIC;
         F_mux : out STD_LOGIC_VECTOR (3 downto 0)
  );
end component;

signal suma, resta : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');

begin
  
U0: sumador Port map (
  A => a_alu,
  B => b_alu,
  F => suma
);

U1: restador Port map (
  A => a_alu,
  B => b_alu,
  F => resta
);

U2: multiplexor Port map (
  I0 => suma,
  I1 => resta,
  sel => sel_alu,
  F_mux => F_alu
);

end Behavioral;