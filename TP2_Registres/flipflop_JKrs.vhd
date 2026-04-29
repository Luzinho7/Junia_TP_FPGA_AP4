-- I.a.2 Rappel du fonctionnelment de la bascule JK avec entrées asynchrones

-- Table caractéristique :
-- +------+------+-----+---+---++----+-----+
-- | SETn | RSTn | CLK | J | K  Q+ | Qn+ |
-- +------+------+-----+---+---++----+-----+
-- |  0   |  1   |  X  | X | X | 1  |  0  |  SET asynchrone
-- |  1   |  0   |  X  | X | X | 0  |  1  |  RESET asynchrone
-- |  1   |  1   |  ^  | 0 | 0 | Q  |  Qn |  Mémorisation
-- |  1   |  1   |  ^  | 0 | 1 | 0  |  1  |  Reset
-- |  1   |  1   |  ^  | 1 | 0 | 1  |  0  |  Set
-- |  1   |  1   |  ^  | 1 | 1 | Qn	|  Q  |	 Toggle
-- +------+------+-----+---+---++----+-----+

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity flipflop_JKrs is
    port (
        J    : in  std_logic;
        K    : in  std_logic;
        CLK  : in  std_logic;
        SETn : in  std_logic;
        RSTn : in  std_logic;
        Q    : out std_logic;
        Qn   : out std_logic
    );
end entity;

architecture behavioral of flipflop_JKrs is
    signal Q_int : std_logic := '0';
begin
    process(CLK, SETn, RSTn)
    begin
        
        if (RSTn = '0') then
            Q_int <= '0';
        elsif (SETn = '0') then
            Q_int <= '1';
        elsif (CLK'event and CLK = '1') then
            if    (J = '0' and K = '0') then
                Q_int <= Q_int;
            elsif (J = '0' and K = '1') then
                Q_int <= '0';
            elsif (J = '1' and K = '0') then
                Q_int <= '1';
            else
                Q_int <= not Q_int;
            end if;
        end if;
    end process;

    Q  <= Q_int;
    Qn <= not Q_int;

end behavioral;