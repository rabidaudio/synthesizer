function hp(count = 1) = count * 5.08 /*mm*/;
function u3() = 128.5;    // mm
function panel_lip() = 8; // mm
function panel_center(width_hp) = [ hp(width_hp) / 2, u3() / 2 ];

// src: https://github.com/elentok/openscad/blob/210b5aa151ece6d43d49d6ab0fd53597e926df5b/lib/rsquare.scad#L31C1-L39C2
module rsquare(size, radius)
{
    x = size.x - radius * 2;
    y = size.y - radius * 2;

    assert(radius < size.x / 2, "Radius must be less than half the height");
    assert(radius < size.y / 2, "Radius must be less than half the width");

    offset(r = radius) square([ x, y ], center = true);
}

module box_outline(size, line_width = 0.25, center = false)
{
    if ($preview)
    {
        if (center)
        {
            difference()
            {
                square(size, center = true);
                square([ size.x - line_width * 2, size.y - line_width * 2 ], center = true);
            }
        }
        else
        {
            difference()
            {
                square(size);
                translate([ line_width, line_width ]) square([ size.x - line_width * 2, size.y - line_width * 2 ]);
            }
        }
    }
}

// place a rectangular grid of count copies of child,
// with row_size items per row, separated by offset.
// Optionally pass an array of 0-indexed indicies to skip
// placement.
module place_grid(count, row_size, offset, skips = [])
{
    for (i = [0:count - 1])
    {
        x = i % row_size;
        y = floor(i / row_size);
        if (len(search(i, skips)) == 0)
        {
            translate([ x * offset.x, -1 * y * offset.y ]) children();
        }
    }
}

module bounds(width_hp)
{
    color("#cccccc") box_outline([ hp(width_hp), u3() ], center = false);
}

module screw(center_pos, circular = false)
{
    drill_w = 5.8;
    drill_h = 4.2;
    screw_dia = 5.82;
    // drill
    translate([ center_pos[0], center_pos[1], 0 ]) color("#000000") if (circular)
    {
        circle(d = drill_h);
    }
    else
    {
        rsquare([ drill_w, drill_h ], (min(drill_w, drill_h) - 0.1) / 2);
    }
    // screw bounds
    if ($preview)
    {
        translate([ center_pos[0], center_pos[1], 0 ]) color("#cccccc")
            box_outline([ screw_dia, screw_dia ], center = true);
    }
}

module screws(width_hp, count_per_side = -1)
{
    count = count_per_side < 0 ? floor(width_hp / 8) + 1 : count_per_side;

    if (count == 1)
    {
        // only draw one in the center
        // bottom screw
        screw([ hp(width_hp) / 2, panel_lip() / 2 ]);
        // top screw
        screw([ hp(width_hp) / 2, u3() - panel_lip() / 2 ]);
    }
    else
    {
        space_between = hp(width_hp - 2) / (count - 1);
        for (i = [0:count - 1])
        {
            // bottom screw
            screw([ hp() + i * space_between, panel_lip() / 2 ]);
            // top screw
            screw([ hp() + i * space_between, u3() - panel_lip() / 2 ]);
        }
    }
}

module jack(center_pos)
{
    drill_dia = 8;
    // jacks = 14mm wide, 9mm high (12+ recommended)
    access_bounds = [ 14, 12 ];
    if ($preview)
    {
        translate([ center_pos[0], center_pos[1], 0 ]) color("#cccccc") box_outline(access_bounds, center = true);
    }
    // drill
    translate([ center_pos[0], center_pos[1], 0 ]) color("#000000") circle(d = drill_dia);
}

module knob(center_pos)
{
    drill_dia = 9;
    // knobs = 22mm square (30mm recommended)
    access_bounds = [ 22, 22 ];
    if ($preview)
    {
        translate([ center_pos[0], center_pos[1], 0 ]) color("#cccccc") box_outline(access_bounds, center = true);
    }
    // drill
    translate([ center_pos[0], center_pos[1], 0 ]) color("#000000") circle(d = drill_dia);
}