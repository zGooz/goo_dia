/// button_insert_button(id, pos, info)
// return: n/a

var i = argument0;
var p = argument1;
var s = argument2;     
  
with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);
  
  p--;
  ds_list_insert(but_unit, p, 0);
  ds_list_insert(but_info, p, s);     
  size++;
}
