/// scrollbar_set_top(id, top)
// return: n/a  

var i = argument0;
var t = argument1;   
  
with i
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);          
  top = t; 
}   
