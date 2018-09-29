/// button_set_width(id, width)
// return: n/a

var i = argument0;
var w = argument1; 
   
with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);                                    
  
  width = w;     
  xt = ((width + string_width(info)) >> 1) - SYM_DIV_2H;
  xt += location[X];    
}
