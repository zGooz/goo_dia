/// ds_list_plus_list(main_list, sourse_list, change[boolean])
// return ds_list

var l = argument0;
var s = argument1;
var c = argument2;

if !ds_exists(l, ds_type_list) show_error("data structure is not exists", 1);
if !ds_exists(s, ds_type_list) show_error("data structure is not exists", 1);
var z = l;

if c
{ z = ds_list_create();
  ds_list_copy(z, l);
}    

for (var i = 0; i < ds_list_size(s); i++)
{ var v = s[| i];
  if is_undefined(v) continue;
  ds_list_add(z, v);
}
return z; 
