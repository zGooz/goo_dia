/// button_set_textures(id, back, fore, si_back, si_for)
// return: n/a

var i = argument0;
var b = argument1;
var f = argument2;

var s = array_create(2); 
s[0] = argument3;
s[1] = argument4;  

with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);

  t_back = sprite_get_texture(b, s[0]);
  t_fore = sprite_get_texture(f, s[1]); 
}              
