/// textbox_set_lim_hor(id, lim_hor)
// return: n/a

var i = argument0;
var h = argument1; 
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);

  var s = h - lim_hor;       
  lim_hor = h;
  width = SYM_W * lim_hor;
  left = max(left - s, 0); 
  
  if surface_exists(field_surf)
     surface_resize(field_surf, width, height);
   
  scrollbar_set_location(_NUMBER_, ver_scroll, location[X] + width, location[Y] + SYM_H);       
  scrollbar_set_view(hor_scroll, lim_hor);
  textbox_refresh_field();             
}              
