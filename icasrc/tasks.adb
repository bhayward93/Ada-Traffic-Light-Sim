--with HWIF;
package body Tasks is

   --Pressed Button Task
   task ButtonPressed (this: in Direction) is

   end ButtonPressed;

   task body ButtonPressed  is
          (this: in Direction)
   begin
      Traffic_Light(this) := 4;
      delay 1.0;
      Traffic_Light(this) := 2;
      delay 1.0;
      Traffic_Light(this) := 1;
   end ButtonPressed;

end Tasks;




