library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_8bit is
    Port ( in0 : in STD_LOGIC_VECTOR (7 downto 0);
           in1 : in STD_LOGIC_VECTOR (7 downto 0);
           s : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (7 downto 0));
end mux2_8bit;

architecture Behavioral of mux2_8bit is
constant delay: Time := 1 ns;
begin
Z <=in0 after delay when s='0'
else in1 after delay when s='1'
else "UUUUUUUU" after delay;
end Behavioral;
