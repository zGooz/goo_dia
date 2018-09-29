/// button_set_info(id, info)
// return: n/a

var i = argument0;
var s = argument1;  

with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);
    
  info = s;     
  xt = (width >> 1) - ((SYM_H + string_width(info)) >> 1);
  yt = (height >> 1) - (max(SYM_H, string_height(info)) >> 1);    
  xt += location[X];    
  yt += location[Y];         
}
