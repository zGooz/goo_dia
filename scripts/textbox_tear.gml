/// textbox_tear(id, col0, row0, col1, row1)
// return: n/a

var i  = argument0;
var c0 = argument1;
var r0 = argument2;
var c1 = argument3;
var r1 = argument4;    
  
with argument0
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);                                             
  
  --r1; --r0;      
  var h = r1 - r0;
  var v = doc[| r0];
  if is_undefined(v) exit;
  var b = string(v);
  v = doc[| r1];
  if is_undefined(v) exit;
  var a = string(v);
  var l = string_length(a);
  b = string_copy(b, 1, --c0);
  a = string_copy(a, c1, l - ++c1); 
      
  doc[| r0] = b + a; 
  repeat h ds_list_delete(doc, r0 + 1); 
  row = r0;
  collumn = string_length(b);
  side_collumn = collumn;
  side_row = row;         
                      
  if collumn - 1 < left 
     left = max(0, --left);    
                      
  textbox_refresh_field();      
  textbox_refresh_karet();    
  scrollbar_set_param(ver_scroll, top, size);
  scrollbar_set_param(hor_scroll, left, Length);  
}
