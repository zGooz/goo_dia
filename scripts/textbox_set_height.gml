/// textbox_set_height(id, height)
// return: n/a

var i = argument0;
var h = argument1;  
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);
  
  height = h;        
  var d = height div SYM_H;
  var s = d - lim_ver;  
  lim_ver = d;
  top = max(top - s, 0);   
  
  if surface_exists(field_surf)
     surface_resize(field_surf, width, height);   
    
  scrollbar_set_location(_NUMBER_, hor_scroll, location[X] + SYM_H, location[Y] + height);      
  scrollbar_set_view(ver_scroll, lim_ver); 
  scrollbar_set_shift(ver_scroll);    
  textbox_refresh_field();
}              
