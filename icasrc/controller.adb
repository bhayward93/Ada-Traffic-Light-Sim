with Ada.Text_IO; use Ada.Text_IO;
--with Tasks; use Tasks;
with TrafficLightSwitcher;
with HWIF;use HWIF;

procedure Controller is
begin
   --   Tasks.ButtonPressed.Pressed(North);
   TrafficLightSwitcher(North);
   Put_Line("Hello, world!");
end Controller;

