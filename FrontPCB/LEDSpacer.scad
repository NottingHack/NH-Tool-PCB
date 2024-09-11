$fn = 200;

// button is 5mm tall, then the 2mm thickness of the button cap
// the LEDs have a 1mm ish rim 
// so we want the spacrs to be 6mm or so

difference() {
    cylinder(6, 2.5, 2.5);
    translate([0, 0, -0.1])
        cylinder(6.2, 2, 2);
}
translate([-0.25, -2.5, 0])
    cube([0.5, 5, 6]);
