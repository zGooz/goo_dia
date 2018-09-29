/// scrollbar_set_right_or_down_but_tex(id, right/down, sub_rd)
// return: n/a

var i  = argument0; 
var rd = argument1; 

var s = array_create(1); 
s[0] = argument2; 

with i
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);  
  t_down_or_right_but = sprite_get_texture(rd, s[0]); 
}              
