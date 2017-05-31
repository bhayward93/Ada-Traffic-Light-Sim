with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;
procedure PedestrianLightSwitcher (dir : in Direction) is
begin

   if Pedestrian_Light = 1 then

        SafeCrossingGuard:
   	while((Traffic_Light(North) /= 4)&
              (Traffic_Light(South) /= 4)&
   	      (Traffic_Light(East)  /= 4)&
              (Traffic_Light(West)  /= 4))
	loop
 	     delay 1.0; --Awaiting all lights to be red.
      			--May need to call lights to switch to red here.
   	end loop SafeCrossingGuard;

      Pedestrian_Light(dir) := 0 --Light off. Walk.
      --Check criteria; may just need to turn all lights off as all lights should be red at this point.
   end if;
end;
