-- II.a.2 Synthèse d’un additionneur complet 1-bit – Instanciation d’un composant en VHDL
-- 1. Pour réaliser un additionneur complet à partir de deux demi-additionneurs il faut utiliser deux demi-additionneurs et un circuit logique pour gérer la retenue.

--Librairies

library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity full_adder is
    port (
         A : in std_logic;
         B : in std_logic;
         Cin : in std_logic;
         S : out std_logic;
         Cout : out std_logic
    );
end full_adder;


architecture behavioral of full_adder is

signal S1,S2,C1, C2 : std_logic;

begin
    -- Premier demi-additionneur
    half_adder1: entity work.demi_additionneur port map(
        A => A,
        B => B,
        S => S1,
        C => C1
    );

    -- Deuxième demi-additionneur
    half_adder2: entity work.demi_additionneur port map(
        A => S1,
        B => CIN,
        S => S2,
        C => C2
    );

    -- Calcul de la retenue finale
    S <= S2 ;
    Cout <= C1 or C2;

end behavioral;