/// scrollbar_set_up_or_left_but_tex(id, up/left, sub_ul)
// return: n/a

var i  = argument0;
var ul = argument1;

var s = array_create(1); 
s[0] = argument2;  

with i
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);  
  t_up_or_left_but = sprite_get_texture(ul, s[0]);   
}              
