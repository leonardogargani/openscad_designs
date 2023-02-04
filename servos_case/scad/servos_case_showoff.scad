use <servos_case.scad>


base();

translate([0, -15, 0])
    rotate([90, 0, 0])
        front_panel();

translate([-15, 0, 0])
    rotate([0, -90, 0])
        side_panel();
