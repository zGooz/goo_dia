/// button_get_info_from_pos(id, pos)
// return: n/a

var i = argument0;
var p = argument1; 

with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);    
  return but_info[| --p];            
}
