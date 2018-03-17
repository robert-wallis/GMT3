/// @description Draw Wins Text
// You can write your code in this editor

winColor = make_colour_hsv(0, 192, 255)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(inconsolata26)
draw_text_color(room_width/2, 50, global.winner + " wins", winColor, winColor, winColor, winColor, 1)
