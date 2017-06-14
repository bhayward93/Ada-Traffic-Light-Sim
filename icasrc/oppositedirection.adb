with HWIF;use HWIF;
--with Ada.Text_IO; use Ada.Text_IO;

function OppositeDirection(dir : in Direction) return Direction is begin
   if dir = North then
     return South;
   elsif dir = South then
      return North;
   elsif dir = East then
      return West;
   elsif dir = West then
      return East;
   end if;
end OppositeDirection;
