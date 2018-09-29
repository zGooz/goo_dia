/// textbox_set_data(id, data)
// return: n/a

var i = argument0;
var d = argument1; 
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);
  
    if is_array(d)
    { for (var j = 0; j < array_length_1d(d); j++) 
          doc[| j] = d[@ j];
    } 
    else if is_string(d)
    { d = string_replace_all(d, chr(13), KEY);
      d = string_replace_all(d, chr(35), KEY);        
      var a = string_split(d, KEY);
      
      for (var j = 0; j < array_length_1d(a); j++) 
          doc[| j] = a[j]; 
    } 
    else if is_real(d)
    { if ds_exists(d, ds_type_list) 
         ds_list_copy(doc, d);  
    } 
    else 
       show_error("set incorrect data", 1); 
      
    size = ds_list_size(doc);    
    for (var i = size - 1; i > row_limit - 1; i--)
        ds_list_delete(doc, i);  
      
    top = max(size - lim_ver, 0);
    left = max(Length - lim_hor, 0);                    
    textbox_refresh_field();             
    collumn = string_length(string(doc[| max(size - 1, 0)]));
    row = max(size - 1, 0);
    side_collumn = collumn;
    side_row = row;     
                           
    textbox_refresh_karet();        
    scrollbar_set_param(ver_scroll, top, size);
    scrollbar_set_param(hor_scroll, left, Length);     
  }
