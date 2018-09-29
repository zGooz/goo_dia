/// messagebox_get_click(id)
// return: real

with argument0
{ if object_index != obj_message_box
     show_error("incorrect object_index", 1);
  
  for (var i = 0; i < btnCnt; i++;)
  { var u = btn[| i];
    if is_undefined(u) continue;
    
    if button_get_click(u)
    { messagebox_free(id);
      return i + 1;
      break;
    }
  }     
  return 0;           
}
