
// height of button is 5mm (not pressed)
// probably want 1mm or so of thickness on the bit that touches the button
// ply wood is 6mm, probably want 2mm sticking out
// buttons have a diameter of 7mm

$fn = 200;

cube([9, 9, 2]);
translate([4.5, 4.5, 2])
    cylinder(8, 3, 3);