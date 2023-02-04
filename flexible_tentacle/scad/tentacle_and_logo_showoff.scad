use <tentacle.scad>
use <logo.scad>


translate([60, -80, 0]) {
    logo_plate_oblique(difference_mode=false);
    plate_stand();
}

rotate([90, 0, 0])
    spring(num_of_squares=13);

translate([55, -6, 6])
    rotate([90, 0, -90])
        joint(joint_radius=16, last_joint=false);

translate([60, -6, 6])
    rotate([90, 0, 90])
        joint(joint_radius=16, last_joint=false);

translate([73, 0, 12])
    rotate([180, 0, 0])
        spring(num_of_squares=13);

translate([128, -6, 6])
    rotate([90, 0, -90])
        joint(joint_radius=16, last_joint=false);

translate([133, -6, 6])
    rotate([90, 0, 90])
        joint(joint_radius=16, last_joint=false);

translate([146, 0, 0])
    rotate([90, 0, 0])
        spring(num_of_squares=13);

translate([201, -6, 6])
    rotate([90, 0, -90])
        joint(joint_radius=16, last_joint=true);

translate([206, -6, 6])
    rotate([90, 0, 90])
        tip();

translate([-14, -6, 6])
    rotate([90, 0, 90])
        joint(joint_radius=16, last_joint=false);

translate([-110, -11, -23])
    servo_mount(high_vertical=true);

translate([-46, -24, -16])
    round_washer(radius=6, thickness=2);

translate([-46, 12, -16])
    round_washer(radius=6, thickness=2);

translate([-130, -16, 31])
    rotate([0, 90, 0])
        arc_support();

translate([-114, -1, 35])
    rotate([180, 0, 0])
        servo_mount(high_vertical=false);

translate([-46, -24, 28])
    round_washer(radius=6, thickness=2);

translate([-46, 12, 28])
    round_washer(radius=6, thickness=2);
