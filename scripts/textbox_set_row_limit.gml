/// textbox_set_row_limit(id, limit)
// return: n/a

var i = argument0;
var r = argument1;    
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);

  row_limit = r;   
  for (var i = size - 1; i > row_limit - 1; i--)
      ds_list_delete(doc, i);    
  
  left = 0; 
  top = 0;        
  textbox_refresh_field();    
  textbox_refresh_karet();            
}              
