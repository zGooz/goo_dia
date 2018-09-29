/// scrollbar_set_length(id)
// return: n/a 

with argument0
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1); 
       
  var r = min(current_view_count / size, 1);    
  current_length = max(r * full_length, MIN); 
}                         
