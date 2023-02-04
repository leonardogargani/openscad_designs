use <holed_parts.scad>


plane(num_holes_x=9, num_holes_y=5);

translate([0, 90, 0])
    plane(num_holes_x=9, num_holes_y=1);

translate([0, 130, 0])
    plane(num_holes_x=4, num_holes_y=4);

translate([120, 170, 0])
    rotate([0, 0, 180])
        two_planes_joint(length=3);

translate([160, 170, 0])
    rotate([0, 0, 180])
        three_planes_joint(length=1);

translate([170, 80, 0])
    rotate([0, 0, 90])
        arc_joint(length=1);

translate([145, 0, 0])
    arc_joint(length=3);

translate([200, 170, 0])
    rotate([0, 0, 180])
        two_planes_joint(length=1);

translate([190, 80, 0])
    triangular_joint(length_x=3, length_y=3);

translate([190, 0, 0])
    cube_four();

translate([215, 145, 0])
    cube_single();

translate([-82, 0, 0])
    wheel_mount(spacer_height=15);

translate([-70, 80, 0])
    cube_eight(spacer_height=0);

translate([-45, 165, 0])
    motor_mount(height=30);

translate([-130, 70, 3])
    rotate([0, 180, 90])
        lcd_mount();
