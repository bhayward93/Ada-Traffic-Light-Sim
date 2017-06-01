with trafficlightswitcher;
with HWIF; use HWIF;
with HWIF_Types; use HWIF_Types;

procedure EmergencyVehicleOverride (dir : in Direction) is
begin
   for DirectionElement in Direction'Range loop 		    --Itterate through Directions
      if Traffic_Light(DirectionElement) /= Traffic_Light(dir) and
         Traffic_Light(DirectionElement) = 4
      then --amber guarding needed?
      	TrafficLightSwitcher(dir);
      end if;
   end loop;

   delay 1.0; -- Change this delay
end;

