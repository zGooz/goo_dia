/// textbox_get_row_value(id, pos)
// return: string

var i = argument0;
var p = argument1;   
     
with argument0
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);  
  return string(doc[| --p]); 
}
