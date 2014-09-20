include <OpenSCAD-Arduino-Mounting-Library/arduino.scad>;
// fan: 46mm separation on holes, 2.2mm radius holes, 2.6 from hole 
// 56mm hole
// 6.6mm difference in width between ramps board and arduino
edge_to_cyl=2.66;
hole_separate=46;
hole_dia=2.25;
//bumper(boardType=MEGA2560);

module fanmount() {
  translate([-3,110,2]) {
    translate([0,-3,-2]) cube([60,3,3]);
    rotate([90,0,0])
    {
      difference() {
        cube([60,60,5.5]);
        color("green")translate([30,30,0])cylinder(r=28,h=6);
        translate([edge_to_cyl,0,5])cylinder(r=hole_dia, d=10);
      }
    }
  }
}

difference()
{
  enclosure(boardType=MEGA2560);
  color("red")translate([-3,-10,21])cube([100,200,100]);
  fanmount();
  translate([-3,110,2])
    rotate([90,0,0])
    {
      color("green")translate([30,30,0])cylinder(r=28,h=6);
      translate([2.6,2.6,0])
        color("red")translate([2.2,2.2,0])cylinder(r=2.2,h=6);
      translate([2.6+hole_separate+2.2,2.6,0])
        color("red")translate([2.2,2.2,0])cylinder(r=2.2,h=6);
      translate([2.6,2.2+46+2.6,0])
        color("red")translate([2.2,2.2,0])cylinder(r=2.2,h=6);
      translate([2.6+2.2+46,2.2+46+2.6,0])
        color("red")translate([2.2,2.2,0])cylinder(r=2.2,h=6);
    }
}
color("blue")translate([56.35,0,0])
{
  cube([9,110,21]);
  translate([9,0,0])
    cube([4,110,31]);
}
fanmount();
translate([56.35,104.5,0])
  cube([9,5.5,62]);
translate([-6,104.5,0])
  cube([3,5.5,62]);
