/// textbox_refresh_field()
// return: n/a

size = ds_list_size(doc);
var t = '';
var m = min(size, top + lim_ver);

for (var i = top; i < m; i++)
{ var s = string(doc[| i]); 
  var l = string_length(s); 
  s = string_copy(s, left, min(lim_hor, l - left));
  if l < left s = '';                              
  t += s + '#';                   
}
  
field_data = string_cut_end(t, string_length(t) - 1);
Length = 1;
  
for (var i = 0; i < size; i++)
{ var s = string(doc[| i]);     
  Length = max(Length, string_length(s));                  
} 
