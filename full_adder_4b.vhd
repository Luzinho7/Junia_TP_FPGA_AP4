--Exercice 2.a.3
--Un additionneur à retenue propagée est un circuit logique utilisé dans les ordinateurs pour effectuer des additions. Voici quelques points clés :
--Fonctionnement : L'additionneur à retenue propagée utilise une retenue qui est propagée à travers tous les étages d'addition.
--Retenue : La retenue est générée lorsque la somme de deux bits dépasse 1. Elle est ensuite propagée à l'étage suivant pour être ajoutée aux bits suivants.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Full_additionneur_4bits is
    port (
        A : in std_logic_vector(3 downto 0);
        B : in std_logic_vector(3 downto 0);
        Cin : in std_logic;
        S : out std_logic_vector(3 downto 0);
        Cout : out std_logic
    );
end Full_additionneur_4bits;

architecture Behavioral of Full_additionneur_4bits is
    signal C : std_logic_vector(3 downto 0);
begin
    full_add: entity work.full_adder
        port map (
            A => A(0),
            B => B(0),
            Cin => Cin,
            S => S(0),
            Cout => C(0)
        );
    Full_add2: entity work.full_adder
        port map (
            A => A(1),
            B => B(1),
            Cin => C(0),
            S => S(1),
            Cout => C(1)
        );
    Full_add3: entity work.full_adder
        port map (
            A => A(2),
            B => B(2),
            Cin => C(1),
            S => S(2),
            Cout => C(2)
        );
    Full_add4: entity work.full_adder
        port map (
            A => A(3),
            B => B(3),
            Cin => C(2),
            S => S(3),
            Cout => C(3)
        );
end Behavioral;