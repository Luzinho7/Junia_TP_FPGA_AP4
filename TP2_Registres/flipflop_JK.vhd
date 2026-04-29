-- Exercice 1.a.1 TP2 
-- Rappel fonctionnement de la bascule JK
-- Bascule JK 
--
-- Table caractéristique :
-- +---+---++----+-----+
-- | J | K  Q+ | Qn+ |
-- +---+---++----+-----+
-- | 0 | 0  Q  | Qn  |  Mémorisation
-- | 0 | 1  0  |  1  |  Reset
-- | 1 | 0  1  |  0  |  Set
-- | 1 | 1 || Qn |  Q  |  Basculement (Toggle)
-- +---+---++----+-----+

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity flipflop_JK is
    port (
        J   : in  std_logic;
        K   : in  std_logic;
        CLK : in  std_logic;
        Q   : out std_logic;
        Qn  : out std_logic
    );
end entity;

architecture behavioral of flipflop_JK is
    signal Q_int : std_logic := '0';
begin
    process(CLK)
    begin
        if (CLK'event and CLK = '1') then
            if    (J = '0' and K = '0') then
                Q_int <= Q_int;        -- Mémorisation
            elsif (J = '0' and K = '1') then
                Q_int <= '0';          -- Reset
            elsif (J = '1' and K = '0') then
                Q_int <= '1';          -- Set
            else
                Q_int <= not Q_int;    -- Toggle
            end if;
        end if;
    end process;

    Q  <= Q_int;
    Qn <= not Q_int;

end behavioral;