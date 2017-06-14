with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;
--with Ada.Text_IO; use Ada.Text_IO;

procedure DirectionHelper is
   type DirectionArray is array(North, East, South, West) of Direction;
   begin;
	function PerpendicularDirections(dir : DirectionArray) return DirectionArray is
  	begin
   		if dir = North then
      			return (East, West);
 	  	end if;
   		if dir = South then
     	 		return (East, West);
   		end if;
   		if dir = East then
     	 		return (North, South);
   		end if;
   		if dir = West then
      			return (North, South);
	   	end if;
  	end PerpendicularDirections;
end DirectionHelper;
