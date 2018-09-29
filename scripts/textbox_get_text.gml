/// textbox_get_text(id)
// return: string

with argument0
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);
    
  var t = "";  
  for (var i = 0; i < size; i++)
      t += string(doc[| i]) + KEY;  
  return string_cut_end(t, string_length(t) - 1);
}  
