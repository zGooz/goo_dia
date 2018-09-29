/// textbox_replace_row(id, numb_row, value)
// return: n/a

var i = argument0;
var p = argument1;
var v = argument2;   
  
with argument0
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);

  p--;                       
  ds_list_replace(doc, p, v);     
  textbox_refresh_field();         
  var s = string(doc[| p]);
  var l = string_length(s);
       
  if !instance_exists(parent)
  { top = max(p - lim_ver, 0);
    left = max(l - lim_hor, 0);    
    collumn = l;
    row = p;
  }
  else
  { left = 0;
    collumn = clamp(collumn, 0, parent.limit);
  }
    
  side_collumn = collumn;
  side_row = row;          
  
  textbox_refresh_karet(); 
  scrollbar_set_param(hor_scroll, left, Length);  
}
