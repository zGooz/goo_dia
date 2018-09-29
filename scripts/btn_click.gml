/// btn_click(x, y, width, height, col, texture, message, mcol, clx, cly)
// return: real

var xx = argument0;
var yy = argument1;
var w  = argument2;
var h  = argument3;
var c  = argument4;
var t  = argument5;
var m  = argument6;
var mc = argument7;
var cx = argument8;
var cy = argument9;

draw_set_colour(c);
auto_draw_rectangle(xx, yy, t, w, h);
draw_set_colour(mc);
var xt = xx + ((w >> 1) - (string_width(m) >> 1));
var yt = yy + ((h >> 1) - (string_height(m) >> 1));
draw_text(xt, yt, m);
return point_in_rectangle(cx, cy, xx, yy, xx + w, yy + h)
       && mouse_check_button_pressed(mb_left);
