/// messagebox_free(id)
// return: noone

with argument0
{ if object_index != obj_message_box
     show_error("incorrect object_index", 1);
     
  if ds_exists(btn, ds_type_list)
  { for (var i = 0; i < ds_list_size(btn); i++;)
    { var v = btn[| i];
      if is_undefined(v) continue;
      button_free(v);
    }
    ds_list_destroy(btn); 
  }
         
  instance_destroy();
  return noone;
}
