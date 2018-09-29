/// button_set_foreg(id, for, sub_fore)
// return: n/a

var i = argument0; 
var f = argument1; 

var s = array_create(1); 
s[0] = argument2;    

with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);
  t_fore = sprite_get_texture(f, s[0]);
}              
