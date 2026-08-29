use <../../shared/eurorack.scad>

mirror([0, -1, 0]) {
    width_hp = 4;
    center = panel_center(width_hp);
    bounds(width_hp);
    screws(width_hp);

    origin = 9.259;
    
    // origin reference
    translate([0, origin, 0])
    square([1,1], center=false);
    
    translate([0, 0, 0])
    square([1,1], center=false);   
    
    translate([hp(width_hp)-1, 128.5-1, 0])
    square([1,1], center=false); 
 
    // jacks
    first_jack_row = 5.334;
    jack_spacing = 10.16;
    
    translate([center[0], origin+first_jack_row, 0])
    place_grid(5, 1, [0, -jack_spacing]) {
        jack();
    }
    
    // knobs
    aux_row = 56.3888;
    vol_row = 79.6447;
    knob([ center[0], origin+aux_row ]);
    knob([ center[0], origin+vol_row ]);
}