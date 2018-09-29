/// scrollbar_set_shift(id)
// return: n/a

with argument0
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);
  
  var d = 1;
  var r = max(size, current_view_count);    
  current_shift = (top / r) * full_length;
  current_shift = clamp(current_shift, 0, full_length - current_length);               
}                                                        
