$fa = 1;
$fs = 0.4;


initial_block_points = [
    // lower plane
    [  0,  0,  0 ],  //0
    [  0, 18,  0 ],  //1
    [ 30, 18,  0 ],  //2
    [ 30,  0,  0 ],  //3
    // upper plane
    [  2,  1, 12 ],  //4
    [  2, 17, 12 ],  //5
    [ 28, 17, 12 ],  //6
    [ 28,  1, 12 ]]; //7

  
initial_block_faces = [
    [0,1,2,3],  // lower plane
    [4,5,6,7],  // upper plane
    [0,1,5,4],  // west
    [1,2,6,5],  // north
    [2,3,7,6],  // east
    [3,0,4,7]]; // south



module signal_generator_foot() {
    
    difference() {
        
        // hull to ensure the polyhedron is solid when performing the difference
        hull() {
            polyhedron(points=initial_block_points, faces=initial_block_faces);
        }
        
        translate([17, 3, 2])
            cube([13, 12, 12+0.01]);    
        
        translate([15, 3, -0.01])
            cube([10, 12, 2+0.02]);    
        
        translate([3, 3, 4])
            cube([7, 12, 8+0.01]);
        
        translate([3, 15-0.01, 7])
            cube([7, 1+0.01, 5+0.01]);
        
        translate([3, 2, 7])
            cube([7, 1+0.01, 5+0.01]);
        
        translate([6.5, 8.5, -0.01])
            cylinder(h=4+0.02, r=1);
        
        translate([13, 3, -0.01])
            cube([5, 12, 10+0.01]);
            
        translate([17, 2.01, -0.01])
            cube([8, 2, 4.01]);
            
        translate([21, 3.01, 4])
            rotate([90, 0, 0])
                cylinder(h=2, r=4, center=true);
            
        translate([17, 14-0.01, -0.01])
            cube([8, 2.01, 4.01]);
            
        translate([21, 15-0.01, 4])
            rotate([90, 0, 0])
                cylinder(h=2, r=4, center=true);
        
    }

    translate([15, 4.5, 0])
        cube([2, 9, 10+0.01]);

    translate([26, 9,-2])
        cylinder(h=2+0.01, r=1);

}

