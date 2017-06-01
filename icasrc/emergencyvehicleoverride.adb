with trafficlightswitcher;
with HWIF; use HWIF;
with HWIF_Types; use HWIF_Types;

procedure EmergencyVehicleOverride (dir : in Direction) is
begin
   delay 1.0; -- Change this delay

   --Current progress; I believe that it needs to be made so that the dir fed in,
   --where the sensor has been triggered, goes green on the lights to allow the emergency
   --vehicle to pass, and not be blocked by traffic; all other lights however need to turn red.
   	if Traffic_Light(dir) = 4 then --amber guarding needed?
      		TrafficLightSwitcher(dir);
        end if;

   	--Possibly grab hold of the possible directions, filter out the dir fed in, and turn all to off?




   end;

