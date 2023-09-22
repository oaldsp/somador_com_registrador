Library IEEE;
use ieee.std_logic_1164.all;

entity Add1bitVHDL is 
    port(
        A, B, Ci:  in std_logic; 
        Co, S : out std_logic
     ); 
end Add1bitVHDL; 

architecture arc_add of Add1bitVHDL  is 
  begin 
     Co <=  not ((not (B and A) and not(Ci)) or not(A or B));
     S   <=  ( (A or B) and not (B and A)) xor Ci;
  end arc_add;