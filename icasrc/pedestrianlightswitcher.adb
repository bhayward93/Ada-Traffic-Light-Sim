with HWIF;use HWIF;

procedure PedestrianLightSwitcher (dir : in Direction) is
begin
   if Pedestrian_Light = 1 then
        SafeCrossingGuard:  	
	loop         
             if ((Traffic_Light(North) = 4)&
       	         (Traffic_Light(South) = 4)&
   	         (Traffic_Light(East)  = 4)&
                 (Traffic_Light(West)  = 4)) then
       		 exit SafeCrossingGuard;
            end if
            delay 1.0; --Awaiting all lights to be red.
         	Put_Line("Awaiting all lights being red.") 
   	end loop SafeCrossingGuard;

      Pedestrian_Light(dir) := 0 --Light off. Walk.
      --Check criteria; may just need to turn all lights off as all lights should be red at this point.
   elsif Pedestrian_Light = 0 then
      delay 5.0 --Check this delay in the criteria; this is the time peds are allowed to walk.
      Pedestrian_Light(dir) := 1 --Light on
   end if;`
end;

