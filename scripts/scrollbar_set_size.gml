/// scrollbar_set_size(id, size)
// return: n/a  

var i = argument0;
var s = argument1;  
  
with i
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);    
  size = s;
}   
