/// scrollbar_set_textures(id, back, fore, up/left, right/down, si_back, si_for, si_ul, si_rd)
// return: n/a

var i  = argument0;
var b  = argument1;
var f  = argument2;
var ul = argument3;
var rd = argument4; 

var s = array_create(4); 
s[0] = argument5;
s[1] = argument6;
s[2] = argument7;
s[3] = argument8; 

with i
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);
     
  t_back = sprite_get_texture(b, s[0]);
  t_fore = sprite_get_texture(f, s[1]);
  t_up_or_left_but = sprite_get_texture(ul, s[2]);
  t_down_or_right_but = sprite_get_texture(rd, s[3]); 
}              
