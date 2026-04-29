-- Exercice 2.a.4 

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity transcodeur_7seg is
    port (
        BIN : in std_logic_vector(3 downto 0);
        SEG : out std_logic_vector(6 downto 0)
        
    );
end transcodeur_7seg;

architecture behavioral of transcodeur_7seg is
begin
    process(BIN)
    begin
        case BIN is
            when "0000" => 
            SEG <= "0000000"; -- 0
            when "0001" => 
            SEG <= "0100000"; -- 1  
            when "0010" => 
            SEG <= "0100100"; -- 2  
            when "0011" => 
            SEG <= "0001100"; -- 3
            when "0100" => 
            SEG <= "0000000"; -- 4
            when "0101" => 
            SEG <= "0000100"; -- 5
            when "0110" => 
            SEG <= "0000010"; -- 6
            when "0111" => 
            SEG <= "0001111"; -- 7
            when "1000" => 
            SEG <= "1000000"; -- 8  
            when "1001" => 
            SEG <= "0000001"; -- 9
            when "1010" =>
            SEG <= "0000000"; -- A
            when "1011" => 
            SEG <= "0000011"; -- b
            when "1100" => 
            SEG <= "0000100"; -- C
            when "1101" =>
            SEG <= "0000111"; -- d
            when "1110" =>
            SEG <= "0001000"; -- E
            when "1111" =>
            SEG <= "0001110"; -- F      
        end case;
    end process;

end behavioral;