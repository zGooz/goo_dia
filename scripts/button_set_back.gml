/// button_set_back(id, back, sub_back)
// return: n/a

var i = argument0;
var b = argument1; 

var s = array_create(1); 
s[0] = argument2;   

with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);
  t_back = sprite_get_texture(b, s[0]); 
}              
