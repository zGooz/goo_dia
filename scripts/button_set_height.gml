/// button_set_height(id, height)
// return: n/a

var i = argument0;
var h = argument1;
   
with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);                                    

  height = h;     
  yt = (height >> 1) - (max(SYM_H, string_height(info)) >> 1);
  yt += location[Y];    
  but_y = location[Y] + height;
}
