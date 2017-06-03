with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;
with Ada.Text_IO; use Ada.Text_IO;
with TrafficLightSwitcher;

procedure PedestrianLightSwitcher (dir : in Direction) is
begin
   Pedestrian_Wait(dir) := 1;				--Wait light on.
   loop
      							Put_Line("PedLightLoop Entered");
        exit when ((Traffic_Light(North) = 4) and
                   (Traffic_Light(South) = 4) and
                   (Traffic_Light(East)  = 4) and
       	           (Traffic_Light(West)  = 4));
      delay 1.0;
      if Traffic_Light(North) = 1 then
         TrafficLightSwitcher(North);
      end if;
      if Traffic_Light(East) = 1 then
         TrafficLightSwitcher(East);
      end if;
      if Traffic_Light(South) = 1 then
         TrafficLightSwitcher(South);
      end if;
      if Traffic_Light(West) = 1 then
         TrafficLightSwitcher(West);
      end if;
   							Put_Line("Awaiting all lights being red.");
   end loop;
							--Put_Line("PedWait off");
							--Put_Line("PedLight green");
   Pedestrian_Light(dir) := 1;				--Green light on.
   delay 6.0; 						--Req: 6 seconds of pedestrian green time.
   Put_Line("PedLight red");
   Pedestrian_Light(dir) := 2;				--Red light on.
   Pedestrian_Wait(dir) := 0;

   TrafficLightSwitcher(dir);
 --  TrafficLightSwitcher(South);
 --  TrafficLightSwitcher(East);
 --  TrafficLightSwitcher(West);

end;

--red, amber and green lights for motor vehicles
--red and green lights for pedestrians,
--a button for pedestrians to press
