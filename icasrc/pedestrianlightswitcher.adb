with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;
with Ada.Text_IO; use Ada.Text_IO;

procedure PedestrianLightSwitcher (dir : in Direction) is
begin
	loop
            exit when ((Traffic_Light(North) = 4) and
       	               (Traffic_Light(South) = 4) and
   	               (Traffic_Light(East)  = 4) and
                       (Traffic_Light(West)  = 4));
        delay 1.0;
        Put_Line("Awaiting all lights being red.");
   	end loop;

	Pedestrian_Wait(dir)  := 0; 			--Wait light off. - Check criteria, maybe add delay.
   	Pedestrian_Light(dir) := 2;			--Green light on.
   delay 6.0; 						--Req: 6 seconds of pedestrian green time.
   	Pedestrian_Light(dir) := 1;

end;

--red, amber and green lights for motor vehicles
--red and green lights for pedestrians,
--a button for pedestrians to press,
