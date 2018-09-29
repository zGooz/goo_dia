/// messagebox_draw(id, texture, bcolor, tcolor)
// return: n/a

var i  = argument0;
var t  = argument1;
var bc = argument2;
var tc = argument3;

with i
{ if object_index != obj_message_box
     show_error("incorrect object_index", 1);
  
  var g = draw_get_colour();     
  draw_set_colour(bc);
  auto_draw_rectangle(location[X], location[Y], t, width, height);
  draw_set_colour(tc);
  draw_text(xt, yt, Message);
  draw_set_colour(c_white);
  
  for (var i = 0; i < btnCnt; i++)
  { var u = btn[| i];
    if is_undefined(u) continue;
    button_draw(u);
  }
  draw_set_colour(g);
}
