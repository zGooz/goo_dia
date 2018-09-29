/// scrollbar_set_width(id, width)
// return: n/a

var i = argument0;
var w = argument1;  
  
with i
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);
  width = w;                  
}              
