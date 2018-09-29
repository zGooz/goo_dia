/// textbox_set_hor_scroll(id, scrool_id)
// return: n/a

var i = argument0;
var v = argument1; 
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1); 
     
  if v.object_index != obj_scroll_bar
     show_error("incorrect scroll object_index", 1); 
     
  if v.class == scroll_bar.SB_VER 
     show_error("incorrect scroll class", 1);     

  hor_scroll = v;  
  hor_scroll.parent = id; 
                         
  scrollbar_set_location(_NUMBER_, hor_scroll, location[X] + SYM_H, location[Y] + height);      
  scrollbar_set_param(hor_scroll, left, Length, lim_hor);  
}               
