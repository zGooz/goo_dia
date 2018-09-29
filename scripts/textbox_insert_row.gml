/// textbox_insert_row(id, numb_row, value)
// return: n/a

var i = argument0;
var p = argument1;
var v = argument2;    
  
with argument0
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);

  if size == 1 && doc[| 0] == "" 
     ds_list_clear(doc);
  
  p--;                    
  ds_list_insert(doc, p, v);    
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
}
