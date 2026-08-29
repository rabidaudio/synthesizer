use <../shared/eurorack.scad>

// PANEL GENERATION DIRECTIONS
// Initialize git submodules
// Render this script in OpenSCAD and export dxf and svg
//      openscad -o panel.dxf panel.scad
// Use extract_dxf_centers to find the center points of the drills:
//      pipx install ../../deps/synthesizer/shared/extract_dxf_centers
//      extract_dxf_centers -r panel.dxf

pushbutton_dim = 6;
module pushbutton(center_pos)
{
    color("#000000") translate(center_pos) circle(d = pushbutton_dim);
}


mirror([0,-1,0]) {

    width_hp = 6;
    center = panel_center(width_hp);
    bounds(width_hp);
    screws(width_hp);

    origin = 8.128;
    
    // origin reference
    translate([0, origin, 0])
    square([1,1], center=false);
    
    translate([0, 0, 0])
    square([1,1], center=false);   
    
    translate([hp(width_hp)-1, 128.5-1, 0])
    square([1,1], center=false);    

    // jacks
    jack_row = origin + 6.604;
    jack([ 5.08, jack_row ]);
    jack([ 25.4, jack_row ]);

    // gain thumbwheels
    thumbwheel_x = center[0];
    thumbwheel_cutout = [8.636, 2.54];
    translate([thumbwheel_x, origin+1.27, 0])
        square(thumbwheel_cutout, center = true);
    translate([thumbwheel_x, origin+9.144, 0])
        square(thumbwheel_cutout, center = true);


    l_center_line = 7.62;
    r_center_line = 22.86;

    // aux knobs
    aux_row = origin+19.812;
    knob([ l_center_line, aux_row ]);
    knob([ r_center_line, aux_row ]);

    // pre-post fader slide switches
    toggle_row = origin+31.496;
    toggle_cutout = [ 5.5, 3 ];
    translate([l_center_line, toggle_row, 0]) {
        square(toggle_cutout, center = true);
    }
    translate([r_center_line, toggle_row, 0]) {
        square(toggle_cutout, center = true);
    }

    // pan knobs
    pan_row = origin+45.72;
    knob([ l_center_line, pan_row ]);
    knob([ r_center_line, pan_row ]);

    // faders
    
    fader_row = origin + 74.168;
    fader_min_cutout_width = 2.5;
    // make fader cutout wide enough for both
    // ofsets while still centered
    l_fader_offset = 0.762;
    r_fader_offset = 0.508;
    fader_cutout_width = (max(l_fader_offset, r_fader_offset) + fader_min_cutout_width/2)*2;
   // l_center_line+ r_center_line
    fader_cutout = [fader_cutout_width, 31];
    
    translate([l_center_line, fader_row, 0]) {
        square(fader_cutout, center = true);
    }
    translate([r_center_line, fader_row, 0]) {
        square(fader_cutout, center = true);
    }

    // mono/solo switches
    buton_sw_row = origin+101.854;
    button_sw_spacing = 7.62;

    button_sw_center = [ center[0], buton_sw_row, 0 ];
    translate(button_sw_center) {
        for (i=[0:3]) {
            b_pos = [(i - 1.5)*button_sw_spacing, 0 ];
            pushbutton(b_pos);
            
            //translate(b_pos + [0, 6.35, 0])
            //text("M", size=5);
        }
    }
}