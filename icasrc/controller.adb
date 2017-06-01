with PedestrianLightSwitcher;
with EmergencyVehicleOverride;
with Ada.Text_IO; use Ada.Text_IO;
with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;


procedure Controller is
begin
   loop

 	if Pedestrian_Button(North) = 1 then --Will need to be a sub procedure taking in param of direction.
  	    Put_Line("Pedestrian button pressed, switcher being triggered");
  	    PedestrianLightSwitcher(North); 	--Temporary call to the north light for development.
 	    Put_Line("Ped light switcher success");
  	end if; --Pressed

 	if Emergency_Vehicle_Sensor(North) = 1 then
   	   Put_Line("Emergency Vehicle Sensor Trigggered");
    	   EmergencyVehicleOverride(North);
   	   Put_Line("Emergency Vehicle Sensor success(kind of)");
    	end if;
  end loop;


end Controller;

