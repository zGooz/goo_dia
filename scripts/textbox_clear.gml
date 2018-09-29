/// textbox_clear(id)
// return: n/a

with argument0
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);
  
  ds_list_clear(doc);  
  doc[| 0] = "";
  size = 1;     
  textbox_refresh_field();           
  top = 0;
  left = 0;    
  collumn = 0;
  row = 0;
  side_collumn = 0;
  side_row = 0; 
     
  textbox_refresh_karet();    
  scrollbar_set_param(ver_scroll, top, size);
  scrollbar_set_param(hor_scroll, left, Length);  
}
