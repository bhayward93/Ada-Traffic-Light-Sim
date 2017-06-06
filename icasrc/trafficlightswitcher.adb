with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;
--with Ada.Text_IO; use Ada.Text_IO;
procedure TrafficLightSwitcher (dir : in Direction) is
begin


   if Traffic_Light(dir) = 4 then 		--If Red Light.
      delay 1.0;
      Traffic_Light(dir) := 6;                  --Amber/Red
      delay 3.0;				--Safety Req: Amber phase must last at least 3 seconds
      Traffic_Light(dir) := 1;			--Green Light
      delay 5.0; 				--Safety Req: Green phase must last at least 5 seconds

   elsif Traffic_Light(dir) = 1 then		--If Green light.
      Traffic_Light(dir) := 2;  		--Amber
      delay 3.0 ;				--Safety Req; Amber phase must last at least 3 seconds
      Traffic_Light(dir) := 4; 			--Red Light
   end if;
end;
