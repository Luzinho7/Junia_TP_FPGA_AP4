-- Exercices 2.a.1 --
-- Les opérations logiques permettant de calculer S et C en fonction de A et B sont XOR pour la somme entre A et B et AND pour la retenue entre A et B. 

--Librairies


library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity demi_additionneur is
    port (
         A : in std_logic;
         B : in std_logic;
         S : out std_logic;
         C : out std_logic
    );
end demi_additionneur;

architecture behavioral of demi_additionneur is
begin

    S <= A xor B;
    C <= A and B;

end behavioral;