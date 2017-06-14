procedure LightTrigger (dir : in Direction) is
begin
   if Pedestrian_Button(North) = 1 then --Will need to be a sub procedure taking in param of direction.
  	    PedestrianLightSwitcher(North); 	--Temporary call to the north light for development.
  	end if; --Pressed
end LightTrigger;
