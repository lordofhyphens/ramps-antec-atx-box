include <OpenSCAD-Arduino-Mounting-Library/arduino.scad>;

// raspi info
raspi_w=56.04;
raspi_l=85.08;
raspi_b_h=1.99;

r_hole_d=2.81;

we_hole_dist=135;
nw_hole_dist=95;

hole1_1=11.15;
hole1_2=3.53;
hole2_1=36.7;
hole2_2=58.2;

r_usb=18.44;
r_usb_w=13.4;
r_eth=37.99;
r_eth_w=16;
sd_l=17.44;
sd_w=23.93;

// fan: 46mm separation on holes, 2.2mm radius holes, 2.6 from hole 
// 56mm hole
// 6.6mm difference in width between ramps board and arduino
board_width=145;
board_depth=108;

edge_to_cyl=2.66;

hole_separate_y=95/2;
hole_separate_x=135/2;
hole_dia=2.25;
translate([0,-30,0])rotate([0,0,90])translate([7,-50,2])
standoffs(boardType=MEGA2560);

difference(){
  translate([0,0,2])cube([board_width,board_depth,2],center=true);
  for (i = [1,-1])
  {
    for (j = [1,-1])
    {
      color("blue")translate([i*hole_separate_x,j*hole_separate_y,0])cylinder(r=3.1/2,h=7,$fn=50);
    }
  }
}
