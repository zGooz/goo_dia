/// textbox_set_ver_scroll(id, scrool_id)
// return: n/a

var i = argument0;
var v = argument1; 
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1); 
     
  if v.object_index != obj_scroll_bar
     show_error("incorrect object_index", 1); 
     
  if v.class == scroll_bar.SB_HOR 
     show_error("incorrect scroll class", 1);         

  ver_scroll = v; 
  ver_scroll.parent = id;  
                    
  scrollbar_set_location(_NUMBER_, ver_scroll, location[X] + width, location[Y] + SYM_H);      
  scrollbar_set_param(ver_scroll, top, size, lim_ver);      
}              
