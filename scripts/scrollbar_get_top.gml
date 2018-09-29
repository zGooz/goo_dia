/// scrollbar_get_top(id)
// return: real

with argument0
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);      
  return top; 
}
