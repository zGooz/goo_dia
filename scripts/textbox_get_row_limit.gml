/// textbox_get_row_limit(id)
// return: real

with argument0
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);    
  return row_limit;
}    
