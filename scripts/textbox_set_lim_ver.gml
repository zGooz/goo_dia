/// textbox_set_lim_ver(id, lim_ver)
// return: n/a

var i = argument0;
var v = argument1;      
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);
    
  var s = v - lim_ver;    
  lim_ver = v;  
  height = SYM_H * lim_ver;  
  top = max(top - s, 0);  
  
  if surface_exists(field_surf)
     surface_resize(field_surf, width, height);   
  
  scrollbar_set_location(_NUMBER_, hor_scroll, location[X] + SYM_H, location[Y] + height);       
  scrollbar_set_view(ver_scroll, lim_ver); 
  textbox_refresh_field();
}              
