with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;
with Ada.Text_IO; use Ada.Text_IO;
with TrafficLightSwitcher;

procedure PedestrianLightSwitcher (dir : in Direction) is
begin

   Pedestrian_Wait(dir) := 1;				--Wait light on.
   loop
      exit when ((Traffic_Light(North) = 4) and
                   (Traffic_Light(South) = 4) and
                   (Traffic_Light(East)  = 4) and
                   (Traffic_Light(West)  = 4));
      delay 1.0;

   	for directionItt in Direction loop
     	   if Traffic_Light(directionItt) = 1 then
           	TrafficLightSwitcher(directionItt);
           end if;
   	end loop;
   end loop;
   --Put_Line("PedWait off");
   Pedestrian_Wait(dir) := 0;				--Put_Line("PedLight green");
   Pedestrian_Light(dir) := 1;				--Green light on.
   delay 6.0; 						--Req: 6 seconds of pedestrian green time.
   Put_Line("PedLight red");
   Pedestrian_Light(dir) := 2;				--Red light on.
   Pedestrian_Wait(dir) := 0;

   for directions in Direction loop
         if Traffic_Light(directions) = 4 then
            TrafficLightSwitcher(directions);
         end if;
   end loop;

end;

--red, amber and green lights for motor vehicles
--red and green lights for pedestrians,
--a button for pedestrians to press
