$fa = 1;
$fs = 0.4;


thickness = 2;
inner_margin = 10;
holes_radius = 1.7;

inner_base_x = 109;
inner_base_y = 83;
inner_base_z = 25;

panels_height = 100;

window_horiz_size = 24;
window_vert_size = 12;

usb_hole_width = 15;
usb_hole_height = 10;
usb_hole_z_offset = 18;

led_hole_radius = 2.4;


module base() {
    difference() {
        
        cube([inner_base_x+thickness*2, inner_base_y+thickness*2, inner_base_z]);
        
        translate([thickness, thickness, thickness])
            cube([inner_base_x, inner_base_y, inner_base_z]);  
        
        translate([thickness+inner_margin, thickness+inner_margin, -0.01])
            cube([inner_base_x-2*inner_margin, inner_base_y-2*inner_margin, inner_base_z]);
        
        translate([20, thickness/2, inner_base_z-6])
            rotate([90, 0, 0])
                cylinder(h=thickness+0.01, r=holes_radius, center=true);
        
        translate([inner_base_x+thickness*2-20, thickness/2, inner_base_z-6])
            rotate([90, 0, 0])
                cylinder(h=thickness+0.01, r=holes_radius, center=true);
        
        translate([thickness/2, 20, inner_base_z-6])
            rotate([0, 90, 0])
                cylinder(h=thickness+0.01, r=holes_radius, center=true);
        
        translate([thickness/2, inner_base_y+thickness*2-20, inner_base_z-6])
            rotate([0, 90, 0])
                cylinder(h=thickness+0.01, r=holes_radius, center=true);        
        
        translate([inner_base_x/2+thickness, thickness/2, usb_hole_z_offset]) {
            cube([usb_hole_width, thickness+0.01, 2*usb_hole_height], center=true);
        }
    }
}


module front_panel() {
    difference() {
        
        cube([inner_base_x+thickness*2, panels_height, thickness]);
        
        translate([20, inner_base_z-6, thickness/2])
            cylinder(h=thickness+0.01, r=holes_radius, center=true);
        
        translate([inner_base_x+thickness*2-20, inner_base_z-6, thickness/2])
            cylinder(h=thickness+0.01, r=holes_radius, center=true);
        
        translate([inner_base_x/2+thickness, panels_height-15, thickness/2])
            cube([window_horiz_size, window_vert_size, thickness+0.01], center=true);        
        
        translate([inner_base_x/2+thickness, usb_hole_z_offset, thickness/2])
            cube([usb_hole_width, usb_hole_height, thickness+0.01], center=true);
                
        translate([40, 2*inner_base_z, thickness/2])
            cylinder(h=thickness+0.01, r=led_hole_radius, center=true);
                
        translate([inner_base_x+thickness*2-40, 2*inner_base_z, thickness/2])
            cylinder(h=thickness+0.01, r=led_hole_radius, center=true);
        
    }
}


module side_panel() {
    difference() {
        
        cube([panels_height, inner_base_y+thickness*2, thickness]);
        
        translate([inner_base_z-6, 20, thickness/2])
            cylinder(h=thickness+0.01, r=holes_radius, center=true);
        
        translate([inner_base_z-6, inner_base_y+thickness*2-20, thickness/2])
            cylinder(h=thickness+0.01, r=holes_radius, center=true);
        
        translate([panels_height-15, inner_base_y/2+thickness, thickness/2])
            cube([window_vert_size, window_horiz_size, thickness+0.01], center=true);
    }
}

