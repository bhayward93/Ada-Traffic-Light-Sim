with PedestrianLightSwitcher;
with EmergencyVehicleOverride;
with HWIF;use HWIF;
with HWIF_Types; use HWIF_Types;
with TrafficLightSwitcher;
with Ada.Text_IO; use Ada.Text_IO;
with Light_Rotator;

procedure Controller is

   task Init;
   task body Init is
      task SouthSwitch;
      task body SouthSwitch is
         begin
               TrafficLightSwitcher(South);
      end SouthSwitch;

      task NorthSwitch;
      task body NorthSwitch is
         begin
               TrafficLightSwitcher(North);
      end NorthSwitch;
   begin
   	   Put_Line("Initialized");
   end init;

   task Light_Looper;
   task body Light_Looper is begin
      loop
         Light_Rotator;
      end loop;
   end Light_Looper;


begin --I think this should be a task, where the north and south are switched to east and west every 45 or so seconds, WHILST the below is going on. ll
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

