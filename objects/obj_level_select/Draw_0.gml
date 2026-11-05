// Draw the button sprite
draw_self();

// Draw the level number on the button
var level_num = string(level); // 'level' will hold the level number
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+60, y+36, level_num);