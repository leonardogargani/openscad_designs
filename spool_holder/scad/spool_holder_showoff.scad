use <spool_holder.scad>


rotate([0, 90, 90])
    spool_holder();

translate([0, 100, 0])
    rotate([0, 90, -90])
        spool_holder();
