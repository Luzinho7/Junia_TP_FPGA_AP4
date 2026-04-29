-- Testbench pour l'additionneur 4b complet
-- Dans lequel vous décrirez les entrées à appliquer à l’additionneur 4b complet pour tester son bon fonctionnement
-- 4. Synthétisez et simulez votre additionneur 4b complet

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_full_adder_4b is
end tb_full_adder_4b;

architecture tb of tb_full_adder_4b is

    signal A   : std_logic_vector(3 downto 0) := "0000";
    signal B   : std_logic_vector(3 downto 0) := "0000";
    signal Cin : std_logic := '0';
    signal S   : std_logic_vector(3 downto 0);
    signal Cout : std_logic;

begin
    UUT : entity work.full_adder_4b 
        port map (A => A, B => B, Cin => Cin, S => S, Cout => Cout);

    stimuli : process
    begin

        -- CAS 1 : 0 + 0 + 0 = 0
        A <= "0000"; B <= "0000"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #1 : S" severity error;
        assert Cout = '0'  report "Error in test case #1 : Cout" severity error;

        -- CAS 2 : 1 + 1 + 0 = 2
        A <= "0001"; B <= "0001"; Cin <= '0';
        wait for 10 ns;
        assert S = "0010" report "Error in test case #2 : S" severity error;
        assert Cout = '0'  report "Error in test case #2 : Cout" severity error;

        -- CAS 3 : 2 + 2 + 0 = 4
        A <= "0010"; B <= "0010"; Cin <= '0';
        wait for 10 ns;
        assert S = "0100" report "Error in test case #3 : S" severity error;
        assert Cout = '0'  report "Error in test case #3 : Cout" severity error;

        -- CAS 4 : 3 + 3 + 0 = 6
        A <= "0011"; B <= "0011"; Cin <= '0';
        wait for 10 ns;
        assert S = "0110" report "Error in test case #4 : S" severity error;
        assert Cout = '0'  report "Error in test case #4 : Cout" severity error;

        -- CAS 5 : 4 + 4 + 0 = 8 → Cout=1, S=0
        A <= "0100"; B <= "0100"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #5 : S" severity error;
        assert Cout = '1'  report "Error in test case #5 : Cout" severity error;

        -- CAS 6 : 5 + 5 + 0 = 10 → Cout=1, S=10
        A <= "0101"; B <= "0101"; Cin <= '0';
        wait for 10 ns;
        assert S = "1010" report "Error in test case #6 : S" severity error;
        assert Cout = '1'  report "Error in test case #6 : Cout" severity error;

        -- CAS 7 : 6 + 6 + 0 = 12 → Cout=1, S=12
        A <= "0110"; B <= "0110"; Cin <= '0';
        wait for 10 ns;
        assert S = "1100" report "Error in test case #7 : S" severity error;
        assert Cout = '1'  report "Error in test case #7 : Cout" severity error;

        -- CAS 8 : 7 + 7 + 0 = 15
        A <= "0111"; B <= "0111"; Cin <= '0';
        wait for 10 ns;
        assert S = "1111" report "Error in test case #8 : S" severity error;
        assert Cout = '0'  report "Error in test case #8 : Cout" severity error;

        -- CAS 9 : 8 + 8 + 0 = 16
        A <= "1000"; B <= "1000"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #9 : S" severity error;
        assert Cout = '1'  report "Error in test case #9 : Cout" severity error;

        -- CAS 10 : 9 + 9 + 0 = 18 
        A <= "1001"; B <= "1001"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #10 : S" severity error;
        assert Cout = '1'  report "Error in test case #10 : Cout" severity error;

        -- CAS 11 : 10 + 10 + 0 = 20
        A <= "1010"; B <= "1010"; Cin <= '0';
        wait for 10 ns;
        assert S = "0100" report "Error in test case #11 : S" severity error;
        assert Cout = '1'  report "Error in test case #11 : Cout" severity error;

        -- CAS 12 : 11 + 11 + 0 = 16 → Cout=1, S=0
        A <= "1011"; B <= "1011"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #12 : S" severity error;
        assert Cout = '1'  report "Error in test case #12 : Cout" severity error;

        -- CAS 13 : 12 + 12 + 0 = 8
        A <= "1100"; B <= "1100"; Cin <= '0';
        wait for 10 ns;
        assert S = "1000" report "Error in test case #13 : S" severity error;
        assert Cout = '0'  report "Error in test case #13 : Cout" severity error;

        -- CAS 14 : 13 + 13 + 0 = 16
        A <= "1101"; B <= "1101"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #14 : S" severity error;
        assert Cout = '1'  report "Error in test case #14 : Cout" severity error;

        -- CAS 15 : 14 + 14 + 0 = 16 
        A <= "1110"; B <= "1110"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #15 : S" severity error;
        assert Cout = '1'  report "Error in test case #15 : Cout" severity error;
         
        -- CAS 16 : 15 + 15 + 0 = 16 
        A <= "1111"; B <= "1111"; Cin <= '0';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #16 : S" severity error;
        assert Cout = '1'  report "Error in test case #16 : Cout" severity error;

        -- CAS 17 : 0 + 0 + 1 = 1
        A <= "0000"; B <= "0000"; Cin <= '1';
        wait for 10 ns;
        assert S = "0001" report "Error in test case #17 : S" severity error;
        assert Cout = '0'  report "Error in test case #17 : Cout" severity error;

        -- CAS 18 : 1 + 1 + 1 = 3
        A <= "0001"; B <= "0001"; Cin <= '1';
        wait for 10 ns;
        assert S = "0011" report "Error in test case #18 : S" severity error;
        assert Cout = '0'  report "Error in test case #18 : Cout" severity error;

        -- CAS 19 : 2 + 2 + 1 = 5
        A <= "0010"; B <= "0010"; Cin <= '1';
        wait for 10 ns;
        assert S = "0101" report "Error in test case #19 : S" severity error;
        assert Cout = '0'  report "Error in test case #19 : Cout" severity error;

        -- CAS 20 : 3 + 3 + 1 = 7
        A <= "0011"; B <= "0011"; Cin <= '1';
        wait for 10 ns;
        assert S = "0111" report "Error in test case #20 : S" severity error;
        assert Cout = '0'  report "Error in test case #20 : Cout" severity error;

        -- CAS 21 : 4 + 4 + 1 = 9 → Cout=1, S=1
        A <= "0100"; B <= "0100"; Cin <= '1';
        wait for 10 ns;
        assert S = "0001" report "Error in test case #21 : S" severity error;
        assert Cout = '1'  report "Error in test case #21 : Cout" severity error;

        -- CAS 22 : 5 + 5 + 1 = 11 → Cout=1, S=11
        A <= "0101"; B <= "0101"; Cin <= '1';
        wait for 10 ns;
        assert S = "1011" report "Error in test case #22 : S" severity error;
        assert Cout = '1'  report "Error in test case #22 : Cout" severity error;

        -- CAS 23 : 6 + 6 + 1 = 13 → Cout=1, S=13
        A <= "0110"; B <= "0110"; Cin <= '1';
        wait for 10 ns;
        assert S = "1101" report "Error in test case #23 : S" severity error;
        assert Cout = '1'  report "Error in test case #23 : Cout" severity error;

        -- CAS 24 : 7 + 7 + 1 = 15
        A <= "0111"; B <= "0111"; Cin <= '1';
        wait for 10 ns;
        assert S = "1111" report "Error in test case #24 : S" severity error;
        assert Cout = '0'  report "Error in test case #24 : Cout" severity error;

        -- CAS 25 : 8 + 8 + 1 = 17
        A <= "1000"; B <= "1000"; Cin <= '1';
        wait for 10 ns;
        assert S = "0001" report "Error in test case #25 : S" severity error;
        assert Cout = '1'  report "Error in test case #25 : Cout" severity error;

        -- CAS 26 : 9 + 9 + 1 = 19
        A <= "1001"; B <= "1001"; Cin <= '1';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #26 : S" severity error;
        assert Cout = '1'  report "Error in test case #26 : Cout" severity error;

        -- CAS 27 : 10 + 10 + 1 = 21
        A <= "1010"; B <= "1010"; Cin <= '1';
        wait for 10 ns;
        assert S = "0101" report "Error in test case #27 : S" severity error;
        assert Cout = '1'  report "Error in test case #27 : Cout" severity error;

        -- CAS 28 : 11 + 11 + 1 = 23
        A <= "1011"; B <= "1011"; Cin <= '1';
        wait for 10 ns;
        assert S = "1011" report "Error in test case #28 : S" severity error;
        assert Cout = '1'  report "Error in test case #28 : Cout" severity error;

        -- CAS 29 : 12 + 12 + 1 = 8
        A <= "1100"; B <= "1100"; Cin <= '1';
        wait for 10 ns;
        assert S = "1000" report "Error in test case #29 : S" severity error;
        assert Cout = '0'  report "Error in test case #29 : Cout" severity error;

        -- CAS 30 : 13 + 13 + 1 = 16
        A <= "1101"; B <= "1101"; Cin <= '1';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #30 : S" severity error;
        assert Cout = '1'  report "Error in test case #30 : Cout" severity error;

        -- CAS 31 : 14 + 14 + 1 = 16 
        A <= "1110"; B <= "1110"; Cin <= '1';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #31 : S" severity error;
        assert Cout = '1'  report "Error in test case #31 : Cout" severity error;
         
        -- CAS 32 : 15 + 15 + 1 = 16 
        A <= "1111"; B <= "1111"; Cin <= '1';
        wait for 10 ns;
        assert S = "0000" report "Error in test case #32 : S" severity error;
        assert Cout = '1'  report "Error in test case #32 : Cout" severity error;


        wait;
    end process;

end tb;