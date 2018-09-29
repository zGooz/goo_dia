/// textbox_erase(id, pointer, cnt)
// return: n/a

var i = argument0;
var p = argument1;
var c = argument2;                                                             
  
with i
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);   
  
  var s = ""; 
  var num_coll = 0;
  var num_row = 0;
  var sym_num = 0;
  var sym_cnt = 0;   
  var range = array_create(4);     
    
  for (var q = 0; q < size; q++)
      s += string(doc[| q]) + KEY;  
    
  var line_len = string_length(s) + 1; 
  var z = size - 1;
  
  for (var q = 1; q < line_len; q++)
  { if string_char_at(s, q) == KEY
    { if ++num_row > z { exit; break; }
      num_coll = 0; 
      continue;
    }
      
    sym_num++;
    sym_cnt++;
    num_coll++;
    
    if sym_cnt == p 
    { range[0] = num_coll;     
      range[1] = num_row;           
      break; 
    } 
  }          
    
  for (var q = ++sym_num; q < line_len; q++)
  { if string_char_at(s, q) == KEY
    { if ++num_row > z 
      { range[2] = num_coll;
        range[3] = num_row; 
        break; 
      }
      
      num_coll = 0; 
      continue;
    }
      
    sym_num++;
    sym_cnt++;
    num_coll++;
    
    if sym_cnt > p + c 
    { range[2] = num_coll;                                                                                                                  
      range[3] = num_row;     
      break; 
    } 
  }          
  textbox_tear(id, range[0], ++range[1], range[2], ++range[3]); 
}
