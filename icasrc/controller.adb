with TrafficLightSwitcher;
with PedestrianLightSwitcher;
with EmergencyVehicleOverride;

with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;


procedure Controller is
begin
   TrafficLightSwitcher(North);		--Temporary call to the north light for development.

   if Pedestrian_Button(North) = 1 then --Will need to be a sub procedure taking in param of direction.
      PedestrianLightSwitcher(North); 	--Temporary call to the north light for development.
   end if; --Pressed

   if Emergency_Vehicle_Sensor(North) = 1 then
      EmergencyVehicleOverride(North);
   end if;


end Controller;

