with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;
with Ada.Text_IO; use Ada.Text_IO;
procedure TrafficLightSwitcher (dir : in Direction) is
begin
      AmberGuard: 				--Acts as a guard incase the procedure is invoked whilst the light is in an amber state.
      while Traffic_Light(dir) = 2 loop
      delay 1.0; 				--Delay 1s and break out of the loop if the light is no longer amber
      Put_Line("In the amberguard loop");
      end loop AmberGuard;
   if Traffic_Light(dir) = 4 then 		--Red
   						--No delay here; maybe should add one.
      Traffic_Light(dir) := 2; 			--Safety Req: Amber phase must last at least 3 seconds
      delay 3.0;
      Traffic_Light(dir) := 1; 			--Safety Req: Green phase must last at least 5 seconds
      delay 5.0;
   elsif Traffic_Light(dir) = 1 then
     						--Green needs to last a min of 4 second but that may be taken care of above; need to test.
      Traffic_Light(dir) := 2;  		--Safety Req; Amber phase must last at least 3 seconds
      delay 3.0 ;
        Traffic_Light(dir) := 4; 		--Red Light
   end if;
end;
