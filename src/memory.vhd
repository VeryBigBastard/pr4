-------------------------------------------------------------------------------
--
-- Title       : ent_memory
-- Design      : pr1313
-- Author      : user
-- Company     : NRPK
--
-------------------------------------------------------------------------------
--
-- File        : memory.vhd
-- Generated   : Tue Sep 19 11:14:25 2023
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ent_memory} architecture {arc_memory}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ent_memory is
	 port(
		 A : in STD_LOGIC;
		 RAS : in STD_LOGIC;
		 CAS : in STD_LOGIC;
		 W : in STD_LOGIC;
		 CS : in STD_LOGIC;
		 D : out STD_LOGIC
	     );
end ent_memory;

--}} End of automatically maintained section

architecture arc_memory of ent_memory is
begin
	RAM: PROCESS (A,W,CS,RAS,CAS)
begin
	if CS='0' then
		if W='1' then
			D <= A or (CAS and RAS);
		else D <= A; 
		end if;
		end if;
	end process;
	
			

	 -- enter your statements here --

end arc_memory;
