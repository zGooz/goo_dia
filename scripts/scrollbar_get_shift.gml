/// scrollbar_get_shift(id)
// return: real

with argument0
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);       
  return current_shift; 
}
