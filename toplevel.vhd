library IEEE;
use IEEE.std_logic_1164.all;

entity toplevel is
    port (
        HEX3 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX0 : out std_logic_vector(6 downto 0);
        SW   : in  std_logic_vector(9 downto 0)
    );
end entity;

architecture behavioral of toplevel is

    component adder_4bit is
        port (
            A    : in  std_logic_vector(3 downto 0);
            B    : in  std_logic_vector(3 downto 0);
            Cin  : in  std_logic;
            Sum  : out std_logic_vector(3 downto 0);
            Cout : out std_logic
        );
    end component;

    component transcodeur_7seg is
        port (
            BIN : in  std_logic_vector(3 downto 0);
            SEG : out std_logic_vector(6 downto 0)
        );
    end component;

    signal sum_result : std_logic_vector(3 downto 0);
    signal cout_unused : std_logic;

begin

    U_ADDER : adder_4bit
        port map (
            A    => SW(3 downto 0),
            B    => SW(7 downto 4),
            Cin  => SW(9),
            Sum  => sum_result,
            Cout => cout_unused
        );

    U_HEX3 : transcodeur_7seg
        port map (
            BIN => SW(3 downto 0),
            SEG => HEX3
        );

    U_HEX2 : transcodeur_7seg
        port map (
            BIN => SW(7 downto 4),
            SEG => HEX2
        );

    U_HEX0 : transcodeur_7seg
        port map (
            BIN => sum_result,
            SEG => HEX0
        );

end behavioral;