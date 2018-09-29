/// scrollbar_get_view(id)
// return: real

with argument0
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);     
  return current_view_count;
} 
