/// data_read(file);
//return: id

var f = argument0;  

var _x = file_text_read_real(f);
file_text_readln(f);
var _y = file_text_read_real(f);
file_text_readln(f);    
var o = collision_point(_x, _y, obj_dialog, 1, 1);

if !instance_exists(o)
   o = instance_create(_x, _y, obj_dialog);
   
var s = file_text_read_real(f);
file_text_readln(f);
var e = file_text_read_real(f);
file_text_readln(f);

with o
{ Size = s;
  exist = e; 
  height = (Size + 1) * SYM_H; 

  for (var i = 0; i < s; i++)
  { List[| i] = file_text_read_string(f); 
    var p = path_add();
    path_set_closed(p, 0);
    path_set_kind(p, 1);
    path_set_precision(p, 8);  
    Path[| i] = p;
    file_text_readln(f);
  } 
  
  for (var i = 0; i < s; i++)
  { o.Script[| i] = file_text_read_string(f);  
    file_text_readln(f);
  }

  for (var i = 0; i < s; i++)
  { var q = noone;
    var g = file_text_read_real(f);
    file_text_readln(f);
    
    if g == NOT_EMPTY  
       q = data_read(f);  // warning recursion 
    
    Active[| i] = q;
  } 
}   
return o;
