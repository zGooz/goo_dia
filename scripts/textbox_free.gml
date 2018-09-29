/// textbox_free(id)
// return: noone

with argument0
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);  
  
  if ds_exists(doc, ds_type_list) ds_list_destroy(doc);     
  if ds_exists(old, ds_type_list) ds_list_destroy(old);     
  if ds_exists(new, ds_type_list) ds_list_destroy(new);    
  if surface_exists(field_surf) surface_free(field_surf);
  
  scrollbar_free(hor_scroll);
  scrollbar_free(ver_scroll);     
  instance_destroy();      
  return noone;    
}             
