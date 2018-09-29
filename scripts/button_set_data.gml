/// button_set_data(id, data)

var i = argument0;
var d = argument1;   
  
with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);                      

  if is_array(d)
  { for (var q = 0; q < array_length_1d(d); q++)
        but_info[| q] = d[@ q];      
  }
  else if is_string(d)
  { d = string_replace_all(d, chr(13), KEY);
    d = string_replace_all(d, chr(35), KEY);        
    var a = string_split(d, KEY);
    
    for (var q = 0; q < array_length_1d(a); q++) 
        but_info[| q] = a[q];
  }
  else if is_real(d)
  { if ds_exists(d, ds_type_list) 
       ds_list_copy(but_info, d); 
  }
  else 
    show_error("set incorrect data", 1);
 
  size = ds_list_size(but_info);  
  var es = string(but_info[| max(size - 1, 0)]);
  var sw = string_width(es);
  var sh = string_height(es);
    
  xt = (width >> 1) - ((SYM_H + sw) >> 1);                
  yt = (height >> 1) - (max(SYM_H, sh) >> 1);    
  xt += location[X];    
  yt += location[Y];                                             
}
