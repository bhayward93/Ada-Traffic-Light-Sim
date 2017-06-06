with PedestrianLightSwitcher;
with EmergencyVehicleOverride;
with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;
with TrafficLightSwitcher;

procedure Controller is
begin
   --Initializing.
   TrafficLightSwitcher(North);
   TrafficLightSwitcher(South);

   --Loop.
   loop
         for dir in Direction loop
            if Pedestrian_Button(dir) = 1 then -- Check all buttons, and if they're pressed trigger the PedLightSwitcher
               PedestrianLightSwitcher(dir);
            end if;
 	 end loop;


 	if Emergency_Vehicle_Sensor(North) = 1 then
    	   EmergencyVehicleOverride(North);
    	end if;
  end loop;


end Controller;

