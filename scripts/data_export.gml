/// data_export(id, file)
// return: 0

var i = argument0;
var f = argument1;
var d = argument2;   

with i
{ file_text_write_real(f, Size);
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
    
    for (var q = 0; q < ds_list_size(d); q++;)
    { var z = d[| q];
      if is_undefined(z) continue;  
      
      if z == v 
      { file_text_write_real(f, EMPTY);
        file_text_writeln(f);      
        return 0; exit; break; 
      }
    }      
     
    if !instance_exists(v)  
    { file_text_write_real(f, EMPTY);
      file_text_writeln(f);
      continue;
    }
    
    file_text_write_real(f, NOT_EMPTY);
    file_text_writeln(f);
    var l = ds_list_create();
    ds_list_add(l, id);
    var k = ds_list_plus_list(d, l, 1);    
    data_export(v, f, k);  // warning recursion  
    ds_list_destroy(k);
    ds_list_destroy(l); 
  }        
}        
