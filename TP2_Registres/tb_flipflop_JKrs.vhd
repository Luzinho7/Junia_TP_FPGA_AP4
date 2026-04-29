library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_flipflop_JKrs is
end tb_flipflop_JKrs;

architecture tb of tb_flipflop_JKrs is

    signal J    : std_logic := '0';
    signal K    : std_logic := '0';
    signal CLK  : std_logic := '0';
    signal SETn : std_logic := '1';
    signal RSTn : std_logic := '1';
    signal Q    : std_logic;
    signal Qn   : std_logic;

begin
    UUT : entity work.flipflop_JKrs
        port map (J => J, K => K, CLK => CLK,
                  SETn => SETn, RSTn => RSTn, Q => Q, Qn => Qn);

    stimuli : process
    begin
        -- === TEST RESET ASYNCHRONE ===
        -- RSTn actif → Q doit passer à 0 immédiatement
        SETn <= '1'; RSTn <= '0'; J <= '1'; K <= '0';
        wait for 10 ns;
        assert Q  = '0' report "Error #1 : Reset async - Q"  severity error;
        assert Qn = '1' report "Error #1 : Reset async - Qn" severity error;

        -- === TEST SET ASYNCHRONE ===
        -- SETn actif → Q doit passer à 1 immédiatement
        SETn <= '0'; RSTn <= '1'; J <= '0'; K <= '1';
        wait for 10 ns;
        assert Q  = '1' report "Error #2 : Set async - Q"  severity error;
        assert Qn = '0' report "Error #2 : Set async - Qn" severity error;

        -- === RELÂCHER LES ENTRÉES ASYNCHRONES ===
        -- Reset d'abord pour partir de Q=0
        SETn <= '1'; RSTn <= '0';
        wait for 10 ns;
        RSTn <= '1';
        wait for 5 ns;

        -- === TEST SYNCHRONE : Mémorisation (J=0, K=0) ===
        J <= '0'; K <= '0';
        CLK <= '1'; wait for 5 ns;
        assert Q  = '0' report "Error #3 : Hold - Q"  severity error;
        assert Qn = '1' report "Error #3 : Hold - Qn" severity error;
        CLK <= '0'; wait for 5 ns;

        -- === TEST SYNCHRONE : Set (J=1, K=0) ===
        J <= '1'; K <= '0';
        CLK <= '1'; wait for 5 ns;
        assert Q  = '1' report "Error #4 : Set sync - Q"  severity error;
        assert Qn = '0' report "Error #4 : Set sync - Qn" severity error;
        CLK <= '0'; wait for 5 ns;

        -- === TEST SYNCHRONE : Mémorisation après Set ===
        J <= '0'; K <= '0';
        CLK <= '1'; wait for 5 ns;
        assert Q  = '1' report "Error #5 : Hold after Set - Q"  severity error;
        assert Qn = '0' report "Error #5 : Hold after Set - Qn" severity error;
        CLK <= '0'; wait for 5 ns;

        -- === TEST SYNCHRONE : Reset (J=0, K=1) ===
        J <= '0'; K <= '1';
        CLK <= '1'; wait for 5 ns;
        assert Q  = '0' report "Error #6 : Reset sync - Q"  severity error;
        assert Qn = '1' report "Error #6 : Reset sync - Qn" severity error;
        CLK <= '0'; wait for 5 ns;

        -- === TEST SYNCHRONE : Toggle (J=1, K=1) depuis Q=0 ===
        J <= '1'; K <= '1';
        CLK <= '1'; wait for 5 ns;
        assert Q  = '1' report "Error #7 : Toggle 0->1 - Q"  severity error;
        assert Qn = '0' report "Error #7 : Toggle 0->1 - Qn" severity error;
        CLK <= '0'; wait for 5 ns;

        -- === TEST SYNCHRONE : Toggle (J=1, K=1) depuis Q=1 ===
        J <= '1'; K <= '1';
        CLK <= '1'; wait for 5 ns;
        assert Q  = '0' report "Error #8 : Toggle 1->0 - Q"  severity error;
        assert Qn = '1' report "Error #8 : Toggle 1->0 - Qn" severity error;
        CLK <= '0'; wait for 5 ns;

        -- === TEST : SET asynchrone pendant CLK=1 (priorité asynchrone) ===
        J <= '0'; K <= '1'; CLK <= '1';
        SETn <= '0';
        wait for 5 ns;
        assert Q  = '1' report "Error #9 : Async SET during CLK=1 - Q"  severity error;
        assert Qn = '0' report "Error #9 : Async SET during CLK=1 - Qn" severity error;
        SETn <= '1';
        CLK  <= '0';
        wait for 5 ns;

        -- === TEST : RESET asynchrone pendant CLK=1 (priorité asynchrone) ===
        J <= '1'; K <= '0'; CLK <= '1';
        RSTn <= '0';
        wait for 5 ns;
        assert Q  = '0' report "Error #10 : Async RESET during CLK=1 - Q"  severity error;
        assert Qn = '1' report "Error #10 : Async RESET during CLK=1 - Qn" severity error;
        RSTn <= '1';
        CLK  <= '0';
        wait for 5 ns;

        wait;
    end process;

end tb;