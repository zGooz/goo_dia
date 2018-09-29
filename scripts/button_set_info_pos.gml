/// button_set_info_pos(id, pos, info)
// return: n/a

var i = argument0;
var p = argument1;
var s = argument2; 

with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);
    
  if is_open
  { if class == button.BTN_SPLIT
    { p--; 
      button_set_info(but_unit[| p], but_info[| p]);
    }
  }           
}
