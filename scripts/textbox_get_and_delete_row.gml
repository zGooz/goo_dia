/// textbox_get_and_delete_row(id, numb_row)
// return: string

var i = argument0;
var p = argument1; 
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);
    
  p--;
  size = max(--size, 0);    
  var r = string(doc[| p]);    
  ds_list_delete(doc, p);    
  textbox_refresh_field();         
  var s = string(doc[| p]);
  var l = string_length(s);         
  top = max(p - lim_ver, 0);
  left = max(l - lim_hor, 0);    
  collumn = l;
  row = p;
  side_collumn = collumn;
  side_row = row;    
  
  textbox_refresh_karet(); 
  scrollbar_set_param(ver_scroll, top, size);
  scrollbar_set_param(hor_scroll, left, Length);        
  return r; 
}
