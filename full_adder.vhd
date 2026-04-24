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

signal S1, C1, C2 : std_logic;

begin
    -- Premier demi-additionneur
    S1 <= A xor B;
    C1 <= A and B;

    -- Deuxième demi-additionneur
    S <= S1 xor Cin;
    C2 <= S1 and Cin;

    -- Calcul de la retenue finale
    Cout <= C1 or C2;

end behavioral;