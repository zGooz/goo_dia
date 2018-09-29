/// button_free(id)
// return: noone

with argument0  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);        
    
  if ds_exists(but_unit, ds_type_list) ds_list_destroy(but_unit);    
  if ds_exists(but_info, ds_type_list) ds_list_destroy(but_info);     
  
  instance_destroy();    
  return noone;
}
