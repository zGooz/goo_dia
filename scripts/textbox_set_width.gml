/// textbox_set_width(id, width)
// return: n/a

var i = argument0;
var w = argument1; 
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);
    
  width = w;            
  var d = width div SYM_W;
  var s = d - lim_hor;       
  lim_hor = d;     
  left = max(left - s, 0);
  
  if surface_exists(field_surf)
     surface_resize(field_surf, width, height);   
   
  scrollbar_set_location(_NUMBER_, ver_scroll, location[X] + width, location[Y] + SYM_H);      
  scrollbar_set_view(hor_scroll, lim_hor);
  scrollbar_set_shift(hor_scroll);    
  textbox_refresh_field();         
}              
