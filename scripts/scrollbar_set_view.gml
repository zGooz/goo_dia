/// scrollbar_set_view(id, current_view_count)
// return: n/a  

var i = argument0;
var v = argument1; 

with i
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);      
   
  current_view_count = v;   
  switch class
  { case scroll_bar.SB_HOR :
          full_length = (other.item_width + other.h_bord) * current_view_count - (SYM_H << 1);
          break;
    
    case scroll_bar.SB_VER :
          full_length = (other.item_height + other.v_bord) * current_view_count - (SYM_H << 1);
          break;
  }            
  scrollbar_set_length(id);  
}   
