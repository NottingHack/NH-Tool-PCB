module rc522_channel() {
    difference() {
        cube([45,8,8]);
        translate([0,3,4]) {
            cube([45,5,1.75]); 
            translate([0,2.5,1.75]) {
                cube([45,5,2.5]); 
            }
        }
        
    }
}

module rc522_holder() {
    rc522_channel();
    translate([0,45.5,0]) {
        mirror([0,1,0]) {
            rc522_channel();
        }
    }
    translate([-15,0,0]) {
        difference() {
            cube([15,45.5,8]);
            rotate([0,-35,0]) {
                cube([15,45.5,8]);   
            }
        }
    }
}


module card_slot() {
    difference() {
        cube([78,100,3.5]);
        translate([10,20,0]) {
            cube([68,60,2]);
        }
        translate([65,10,0]) {
            cylinder(r=1.6, h = 5, $fn = 32);
            translate([0,80,0]) {
                cylinder(r=1.6, h = 5, $fn = 32);
            }
        }
        translate([3,10,0]) {
            cylinder(r=1.6, h = 5, $fn = 32);
            translate([0,80,0]) {
                cylinder(r=1.6, h = 5, $fn = 32);
            }
        }
    }
}


difference() {
    card_slot();
    translate([20,65.5,2]) {
        cube([24,7,1.5]);
    }
}

// switch mount
translate([0,72.5,3.5]) {
    difference() {
        cube([44,3,20]);
    
        //holes
        translate([28.5,4,8.5]) {
            rotate([90,0,0]) {
                hull() {
                    cylinder(r=1.55, h=5, $fn=32);
                    translate([0,6,0]) {
                        cylinder(r=1.55, h=5, $fn=32);
                    }
                }
            }
            translate([9.50,0,0]) {
                rotate([90,0,0]) {
                    hull() {
                        cylinder(r=1.55, h=5, $fn=32);
                        translate([0,6,0]) {
                            cylinder(r=1.55, h=5, $fn=32);
                        }
                    }
                }
            }                   
        }
        
        // taper
        rotate([0,-35,0]) {
            cube([35,3,20]);   
        }
    }
}

translate([15,20,3.5]) {
    rc522_holder();
}

// LCD
translate([-20,0,0]) {
    
    difference() {
        cube([20,100,3.5]);
        
        // LCD holes
        translate([8,12.5,-0.75]) {
            cylinder(r=1.5, h = 5, $fn = 32);
  
            translate([0,75,0]) {
                cylinder(r=1.5, h = 5, $fn = 32);
            }

        }
        
        // screen
        translate([-5,14.5,0]) {
            cube([10,71,3.5]);
            translate([10,1.5,0]) {
                cube([5,68,3.5]);
            }
        }
        
    }
}
