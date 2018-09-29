/// data_write(id, file, end, cmp)
// return: 0

var i = argument[0];
var f = argument[1];

var _i = noone;
var c = 0;

if argument_count > 2
{ _i = argument[2];
  c  = argument[3];
}   
if c && i == _i return 0;

with i
{ file_text_write_real(f, x);
  file_text_writeln(f);
  file_text_write_real(f, y);
  file_text_writeln(f);
  file_text_write_real(f, Size);
  file_text_writeln(f);  
  file_text_write_real(f, exist);
  file_text_writeln(f);  
  
  for (var j = 0; j < Size; j++)
  { var v = List[| j];
    if is_undefined(v) continue;
    file_text_write_string(f, v);
    file_text_writeln(f);
  }
  
  for (var j = 0; j < Size; j++)
  { var v = Script[| j];
    if is_undefined(v) continue;
    file_text_write_string(f, v);
    file_text_writeln(f);
  }  
  
  for (var j = 0; j < Size; j++)
  { var v = Active[| j];
    if is_undefined(v) continue;   
     
    if !instance_exists(v)  
    { file_text_write_real(f, EMPTY);
      file_text_writeln(f);
      continue;
    }
    
    file_text_write_real(f, NOT_EMPTY);
    file_text_writeln(f);
    data_write(v, f, _i, 1);  // warning recursion  
  }        
}   
return 0;
