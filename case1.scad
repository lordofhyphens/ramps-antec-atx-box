include <OpenSCAD-Arduino-Mounting-Library/arduino.scad>;
// fan: 46mm separation on holes, 2.2mm radius holes
// 6.6mm difference in width between ramps board and arduino

//bumper(boardType=MEGA2560);
difference()
{
  enclosure(boardType=MEGA2560);
  color("red")translate([-3,-10,21])cube([100,200,100]);
}
color("blue")translate([56.35,0,0])cube([9,105,21]);
