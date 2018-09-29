/// button_delete_button(id, pos)
// return: n/a

var i = argument0;
var p = argument1;   
  
with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1); 
  
  p--;
  size = max(0, --size);     
  ds_list_delete(but_unit, p);
  ds_list_delete(but_info, p); 
}
