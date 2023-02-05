$fa = 1;
$fs = 0.4;


DELIMITER_THICKNESS = 4.0;

BEARING_THICKNESS = 6.0;
BEARING_DIAMETER = 6.2;

TOP_DIAMETER = 14;
BOTTOM_DIAMETER = 32.5;

HANDLE_DIAMETER = 29.5;


module spool_holder() {
        
    difference() {
        hull() {
            translate([-8, 0, 0])
                cylinder(h=DELIMITER_THICKNESS, r=TOP_DIAMETER/2);
            translate([21, 0, 0])
                cylinder(h=DELIMITER_THICKNESS, r=BOTTOM_DIAMETER/2);
        }
        translate([24, 0, -0.05])
            cylinder(h=DELIMITER_THICKNESS+0.1, r=HANDLE_DIAMETER/2);
    }

    difference() {
        hull() {
            translate([-8, 0, 0])
                cylinder(h=3*DELIMITER_THICKNESS, r=TOP_DIAMETER/2);
            translate([21, 0, 0])
                cylinder(h=3*DELIMITER_THICKNESS, r=BOTTOM_DIAMETER/2);
        }
        translate([24, 0, -0.05])
            cylinder(h=3*DELIMITER_THICKNESS+0.1, r=HANDLE_DIAMETER/2);
        translate([-32, -40/2, DELIMITER_THICKNESS+0.01])
            cube(40);
    }
        
    translate([-2, 0, 0]) {
        cylinder(h=DELIMITER_THICKNESS+BEARING_THICKNESS, r=BEARING_DIAMETER/2);
        cylinder(h=DELIMITER_THICKNESS+1, r=BEARING_DIAMETER/2+1);
    }

}    

