/// dia_edit_load()
// return: n/a

var f = get_open_filename("|*.def", "save_file.def");
if f != ""
{ instance_destroy(obj_dialog);
  f = file_text_open_read(f);
  
  while !file_text_eof(f)
  { var _x = file_text_read_real(f);
    file_text_readln(f);
    var _y = file_text_read_real(f);
    file_text_readln(f);
    var o = instance_position(_x, _y, obj_dialog);
    
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
    }
    
    for (var i = 0; i < s; i++)
    { o.List[| i] = file_text_read_string(f);
      var p = path_add();
      path_set_closed(p, 0);
      path_set_kind(p, 1);
      path_set_precision(p, 8);  
      o.Path[| i] = p;    
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
         q = data_read(f); 
      
      o.Active[| i] = q;
    }
  } 
  file_text_close(f); 
  
  with obj_dialog
  { if Size < 2 instance_destroy();
    alarm_set(0, 2);
  } 
}   
