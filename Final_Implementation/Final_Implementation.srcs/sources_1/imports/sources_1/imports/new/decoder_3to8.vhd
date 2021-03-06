library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_3to8 is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC;
           Q3 : out STD_LOGIC;
           Q4 : out STD_LOGIC;
           Q5 : out STD_LOGIC;
           Q6 : out STD_LOGIC;
           Q7 : out STD_LOGIC);
end decoder_3to8;

architecture Behavioral of decoder_3to8 is
constant delay: Time := 1 ns;
begin
Q0<=((not A0) and (not A1) and (not A2)) after delay;
Q1<=((not A0) and (not A1) and (A2)) after delay;
Q2<=((not A0) and (A1) and (not A2)) after delay;
Q3<=((not A0) and (A1) and (A2)) after delay;
Q4<=((A0) and (not A1) and (not A2)) after delay;
Q5<=((A0) and (not A1) and (A2)) after delay;
Q6<=((A0) and (A1) and (not A2)) after delay;
Q7<=((A0) and (A1) and (A2)) after delay;
end Behavioral;
