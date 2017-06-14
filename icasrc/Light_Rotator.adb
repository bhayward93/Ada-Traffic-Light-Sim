with HWIF;use HWIF;

--Use only north and east.

task Light_Rotator (dir : in Direction);
task body Light_Rotator is
   if dir = North or dir = South then
      task EastSwitch;
      task body EastSwitch is
         TrafficLightSwitcher(East);
      end EastSwitch;

      task WestSwitch;
      task body WestSwitch is
         TrafficLightSwitcher(West);
      end WestSwitch;
   elsif dir = East or dir = West then
      task NorthSwitch;
      task body NorthSwitch is
         TrafficLightSwitcher(North);
      end NorthSwitch;

      task SouthSwitch;
      task body SouthSwitch is
         TrafficLightSwitcher(South);
      end SouthSwitch;
   end if;



